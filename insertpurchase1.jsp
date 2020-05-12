<%@ page language="java" import="java.sql.*"%>
 
 <%


	String email=(String)session.getAttribute("em");
	System.out.println(email);
	String name=(String)session.getAttribute("na");
	System.out.println(name);
	Connection con1=null;
	PreparedStatement stmt = null;
	ResultSet rs=null;
	String address=null;

		Class.forName("com.mysql.jdbc.Driver");
		con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
	   
	   stmt = con1.prepareStatement("select * from account where email='"+email+"'");
	     
	   rs = stmt.executeQuery();
		
		
	   while(rs.next()){
			address=rs.getString(3);
			
				System.out.println(address);
				Connection con=null;
				PreparedStatement psmt1=null;

				Class.forName("com.mysql.jdbc.Driver").newInstance();

				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");

				psmt1=con.prepareStatement("update purchase set address=? where email='"+email+"'");
				psmt1.setString(1,address);
				psmt1.executeUpdate();	
 	

	   }
	

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
width:700px;
height:200px;
overflow:scroll;
}
</style>
<script type="text/javascript">
function validation1(){
var a=document.form.name.value;
var b=document.form.password.value;
if(a=="")
		{
		alert("enter name"	);
		document.form.name.focus();
		return false;
		}
if(b=="")
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
		alert("enter name"	);
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
              <div> <font color="#003399" size="+2">Total Amount of your purchase: 
                <blink> 
                <%=session.getAttribute("total")%>
                </blink></font> </div>
              <div align="center"> <img src="images/delivery.png"> <font color="#003399" size="+2">Get 
                wel soon</font> </div>
              <div id="mainContent"> <br/>
                <br/>
                <br/>
                <br/>
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
</div>
<!--general-wrapper-->

</body>
</html>
