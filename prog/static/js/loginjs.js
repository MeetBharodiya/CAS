$(function() {
$("#login_btn1").click(function(){
$.post("adminloginvalidation/",{unm: $("#email").val(), pwd : $("#password").val()}, function(response){
    if (response==1)
    {
    window.location.assign('adminwork.html')
    }
    else if(response==0)
    {
    alert("Adminname is wrong")
    }
    else if(response==2)
    {
    alert("password is wrong")
    }
    else
    {
    alert("somthing went wrong! please try again")
    }
    });
   });
   });

