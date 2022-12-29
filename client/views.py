import smtplib
from django.core.mail import send_mail
from urllib.parse import urlparse
import urllib.request
from email.mime.text import MIMEText
from django.db.models import Q
#import httplib2
#import self as self
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
#from sendsms.message import SmsMessage
#from sinchsms import SinchSMS
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
from django.urls import reverse
#from sendsms import api
from django.views.decorators.csrf import csrf_exempt

from chef.models import Chef

SENDSMS_BACKEND = 'myapp.mysmsbackend.SmsBackend'
#from sendsms.backends.base import BaseSmsBackend
from prog.models import Orderdetails
from .models import Customer, Item, Orders
import json
import urllib
import http.cookiejar
from getpass import getpass
import sys
import os
from stat import *
l=[];
def login(request):
    return render(request, 'login.html')
def registration(request):
    return render(request, 'registration.html')
dict={'status':''}

@csrf_exempt
def register(request):
    username1 = request.POST['usernm']
    mobileno1 = request.POST['mno']
    firstname1 = request.POST['firstname']
    password1 = request.POST['passwd']
    lastname1 = request.POST['lastname']
    eid1=request.POST['email']
    v=Customer(username=username1,firstname=firstname1,lastname=lastname1,password=password1,mobileno=mobileno1,emailid=eid1)
    v.save()
    return HttpResponse('1')
@csrf_exempt
def validation(request):

    username1=request.POST['unm']
    password1=request.POST['pwd']
    data=Customer.objects.filter(Q(username=username1)|Q(emailid=username1))
    if not data:
        return HttpResponse('0')
    elif data[0].password==password1:
        request.session['unm'] = data[0].username
        random_number = User.objects.make_random_password(length=10, allowed_chars='123456789')
        request.session['oid'] = random_number
        request.session['itemlist']=l;
        #del request.session['itemlist']
        return HttpResponse('1')
    else:
        return HttpResponse('2')


def chooseorder(request):
    if not 'unm' in request.session:
        return HttpResponseRedirect('/client')
    if not 'itemlist' in request.session:
        request.session['itemlist'] = l;
    data = Chef.objects.all()
    items=Item.objects.all().order_by('category')
    return render(request,'chooseorder.html',{'querydata':items,'ctg':data})
# Create your views here.
@csrf_exempt
def addcart(request):
    l=request.session['itemlist']
    v=request.POST['ino']
    if v in l:
        l.remove(v)
    l.append(v)
    request.session['itemlist']=l;
    return HttpResponse('1')

@csrf_exempt
def removecart(request):
    l=request.session['itemlist']
    v=request.POST['ino']
    if v in l:
        l.remove(v)
    request.session['itemlist']=l;
    return HttpResponse('1')

def placeorder(request):
    if not 'unm' in request.session:
        return HttpResponseRedirect('/client')
    l = request.session['itemlist']
    data=Item.objects.all()
    data1 = Chef.objects.all()
    return render(request,'placeorder.html',{'querydata':data,'itemlist':l,'ctg':data1})
@csrf_exempt
def qty(request):
    qt=request.POST['q']
    ino1=request.POST['ino']
    oid=request.session['oid']
    ilist=Orders.objects.filter(orderid=oid,itemno=ino1)
    data = Item.objects.filter(itemno=ino1)
    unm = request.session['unm']
    if not ilist:
        z=Orders(orderid=oid,itemno=data[0].itemno,category=data[0].category,quantity=qt,price=data[0].price,status='pending')
        z.save()
    else:
        Orders.objects.filter(orderid=oid,itemno=ino1).update(quantity=qt)
    return HttpResponse("order successful")
def confirm(request):
    if not 'unm' in request.session:
        return HttpResponseRedirect('/client')
    p=request.session['oid']
    data=Orders.objects.filter(orderid=p)
    unm = request.session['unm']
    total = 0
    for x in data:
        total=total+(int(x.quantity) *int( x.price))

    z=Orderdetails(orderid=p,username=unm,totalprice=str(total))
    z.save();
     #del request.session['unm']
    return redirect(reverse('payment_process'))

def history(request):
    if not 'unm' in request.session:
        return HttpResponseRedirect('/client')
    data1 = Chef.objects.all()
    unm=request.session['unm']
    a=Orderdetails.objects.filter(username=unm)
    return render(request,'history.html',{'data':a,'ctg':data1})
@csrf_exempt
def viewhistorydetail(request):
    oid1 = request.GET['oid']
    data = Orders.objects.filter(orderid=oid1)
    item = Item.objects.all()
    data1 = Chef.objects.all()
    return render(request, 'viewhistorydetail.html', {'qdata':item,'querydata': data,'ctg':data1})

def forgetpassword(request):
    return render(request,'forgetpassword.html')
@csrf_exempt
def fpwd(request):
    random_pwd = User.objects.make_random_password(length=4, allowed_chars='123456789')
    mes = 'Login with new password and password is '+random_pwd
    mobile_number='7046926618'
    way2sms_password='vivek258'
    mno=request.POST['mno']
    unm=request.POST['unm']
    eid=request.POST['eid']
    data=Customer.objects.filter(username=unm,emailid=eid,mobileno=mno)
    if not data:
        messages.info(request,'inavalid username or emailid or mobile no')
        return HttpResponse('0')
    return HttpResponse(data[0].password)

def changepassword(request):
    if not 'unm' in request.session:
        return HttpResponseRedirect('/client')
    data1 = Chef.objects.all()
    return render(request,'changepassword.html',{'ctg':data1})
