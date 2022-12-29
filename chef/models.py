from django.db import models

# Create your models here.
from django.db import models


class Chef(models.Model):
    chefid = models.CharField(max_length=20,primary_key=True)
    chefname = models.CharField(max_length=20)
    category = models.CharField(max_length=20)