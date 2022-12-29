$(function() {
$('.qty').change(function() {
 var selectedVal = $(this).find(':selected').val();
//alert(selectedVal);
dd=$(this).attr("data-id");
   $.post("/client/qty/",{q:selectedVal,ino:dd},function(response) {

      });
  });
   });