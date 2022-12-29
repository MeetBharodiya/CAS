$( document ).ready(function() {
    var v;
    $.post("/client/getsession/",function(response) {
          var array = response.data
          var itemcount = response.itemcount
          if(itemcount<1){
          itemcount = ""
          }
          $(".dylistitem").text(itemcount)
          $.each(array,function(i){
          $("#"+array[i]).val('Remove from cart')
            });
          });




$(".button").click(function(){
//p=$(".plusminus").attr("data-noo");
v=$(this).val();
dd=$(this).attr("data-id");
if(v=="Add to cart"){
    $.post("/client/addcart/",{ino:dd},function(response) {
    if(response==1){
         $.post("/client/getsession/",function(response) {
          var itemcount = response.itemcount
          $(".dylistitem").text(itemcount)
            });
  }
      });
        $(this).val('Remove from cart');
       }
else{
    $.post("/client/removecart/",{ino:dd},function(response) {
      if(response==1){
         $.post("/client/getsession/",function(response) {
          var itemcount = response.itemcount
          if(itemcount<1){
          itemcount = ""
          }
          $(".dylistitem").text(itemcount)
            });
  }
      });
        $(this).val('Add to cart');
       }

  });
});

