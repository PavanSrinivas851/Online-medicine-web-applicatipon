<%@ page import="java.sql.*"%>

<html>
<head>

	<title>IndexScroll</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<link rel="stylesheet" type="text/css" href="init.css"/>

<script type="text/javascript">
function validate(){
var a=document.f.firstname.value;
var b=document.f.lastname.value;
var c=document.f.phone.value;
var d=document.f.email.value;
var e=document.f.message.value;

if(a=="")
		{
		alert("enter first name"	);
		document.f.firstname.focus();
		return false;
		}
if(b=="")
{
alert("enter last name");
document.f.lastname.focus();
return false;
}
if(isNaN(c))
		{
		alert("enter phone no");
		document.f.phone.focus();
		return false;
		}
if(c.charAt(0)!=9)
      {
     alert("start no from 9");
     document.f.phone.focus();
     return false;
     }
if(c.length!=10)
   {
   alert("Enter 10 digits");
   document.f.phone.focus();
   return false;
    }
if(d=="")
{
alert("enter email");
document.f.email.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
        h=emailfilter.test(document.f.email.value);
        if(h==false)
       {
        alert("Please enter a valid Email Id");
	    document.f.email.focus();
        return false;
       }
if(e=="")
		{
		alert("enter message");
		document.f.message.focus();
		return false;
		}
}
</script>
<style type="text/css">
.container {
	height:705%;
	width:100%;
	margin:0;padding:0;
	overflow:hidden;
	position:absolute;
	border-left:1px solid #62767f;
    border-top:1px solid #62767f;
	-webkit-border-radius:7px;
	-moz-border-radius:7px;
	background:#f6f7f9;
    border-radius:7px;
    margin-top:0px;
	margin-left:50px;
    width:810px;
}
</style>
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
    <div class="container"> 
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
                <h2>Contact Form</h2>
                <div class="general-company"> 
                  <div id="form"> 
                    <form name="f"action="contactinsert.jsp" onSubmit="return validate()">
                      <div style="float:left;"> 
                        <label for="name">First Name: 
                        <input  type="text" name="firstname" />
                        </label>
                        <label for="lastName">Last Name: 
                        <input  type="text" name="lastname" />
                        </label>
                        <label for="phone">Your Phone: 
                        <input  type="text" name="phone"/>
                        </label>
                        <label for="email">Your E-mail: 
                        <input type="text" name="email" />
                        </label>
                        <label for="message">Your Message: 
                        <textarea cols="" rows="" name="message"></textarea>
                        </label>
                      </div>
                      <input align="right" type="submit" class="submit-form" style="border:none;" value="Submit" name="sub" />
                      <input align="left"  type="reset" class="reset-form" style="border:none;" value="Reset" />
                    </form>
                  </div>
                  <!--form-->
                </div>
                <!--general-company-->
                <div class="clear"></div>
                <div class="cont-block"> 
                  <h3>FREE PHONE</h3>
                  <h3><span>1-800-555-5775</span></h3>
                </div>
                <!--c-block-->
              </div>
              <!--aside-->
              <div id="mainContent"> 
                <h2>Contact Us</h2>
                <div class="cont-block"> 
                  <h3>FREE PHONE</h3>
                  <h3><span>1-800-143-0420</span></h3>
                </div>
                <!--c-block-->
                <img class="map" src="images/map.png" alt="" /> 
                <div class="address"> 
                  <ul class="inform">
                    <li>7G, RBI colony,</li>
                    <li>Bangalore, 5600 61.</li>
                  </ul>
                  <ul  class="fmail">
                    <li>Freephone:&nbsp;&nbsp;&nbsp; +1 800 143 0420</li>
                    <li>FAX:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      +1 800 143 0420</li>
                    <li><br></br>
                      </li>
                    <li><br></br>
                      </li>
                    <li>E-mail:&nbsp;&nbsp;&nbsp;<a href="home.html">info@pharmacy.com</a></li>
                  </ul>
                </div>
                <!--address-->
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