<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" 
	"http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>IndexScroll</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="init.css"/>
<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="js/jquery.init.js"></script>
<style type="text/css">
#scrol{
width:350px;
height:200px;
overflow:scroll;
}
</style>
<script type="text/javascript">
function validation1(){
var a=document.form.firstname.value;
var b=document.form.lastname.value;
var c=document.form.address.value;
var d=document.form.country.value;
var e=document.form.phonenumber.value;
var f=document.form.height.value;
var g=document.form.weight.value;
var h=document.form.birthday.value;
var l=document.form.email.value;
var j=document.form.password.value;
if(a=="")
		{
		alert("enter first name"	);
		document.form.firstname.focus();
		return false;
		}
if(b=="")
{
alert("enter last name");
document.form.lastname.focus();
return false;
}
if(c=="")
{
alert("enter address");
document.form.address.focus();
return false;
}
if(document.form.country.selectedIndex==0)
{
alert("select country");
document.form.country.focus();
return false;
}
if(e=="")
{
alert("enter phone number");
document.form.phonenumber.focus();
return false;
}
if(f=="")
{
alert("enter height");
document.form.height.focus();
return false;
}
if(g=="")
{
alert("enter weight");
document.form.weight.focus();
return false;
}
if(document.form.sex[0].checked==false & document.form.sex[1].checked==false)
{
alert("select radio");

return false;
}

if(h=="")
{
alert("enter birth day");
document.form.birthday.focus();
return false;
}
if(l=="")
{
alert("enter email");
document.form.email.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
        k=emailfilter.test(document.form.email.value);
        if(k==false)
       {
        alert("Please enter a valid Email Id");
	    document.form.email.focus();
        return false;
       }
if(j=="")
{
alert("enter password");
document.form.password.focus();
return false;
}
}
function validation2(){
var a=document.form1.name.value;
var b=document.form1.password.value;
if(a=="")
		{
		alert("enter email id"	);
		document.form1.name.focus();
		return false;
		}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
        k=emailfilter.test(document.form1.name.value);
        if(k==false)
       {
        alert("Please enter a valid Email Id");
	    document.form1.name.focus();
        return false;
       }
if(b=="")
{
alert("enter password");
document.form1.password.focus();
return false;
}
}
</script>
</head>
<body>
<div id="general-wrapper"> 
  <div id="header"> 
    <div id="logo"> 
      <div id="slogan"> <span></span> 
        <h1>Online</h1>
        <h3>Medicine Purchase </h3>
      </div>
      <!--slogan-->
    </div>
    <!--logo-->
  </div>
  <!--header-->
  <div id="wrap"> 
    <ul class="topnav">
      <li><a href="home.html">Home</a></li>
      <li><a href="aboutus.jsp">About Us</a></li>
      <li><a href="contacts.jsp">Contact</a></li>
    </ul>
    <!--topnav-->
    <div id="container"> 
      <div id="wrapper"> 
        <div id="mask"> 
          <div id="item1" class="item"> 
            <div class="content"> 
              <div id="topContent"> 
                <div class="heading"> 
                  <h1 class="h7">Live healthy</h1>
                  <h1 class="h8">Live happy</h1>
                  <h1 class="h9">Live Long</h1>
                </div>
                <!--heading-->
              </div>
              <!--topContent-->
              <div id="aside"> 
                <h2>Personal Information</h2>
                <div class="post-block" id="scrol"> 
                  <form action="insertregistration.jsp" name="form" method="post" onSubmit="return validation1()">
                    <table cellspacing="15">
                      <tr> 
                        <td>First Name:</td>
                        <td><input type="text" style="background-color:violet" name="firstname"></td>
                      </tr>
                      <tr> 
                        <td>Last Name:</td>
                        <td><input type="text" style="background-color:violet" name="lastname"></td>
                      </tr>
                      <tr> 
                        <td>Address:</td>
                        <td><textarea type="text" style="background-color:violet" name="address"></textarea></td>
                      </tr>
                      <tr> 
                        <td>Country:</td>
                        <td><select name="country" style="background-color:violet">
                            <option selected>Select Country</option>
                            <option value="Afghanistan">Afghanistan</option>
                            <option value="American Samoa">American Samoa</option>
                            <option value="Bangladesh">Bangladesh</option>
                            <option value="China">China</option>
                            <option value="Denmark">Denmark</option>
                            <option value="England">England</option>
                            <option value="France">France</option>
                            <option value="Germany">Germany</option>
                            <option value="HONG Kong">HONG Kong</option>
                            <option value="India">India</option>
                          </select></td>
                      </tr>
                      <tr> 
                        <td>Phone Number:</td>
                        <td><input type="text" style="background-color:violet" name="phonenumber"></td>
                      </tr>
                      <tr> 
                        <td>Height (5ft.3in):</td>
                        <td><input type="text" style="background-color:violet" name="height"></td>
                      </tr>
                      <td>Weight:</td>
                      <td><input type="text" style="background-color:violet" name="weight"></td>
                      </tr>
                      <tr> 
                        <td>Sex:</td>
                        <td><input type="radio" name="sex" value="male"> &nbsp;&nbsp;Male&nbsp;&nbsp; 
                          <input type="radio" name="sex" value="male"> &nbsp;&nbsp;Female</td>
                      </tr>
                      <tr> 
                        <td>Birth Date (yyyy-mm-dd):</td>
                        <td><input type="text" style="background-color:violet" name="birthday"></td>
                      </tr>
                      <tr> 
                        <td>Email:</td>
                        <td><input type="text" style="background-color:violet" name="email"></td>
                      </tr>
                      <tr> 
                        <td>Password:</td>
                        <td><input type="text" style="background-color:violet" name="password"></td>
                      </tr>
                      <tr> 
                        <td><input type="submit" class="submit-form" style="border:none;" name="sub" value="Submit"></td>
                        <td><input type="reset" class="reset-form" style="border:none;" name="clear" value="Clear"></td>
                      </tr>
                    </table>
                  </form>
                </div>
                <!--post-block-->
              </div>
              <!--aside-->
              <div id="mainContent"> 
                <h2>User Login</h2>
                <form action="userlogin.jsp" name="form1" method="post" onSubmit="return validation2()">
                  <table style="scrol" cellspacing="15">
                    <tr> 
                      <td>E Mail:</td>
                      <td><input type="text" style="background-color:violet" name="name"></td>
                    </tr>
                    <tr> 
                      <td>Password:</td>
                      <td><input type="password" style="background-color:violet" name="password"></td>
                    </tr>
                    <tr> 
                      <td><input type="submit" class="submit-form" style="border:none;" name="sub" value="Submit"></td>
                      <td><input type="reset" class="reset-form" style="border:none;" name="clear" value="Clear"></td>
                    </tr>
                  </table>
                </form>
              </div>
              <!--mainContent-->
            </div>
            <!--content-->
          </div>
          <!--item1-->
        </div>
        <!--mask-->
      </div>
      <!--wrapper-->
    </div>
    <!--container-->
  </div>
  <!--wrap-->
</div>
<!--general-wrapper-->

</body>
</html>