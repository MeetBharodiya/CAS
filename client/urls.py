# from django.conf.urls import url
from django.urls import path, include,re_path

from . import views

urlpatterns = [
    re_path(r'^$', views.login, name='login'),
    re_path(r'^loginvalidation', views.validation, name='validation'),
    re_path(r'^registration', views.registration, name='registration'),
    re_path(r'^register', views.register, name='register'),
    re_path(r'^choose', views.chooseorder, name='chooseorder'),
    re_path(r'^addcart', views.addcart, name='addcart'),
    re_path(r'^removecart', views.removecart, name='removecart'),
    re_path(r'^placeorder', views.placeorder, name='placeorder'),
    re_path(r'^qty',views.qty, name='qty'),
    re_path(r'^confirm',views.confirm, name='confirm'),
    re_path(r'^history',views.history,name='history'),
    re_path(r'^viewhistorydetail',views.viewhistorydetail,name='viewhistorydetail'),
    re_path(r'^forgetpassword',views.forgetpassword,name='forgetpassword'),
    re_path(r'^fpwd',views.fpwd,name='fpwd'),
    re_path(r'^changepassword',views.changepassword,name='changepassword'),
    re_path(r'^cpwd',views.cpwd,name='cpwd'),
    re_path(r'^getsession',views.getsession,name='getsession'),
    re_path(r'^cancel',views.cancel,name='cancel'),
    re_path(r'^logout',views.logout,name='logout'),
    re_path(r'^uniqueusr',views.uniqueusr,name='uniqueusr'),
    re_path(r'^category',views.category,name='category'),
    re_path(r'^ordercancel', views.ordercancel, name='ordercancel'),
    re_path(r'^editprofilework', views.editprofilework, name='editprofilework'),
    re_path(r'^editprofile',views.editprofile,name='editprofile'),
    re_path(r'^searchresult', views.searchresult, name='searchresult'),
]