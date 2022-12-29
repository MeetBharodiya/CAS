$( document ).ready(function() {
var concept="";
$("#itemno").keyup(function(){
$.post("/prog/uniqueino",function(response){
    var array=response.data
    var uval = $("#itemno").val()
    $.each(array,function(i){
        if(array[i]==uval)
        {
            alert("Item no is already exists ")
        }

    });
});
});
$("#additem").click(function(){
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

else if($image == '')
{alert("Please select Image file");}

else if($price == '')
{alert("Please Enter Price");}

else{
    alert("item added successfully")
    }

});



  $('.search-panel .dropdown-menu').find('a').click(function(e) {

		e.preventDefault();
		var param = $(this).attr("href").replace("#"," ");
		concept = $(this).text();
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #search_param').val(param);
});

$('.searchtext').keyup(function(){
        var searchtext = $(".searchtext").val();
        if(concept == ""){
        alert("please select the category")
        }

        $( ".d_templete").replaceWith('<div class="d_templete right_col"><table  style="width:100%;margin-left:-50px"><th style="width:18%"><center>Itemno</center></th><th style="width:18%"><center>Itemname</center></th>'+
                    '<th style="width:15%"><center>category</center></th><th style="width:15%"><center>Image</center></th><th style="width:15%"><center>price</center></th><th style="width:15%"><center>delete</center></th><th><center>update</center> </th></thead><tbody></div>');


        var template = $("#searchviewTemplate").html();

        $.post("/prog/searchresult",{dpval:concept,stext:searchtext},function(response){

           if(response.itemname == ""){
        $( ".d_templete").replaceWith('<div class="d_templete right_col"><center><p> No Search Result Found</p><center> ');
           }
           else{

        var iname = response.itemname
        var icategory = response.itemcategory
        var inos = response.itemno
        var iimage = response.itemimage;
        var iprice = response.itemprice;
        $.each(iname,function(i){

//        $(".d_templete").append('<tr><td>'+inos[i]+'</td><td>'+iname[i]+'</td><td>'+icategory[i]+'</td><td><center>'+
//        '<img src="'+iimage[i]+'" height="50" width="50"/></center></td><td><center>'+ iprice[i]+'</center></td><td><center><a href="/prog/deleteitem?itemno='+inos[i]+'" class="btn btn-info">delete</a></center>'+
//        '</td><td><center><a href="/prog/updateitem?itemno='+ inos[i] +'" class="btn btn-info">update</a></center></td></tr></tbody></table></center></div></div>');

            $(".d_templete").append(template.replace("itemimagetag",iimage[i]).
                                     replace("itemnotag",inos[i]).
                                     replace("ee",inos[i]).
                                     replace("itemnametag",iname[i]).
                                     replace("itemcategorytag",icategory[i]).
                                     replace("ee",+inos[i]).
                                     replace("itempricetag",iprice[i]));


                                     $("."+inos[i]).append('<td style="width:18%;margin-top:-50px"><center><a style="margin-top:-20px" href="/prog/deleteitem?itemno='+ inos[i] +'" class="btn btn-info">delete</center></a></td>'+
                                     '<td><center><a style="margin-top:-20px" href="/prog/updateitem?itemno='+inos[i]+'" class="btn btn-info">update</center></a></td></tr></tbody></table></center></div></div>');


//            $("."+inos[i]).append("<input type='button' id=id"+ inos[i]+" data-fast="+ inos[i] +" class='button l' value='Add to cart'> </div></div> </div></div></div>");
            });
}
		});

});









});