@csrf_exempt
def cpwd(request):
    unm=request.session['unm']
    pwd=request.POST['pwd']
    npwd=request.POST['npwd']
    rnpwd=request.POST['rnpwd']
    data=Customer.objects.filter(username=unm)
    if data[0].password==pwd:
        if npwd==rnpwd:
            Customer.objects.filter(username=unm,password=pwd).update(password=npwd)
            return HttpResponse('2')
        else:
            return HttpResponse('1')
    else:
        return HttpResponse('0')

@csrf_exempt
def getsession(request):
    try:
        sdata = request.session['itemlist']
        itemcount = len(sdata)
    except AttributeError:
        print("error")
    return HttpResponse(json.dumps({'data':sdata,'itemcount':itemcount}), content_type="application/json")

@csrf_exempt
def cancel(request):
    v = request.POST['ino1']
    oid = request.POST['oid1']
    data = Orders.objects.filter(orderid=oid,itemno=v)
    qt=data[0].quantity
    data.delete()
    item = Item.objects.filter(itemno=v)
    price=item[0].price
    a=Orderdetails.objects.filter(orderid=oid)
    tp=a[0].totalprice
    np=int(tp)-(int(price)*int(qt))
    Orderdetails.objects.filter(orderid=oid).update(totalprice=np)
    data = Orders.objects.filter(orderid=oid)
    item = Item.objects.all()
    return HttpResponse()

def logout(request):
    if not 'unm' in request.session:
        return HttpResponseRedirect('/client')
    del request.session['unm']
    del request.session['oid']
    if 'itemlist' in request.session:
        del request.session['itemlist']
    if 'total' in request.session:
        del request.session['total']

    return HttpResponseRedirect('/client')

@csrf_exempt
def uniqueusr(request):
    dt=Customer.objects.values_list('username',flat=True)
    return HttpResponse(json.dumps({'data': list(dt)}), content_type="application/json")


@csrf_exempt
def category(request):
    itemnos = [];
    itemimages = [];
    itemprice=[];
    itemcategory = [];
    itemname = [];
    print("category called")
    categoryname = request.POST['category']
    print("caegory"+categoryname)
    if categoryname=='all':
        cdata = Item.objects.all().values()
        for data in cdata:
            if data in itemnos:
                itemnos.remove(data["itemno"])
                itemname.remove(data["itemname"])
                itemcategory.remove(data["category"])
                itemprice.remove(data["price"])
                itemimages.remove(data["image"])

            itemnos.append(data["itemno"])
            itemname.append(data["itemname"])
            itemcategory.append(data["category"])
            itemprice.append(data["price"])
            itemimages.append(data["image"])

        return HttpResponse(json.dumps({'itemno': itemnos, 'itemname': itemname, 'itemcategory': itemcategory, 'itemprice': itemprice,'itemimage': itemimages}), content_type="application/json")

    cdata = Item.objects.filter(category=categoryname).values()
    for data in cdata:
        if data in itemnos:
            itemnos.remove(data["itemno"])
            itemname.remove(data["itemname"])
            itemcategory.remove(data["category"])
            itemprice.remove(data["price"])
            itemimages.remove(data["image"])

        itemnos.append(data["itemno"])
        itemname.append(data["itemname"])
        itemcategory.append(data["category"])
        itemprice.append(data["price"])
        itemimages.append(data["image"])

    return HttpResponse(json.dumps({'itemno':itemnos,'itemname':itemname,'itemcategory':itemcategory,'itemprice':itemprice,'itemimage':itemimages}), content_type="application/json")

def ordercancel(request):
    v=[]
    request.session['itemlist']=v
    oid=request.session['oid']
    a=Orders.objects.filter(orderid=oid)
    a.delete()
    b = Orderdetails.objects.filter(orderid=oid)
    b.delete()
    return HttpResponseRedirect('/client/choose')
@csrf_exempt
def editprofilework(request):
    unn = request.session['unm']
    username1 = request.POST['usernm']
    mobileno1 = request.POST['mno']
    firstname1 = request.POST['firstname']
    lastname1 = request.POST['lastname']
    eid1 = request.POST['email']
    request.session['unm']=username1
    Customer.objects.filter(username=unn).update(firstname=firstname1,lastname=lastname1,username=username1,emailid=eid1,mobileno=mobileno1)
    return HttpResponse()
def editprofile(request):
    unn=request.session['unm']
    data=Customer.objects.filter(username=unn)
    data1 = Chef.objects.all()
    return render(request,'editprofile.html',{'querydata':data,'ctg':data1})

@csrf_exempt
def searchresult(request):
    itemnos = [];
    itemimages = [];
    itemprice = [];
    itemcategory = [];
    itemname = [];
    searchresultlist = []
    dpval = request.POST['dpval']
    stext = request.POST['stext']

    if(dpval == "itemno"):
        data = Item.objects.filter(itemno__icontains=stext).values();
        for datalist in data:
            itemnos.append(datalist["itemno"])
            itemname.append(datalist["itemname"])
            itemcategory.append(datalist["category"])
            itemprice.append(datalist["price"])
            itemimages.append(datalist["image"])
    elif(dpval == "category") :
        data = Item.objects.filter(category__icontains=stext).values();
        for datalist in data:
            itemnos.append(datalist["itemno"])
            itemname.append(datalist["itemname"])
            itemcategory.append(datalist["category"])
            itemprice.append(datalist["price"])
            itemimages.append(datalist["image"])
    else:
        data = Item.objects.filter(itemname__icontains=stext).values();
        for datalist in data:
            itemnos.append(datalist["itemno"])
            itemname.append(datalist["itemname"])
            itemcategory.append(datalist["category"])
            itemprice.append(datalist["price"])
            itemimages.append(datalist["image"])

    return HttpResponse(json.dumps({'itemno': itemnos, 'itemname': itemname, 'itemcategory': itemcategory, 'itemprice': itemprice,'itemimage': itemimages}), content_type="application/json")

