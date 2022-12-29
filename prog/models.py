from django.db import models
class Admin(models.Model):

    name = models.CharField(max_length=20,primary_key=True)
    value = models.CharField(max_length=20)

class Orderdetails(models.Model):

    orderid = models.CharField(max_length=20, primary_key=True)
    username = models.CharField(max_length=20)
    totalprice=models.CharField(max_length=10)


# Create your models here.
