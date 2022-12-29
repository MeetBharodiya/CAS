# from django.conf.urls import url
from django.urls import path, include,re_path
from . import views
urlpatterns = [
    re_path(r'^process', views.payment_process, name='payment_process'),
    re_path(r'^done', views.payment_done, name='payment_done'),
    re_path(r'^canceled', views.payment_canceled, name='payment_canceled'),
]