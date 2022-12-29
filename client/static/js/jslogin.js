$(function() {
$("#forget").click(function(){
$.post("/client/fpwd",{unm: $("#unm").val(), eid : $("#email").val(), mno : $("#mno").val()}, function(response){
    if(response==0)
    {
    alert("Invalid Entered Data")
    }
    else
    {
    alert("your password is : "+response)
    }
    });
   });

$("#login_btn").click(function(){
$.post("loginvalidation/",{unm: $("#email").val(), pwd : $("#password").val()}, function(response){
    if (response==1)
    {
     window.location.assign('/client/choose/')
    }
    else if(response==0)
    {
    alert("USERNAME is wrong")
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

$("#registration").click(function(){
$fnm = $('#first_name').val();
$lnm = $('#last_name').val();
$email = $('#reg-email').val();
$username = $('#usernm').val();
$phno = $('#mno').val();
var ml=$('#mno').val().length;
$pass = $('#reg-password').val();
var ol=$('#reg-password').val().length;
$passconform =$('#password-confirm').val();

if ($fnm == '')
{alert("please fill first name")}
else if ($lnm == '')
{alert("please fill last name")}
else if ($username == '')
{alert("please fill username")}
else if($phno == '')
{alert("Please Enter mobileno");}
else if(ml!=10)
{
    alert("mobile no must be size 10")
}
else if($email == '')
{alert("please add your email");}

else if($pass == '')
{alert("Please Enter password");}

else if($passconform == '' )
{alert("PLease Reenter passeord");}
else if($pass != $passconform)
{alert("Password is not matching")}

else if(ol<6 && ol>14)
{
    alert("password must be of length 6 to 14")
}
else
{
$.post("/client/register",{firstname:$fnm,lastname:$lnm,email:$email,passwd:$pass,usernm:$username,mno:$phno}, function(response){
    alert("registration successfully")
    });

}
   });

$("#editprofile").click(function(){
$fnm = $('#first_name').val();
$lnm = $('#last_name').val();
$email = $('#reg-email').val();
$username = $('#usernm').val();
$phno = $('#mno').val();
var ml=$('#mno').val().length;

if ($fnm == '')
{alert("please fill first name")}
else if ($lnm == '')
{alert("please fill last name")}
else if ($username == '')
{alert("please fill username")}
else if($phno == '')
{alert("Please Enter mobileno");}
else if(ml!=10)
{
    alert("mobile no must be size 10")
}
else if($email == '')
{alert("please add your email");}

else
{
$.post("/client/editprofilework",{firstname:$fnm,lastname:$lnm,email:$email,usernm:$username,mno:$phno}, function(response){
    alert("Profile Edited successfully")
    location.reload()
    });

}
   });


$("#usernm").keyup(function(){
$.post("/client/uniqueusr",function(response){
    var array=response.data
    var uval = $("#usernm").val()
    $.each(array,function(i){
        if(array[i]==uval)
        {
            alert("username already exists ")
        }

    });
});
});
});

