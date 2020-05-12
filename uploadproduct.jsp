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
var a=document.form.productname.value;
var b=document.form.category.value;
var c=document.form.dose.value;
var d=document.form.dform.value;
var e=document.form.manufacture.value;
var f=document.form.origin.value;
var g=document.form.description.value;
var h=document.form.quantity.value;
var i=document.form.price.value;
var l=document.form.mdate.value;
var m=document.form.edate.value;
var n=document.form.sale.value;

if(a=="")
		{
		alert("enter product name"	);
		document.form.productname.focus();
		return false;
		}
if(document.form.category.selectedIndex==0)
{
alert("select category");
document.form.category.focus();
return false;
}
if(c=="")
{
alert("enter dose");
document.form.dose.focus();
return false;
}
if(document.form.dform.selectedIndex==0)
{
alert("select dose form");
document.form.dform.focus();
return false;
}
if(e=="")
{
alert("enter manufacture");
document.form.manufacture.focus();
return false;
}
if(f=="")
{
alert("enter country of origin");
document.form.origin.focus();
return false;
}
if(g=="")
{
alert("enter description");
document.form.description.focus();
return false;
}
if(h=="")
{
alert("enter quantity");
document.form.quantity.focus();
return false;
}

if(i=="")
{
alert("enter price");
document.form.price.focus();
return false;
}
if(l=="")
{
alert("enter manufactured date");
document.form.mdate.focus();
return false;
}
if(m=="")
{
alert("enter expired date");
document.form.edate.focus();
return false;
}
if(n=="")
{
alert("enter sale");
document.form.sale.focus();
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
      <li><a href="pricelist.jsp">Price List</a></li>
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
                <h2>Upload Products</h2>
                <div class="post-block" id="scrol"> 
                  <form action="insertproduct.jsp" name="form" method="post" onSubmit="return validation1()">
                    <table cellspacing="15">
                      <tr> 
                        <td>Product Name:</td>
                        <td><input type="text" style="background-color:violet" name="productname"></td>
                      </tr>
                      <tr> 
                        <td>Categories:</td>
                        <td><select name="category" style="background-color:violet">
                            <option selected>Select Category</option>
                            <option value="Allergy Cold and Sinus">Allergy Cold 
                            and Sinus</option>
                            <option value="Dental Products">Dental Products</option>
                            <option value="Glucose Products">Glucose Products</option>
                            <option value="Vitamins">Vitamins</option>
                          </select></td>
                      </tr>
                      <tr> 
                        <td>Dose:</td>
                        <td><input type="text" style="background-color:violet" name="dose"></td>
                      </tr>
                      <tr> 
                        <td>Dosage form:</td>
                        <td><select name="dform" style="background-color:violet">
                            <option selected>Select dosage form</option>
                            <option value="Syrup">Gel</option>
                            <option value="Tablet">Paste</option>
                            <option value="Powder">Powder</option>
                            <option value="Syrup">Syrup</option>
                            <option value="Tablet">Tablet</option>
                          </select></td>
                      </tr>
                      <tr> 
                        <td>Manufactured by:</td>
                        <td><input type="text" style="background-color:violet" name="manufacture"></td>
                      </tr>
                      <tr> 
                        <td>Country of Origin:</td>
                        <td><input type="text" style="background-color:violet" name="origin"></td>
                      </tr>
                      <tr> 
                        <td>Description:</td>
                        <td><input type="text" style="background-color:violet" name="description"></td>
                      </tr>
                      <tr> 
                        <td>Quantity:</td>
                        <td><input type="text" style="background-color:violet" name="quantity"></td>
                      </tr>
                      <tr> 
                        <td>Price:</td>
                        <td><input type="text" style="background-color:violet" name="price"></td>
                      </tr>
                      <td>Mft Date:</td>
                      <td><input type="text" style="background-color:violet" name="mdate"></td>
                      </tr>
                      <tr> 
                        <td>Exp Date:</td>
                        <td><input type="text" style="background-color:violet" name="edate"></td>
                      </tr>
                      <tr> 
                        <td>Sale:</td>
                        <td><input type="text" style="background-color:violet" name="sale"></td>
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
              <div id="mainContent"> <br/>
                <br/>
                <br/>
                <br/>
                <span><img  src="images/tablet.jpg" width="190" height="200" alt=""/></span><span><img  src="images/syrup.jpg" width="190" height="200" alt=""/></span> 
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