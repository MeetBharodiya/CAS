from django.contrib import admin
from razorpay import Order
from .models import *


admin.site.register(Item)
admin.site.register(Customer)
admin.site.register(Orders)
