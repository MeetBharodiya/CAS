$(function() {
$("#chefid").keyup(function(){
$.post("/prog/uniquecid",function(response){
    var array=response.data
    var uval = $("#chefid").val()
    $.each(array,function(i){
        if(array[i]==uval)
        {
            alert("chef Id is already exists ")
        }

    });
});
});
$("#addcf").click(function(){
$.post("/prog/addchefwork",{ chefid : $("#chefid").val(), chefname : $("#chefname").val(),category: $("#category").val()}, function(response){
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
         alert("Chef added successfully")
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