from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse
#from paypal.standard.forms import PayPalPaymentsForm

from client.models import Orders
from prog.models import Orderdetails

def payment_done(request):
    return render(request,'done.html')
def payment_canceled(request):
    return render(request,'canceled.html')
def payment_process(request):
    if not 'unm' in request.session:
        return HttpResponseRedirect('/client')

    oid=request.session['oid']

    data=Orderdetails.objects.filter(orderid=oid)
    i=Orders.objects.filter(orderid=oid)
    total=data[0].totalprice
    request.session['total'] = total
    unm=data[0].username
    # What you want the button to do.
    paypal_dict = {
        'business': 'bhingaradiyavivek@gmail.com',
        'amount': str(int(total)/60),
        'item_name': 'Order {}'.format(oid),
        'invoice': oid,
        'currency_code':'USD',
        'notify_url': request.build_absolute_uri(reverse('paypal-ipn')),
        'return_url': request.build_absolute_uri(reverse('payment_done')),
        'cancel_return': request.build_absolute_uri(reverse('payment_canceled')),
    }

    # Create the instance.
    form = PayPalPaymentsForm(initial=paypal_dict)
    return render(request, "payment.html", {'form':form})
