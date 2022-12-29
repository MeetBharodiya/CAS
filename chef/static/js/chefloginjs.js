$(function() {
$("#login_btn").click(function(){

$.post("loginvalidation/",{chefid: $("#email").val(), chefname : $("#password").val()}, function(response){
    if (response==1)
    {
    window.location.assign('/chef/chefwork')
    }
    else if(response==0)
    {
    alert("chef ID is wrong")
    }
    else if(response==2)
    {
    alert("chef name is wrong")
    }
    else
    {
    alert("somthing went wrong! please try again")
    }
    });
   });

});

