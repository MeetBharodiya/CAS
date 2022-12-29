import re
from random import randint

from django.contrib.admin.templatetags.admin_list import register
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

from chef.models import Chef
import MySQLdb

from client.models import Orders, Item


def login(request):
    return render(request, 'cheflogin.html')


@csrf_exempt
def validation(request):
    chefid1 = request.POST['chefid']
    chefname1 = request.POST['chefname']
    data = Chef.objects.filter(chefid=chefid1)
    if not data:
        return HttpResponse('0')
    elif data[0].chefname == chefname1:
        request.session['chefname'] = chefname1;
        return HttpResponse('1')
    else:
        return HttpResponse('2')

@csrf_exempt
def chefwork(request):
    if not 'chefname' in request.session:
        return HttpResponseRedirect('/chef')
    return render(request,'chefwork.html')

def chefhistory(request):
    if not 'chefname' in request.session:
        return HttpResponseRedirect('/chef')
    cname = request.session['chefname']
    c = Chef.objects.filter(chefname=cname)
    data = Orders.objects.filter(category=c[0].category,status='complete')
    item = Item.objects.all()
    return render(request, 'chefhistory.html', {'qdata': item, 'querydata': data})

def prepareorder(request):
    if not 'chefname' in request.session:
        return HttpResponseRedirect('/chef')
    cname = request.session['chefname']
    c = Chef.objects.filter(chefname=cname)
    data = Orders.objects.filter(category=c[0].category)
    item = Item.objects.all()
    return render(request, 'prepareorder.html', {'qdata': item, 'querydata': data})


@csrf_exempt
def process(request):
    v = request.POST['ino1']
    oid = request.POST['oid1']
    Orders.objects.filter(orderid=oid, itemno=v).update(status='process')
    return HttpResponse(v)


@csrf_exempt
def complete(request):
    v = request.POST['ino1']
    oid = request.POST['oid1']
    Orders.objects.filter(orderid=oid, itemno=v).update(status='complete')
    return HttpResponse(v)

def logout(request):
    if 'chefname' in request.session:
        del request.session['chefname']
    return HttpResponseRedirect('/chef')