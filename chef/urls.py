# from django.conf.urls import url
from django.urls import path, include,re_path
#from requests import request

from . import views

urlpatterns = [
    re_path(r'^$', views.login, name='login'),
    re_path(r'^loginvalidation', views.validation, name='validation'),
    re_path(r'^chefwork',views.chefwork,name='chefwork'),
    re_path(r'^chefhistory',views.chefhistory,name='chefhistory'),
    re_path(r'^prepareorder',views.prepareorder,name='prepareorder'),
    re_path(r'^process',views.process,name='process'),
    re_path(r'^complete',views.complete,name='complete'),
    re_path(r'^logout', views.logout, name='logout'),

]