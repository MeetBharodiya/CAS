$(function() {
$("#updatecf").click(function(){
$.post("/prog/updatechefwork",{ chefid : $("#chefid").val(), chefname : $("#chefname").val(),category: $("#category").val()}, function(response){
    if(response==0)
    {
        alert("Please Enter ChefID")
    }
    else if(response==1)
    {
        alert("Please Enter Chef Name")
    }
    else if(response==2)
    {
         alert("Chef Updated successfully")
    }
    else if(response==3)
    {
        alert("Please Enter Chef Category")

    }
    else
    {}
    });
  });
  });