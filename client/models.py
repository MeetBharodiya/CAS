from django.db import models
# Create your models here.
from django.db import models


class Item(models.Model):
    itemno = models.CharField(max_length=20,primary_key=True)
    itemname = models.CharField(max_length=50)
    category = models.CharField(max_length=20)
    price=models.CharField(max_length=20)
    image=models.CharField(max_length=200)


class Customer(models.Model):
    username = models.CharField(max_length=20,primary_key=True)
    firstname = models.CharField(max_length=20)
    lastname = models.CharField(max_length=20)
    password=models.CharField(max_length=20)
    mobileno=models.CharField(max_length=10)
    emailid=models.EmailField(max_length=30)

class Orders(models.Model):
    orderid = models.CharField(max_length=20)
    itemno = models.CharField(max_length=20)
    category = models.CharField(max_length=20)
    quantity=models.CharField(max_length=10)
    price = models.CharField(max_length=10)
    status = models.CharField(max_length=10)