$( document ).ready(function() {
$("#updateitem").click(function(){
$itemno=$("#itemno").val();
$itemname=$("#itemname").val();
$category=$("#category").val();
$image=$("#filename").val();
$price=$("#price").val();

if ($itemno == '')
{alert("please fill Item No")}

else if($itemname == '')
{alert("please fill Item Name");}

else if($category == 'category')
{alert("Please Choose Category");}

else if($price == '')
{alert("Please Enter Price");}

else{
    alert("item updated successfully")
    }

});
});