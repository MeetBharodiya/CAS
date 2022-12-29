$(function() {
$("#changepwd").click(function(){
$.post("/client/cpwd",{ pwd : $("#pwd").val(), npwd : $("#npwd").val(),rnpwd: $("#rnpwd").val()}, function(response){
    if(response==0)
    {
        alert("Please Enter password")
    }
    else if(response==1)
    {
        alert("Password is not matching")
    }
    else if(response==2)
    {
         alert("Password change successfully")
    }
    else
    {
        alert(response)
    }
    });
  });
  });