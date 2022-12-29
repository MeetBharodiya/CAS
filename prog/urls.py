# from django.conf.urls import url
from django.urls import path, include,re_path
from django.urls import path

from . import views

urlpatterns = [
    re_path(r'^$', views.login, name='login'),
    re_path(r'^adminloginvalidation', views.validation, name='validation'),
    re_path(r'^adminwork',views.adminwork,name='adminwork'),
    re_path(r'^additemwork', views.additemwork, name='additemwork'),
    re_path(r'^additem', views.additem, name='additem'),
    re_path(r'^addchefwork', views.addchefwork, name='addchefwork'),
    re_path(r'^addchef', views.addchef, name='addchef'),
    re_path(r'^viewitem', views.viewitem, name='viewitem'),
    re_path(r'^viewchef', views.viewchef, name='viewchef'),
    re_path(r'^vieworder', views.vieworder, name='vieworder'),
    re_path(r'^viewdetail', views.viewdetail, name='viewdetail'),
    re_path(r'^updateitemwork',views.updateitemwork,name='updateitemwork'),
    re_path(r'^updatechefwork',views.updatechefwork,name='updatechefwork'),
    re_path(r'^deletechef',views.deletechef,name='deletechef'),
    re_path(r'^updatechef',views.updatechef,name='updatechef'),
    re_path(r'^deleteitem',views.deleteitem,name='deleteitem'),
    re_path(r'^updateitem',views.updateitem,name='updateitem'),
    re_path(r'^forget',views.forget,name='forget'),
    re_path(r'^fp',views.fp,name='fp'),
    re_path(r'^logout',views.logout,name='logout'),
    re_path(r'^uniqueino', views.uniqueino, name='uniqueino'),
    re_path(r'^uniquecid', views.uniquecid, name='uniquecid'),
    re_path(r'^viewcustomer',views.viewcustomer,name='viewcustomer'),
    re_path(r'^searchresult', views.searchresult, name='searchresult'),
]