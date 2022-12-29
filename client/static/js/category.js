$(document).ready(function () {
  var concept = ""
  $(".cat").click(function () {
    $(".cartdisp").show();
    $(".happy").hide();
    var ct = $(this).attr('data-id')
    $(".d_templete").replaceWith('<div class="d_templete row top_tiles"><img src="/static/images/loader.gif" style="width:100%;height:100%"/></div>');
    $.post("/client/category/", { category: ct }, function (response) {
      //     alert(response.itemno)
      //alert(response.itemname)
      //alert(response.itemcategory)
      //alert(response.itemimage)
      //alert(response.itemprice)

      var iname = response.itemname
      var icategory = response.itemcategory
      var inos = response.itemno
      var iimage = response.itemimage;
      var iprice = response.itemprice;

      $(".d_templete").replaceWith('<div class="d_templete row top_tiles">  </div>');

      var template = $("#videoTemplate").html();

      $.each(iname, function (i) {

        $(".d_templete").append(template.replace("itemimagetag", iimage[i]).
          replace("itemimagetag2", iimage[i]).
          replace("itemnumbertag", inos[i]).
          replace("itemnametag", iname[i]).
          replace("itemcategorytag", icategory[i]).
          replace("ee", inos[i]).
          replace("itempricetag", iprice[i]));

        $("." + inos[i]).append("<input type='button' id=id" + inos[i] + " data-fast=" + inos[i] + " class='button l' value='Add to cart'> </div></div> </div></div></div>");
      });



      $(".all-item").hide();


      // $(".button").live("click", function(){
      //        dd=$(this).attr("data-id")
      //                alert(dd)
      //    });


      $.post("/client/getsession/", function (response) {
        var array = response.data
        //          alert("catfastfood"+array)
        $.each(array, function (i) {
          $("#id" + array[i]).val('Remove from cart')
        });
      });






      $(".d_templete").on("click", ".l", function (e) {
        e.preventDefault();
        v = $(this).val();
        //                alert(v)
        dd = $(this).attr("data-fast")
        //                alert("fastfoodcat"+dd)
        if (v == "Add to cart") {
          $.post("/client/addcart/", { ino: dd }, function (response) {
            if (response == 1) {
              $.post("/client/getsession/", function (response) {
                var itemcount = response.itemcount
                $(".dylistitem").text(itemcount)
              });
            }
          });
          $(this).val('Remove from cart');
        }
        else {
          $.post("/client/removecart/", { ino: dd }, function (response) {
            if (response == 1) {
              $.post("/client/getsession/", function (response) {
                var itemcount = response.itemcount
                if (itemcount < 1) {
                  itemcount = ""
                }
                $(".dylistitem").text(itemcount)
              });
            }
          });
          $(this).val('Add to cart');
        }
      })




    })

  })
  $('.search-panel .dropdown-menu').find('a').click(function (e) {
    e.preventDefault();
    var param = $(this).attr("href").replace("#", " ");
    concept = $(this).text();
    $('.searchtext').prop('disabled', false);
    $('.search-panel span#search_concept').text(concept);
    $('.input-group #search_param').val(param);
  });


  $('.searchtext').keyup(function () {
    var searchtext = $(".searchtext").val();
    if (concept == "") {
      $(this).prop('disabled', true);
      alert("please select the category")
    }
    else {
      $(this).prop('disabled', false);
      $(".d_templete").replaceWith('<div class="d_templete row top_tiles"><center><img src="/static/images/loader.gif"/></center></div>');

      var template = $("#videoTemplate").html();

      $.post("/prog/searchresult", { dpval: concept, stext: searchtext }, function (response) {

        if (response.itemname == "") {
          $(".d_templete").replaceWith('<div class="d_templete row top_tiles"><center><p> No Search Result Found</p><center> ');
        }
        else {

          var iname = response.itemname
          var icategory = response.itemcategory
          var inos = response.itemno
          var iimage = response.itemimage;
          var iprice = response.itemprice;
          $(".d_templete").replaceWith('<div class="d_templete row top_tiles">  </div>');


          $.each(iname, function (i) {

            $(".d_templete").append(template.replace("itemimagetag", iimage[i]).
              replace("itemimagetag2", iimage[i]).
              replace("itemnotag", inos[i]).
              replace("itemnametag", iname[i]).
              replace("itemcategorytag", icategory[i]).
              replace("ee", +inos[i]).
              replace("itempricetag", iprice[i]));

            $("." + inos[i]).append("<input type='button' id=id" + inos[i] + " data-fast=" + inos[i] + " class='button l' value='Add to cart'> </div></div> </div></div></div>");
          });
          $(".all-item").hide();



          $.post("/client/getsession/", function (response) {
            var array = response.data
            $.each(array, function (i) {
              $("#id" + array[i]).val('Remove from cart')
            });
          });


          $(".d_templete").on("click", ".l", function (e) {
            e.preventDefault();
            v = $(this).val();
            dd = $(this).attr("data-fast")
            if (v == "Add to cart") {
              $.post("/client/addcart/", { ino: dd }, function (response) {
                if (response == 1) {
                  $.post("/client/getsession/", function (response) {
                    var itemcount = response.itemcount
                    $(".dylistitem").text(itemcount)
                  });
                }
              });
              $(this).val('Remove from cart');
            }
            else {
              $.post("/client/removecart/", { ino: dd }, function (response) {
                if (response == 1) {
                  $.post("/client/getsession/", function (response) {
                    var itemcount = response.itemcount
                    if (itemcount < 1) {
                      itemcount = ""
                    }
                    $(".dylistitem").text(itemcount)
                  });
                }
              });
              $(this).val('Add to cart');
            }
          })




        }
      });
    }
  });

})

