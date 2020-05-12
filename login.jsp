<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" 
	"http://www.w3.org/TR/html4/strict.dtd">
<%
	String cat = request.getParameter("id");
	session.setAttribute("cat",cat);
%>
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
                <h2>User Login</h2>
                <div class="post-block" id="scrol"> 
                  <form action="login1.jsp" name="form1" method="post" onSubmit="return validation2()">
                    <table cellspacing="15">
                      <tr> 
                        <td>Email Id:</td>
                        <td><input type="text" style="background-color:violet" name="name"></td>
                      </tr>
                      <tr> 
                        <td>Password</td>
                        <td><input type="password" style="background-color:violet" name="password"></td>
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