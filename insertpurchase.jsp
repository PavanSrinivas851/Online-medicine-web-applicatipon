<%@ page import="java.util.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
 
 <%
 String r1=request.getParameter("r1");
 String r2=request.getParameter("r2");
 String r3=request.getParameter("r3");
 String r4=request.getParameter("r4");
 String r5=request.getParameter("r5");
 String r6=request.getParameter("r6");
 String r7=request.getParameter("r7");
 String r8=request.getParameter("r8");
 String r9=request.getParameter("r9");
 String r10=request.getParameter("r19");

 int total = 0;
  
    String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2");
	String p3 = request.getParameter("p3");
	String p4 = request.getParameter("p4");
	String p5 = request.getParameter("p5");
    String p6 = request.getParameter("p6");
	String p7 = request.getParameter("p7");
	String p8 = request.getParameter("p8");
	String p9 = request.getParameter("p9");
	String p10 = request.getParameter("p10");

System.out.println(p1);
System.out.println(p2);
System.out.println(p3);
System.out.println(p4);
System.out.println(p5);
System.out.println(p6);
System.out.println(p7);
System.out.println(p8);
System.out.println(p9);
System.out.println(p10);

	String m1 = request.getParameter("m1");
	String m2 = request.getParameter("m2");
	String m3 = request.getParameter("m3");
	String m4 = request.getParameter("m4");
	String m5 = request.getParameter("m5");
    String m6 = request.getParameter("m6");
	String m7 = request.getParameter("m7");
	String m8 = request.getParameter("m8");
	String m9 = request.getParameter("m9");
	String m10 = request.getParameter("m10");

System.out.println(m1);
System.out.println(m2);
System.out.println(m3);
System.out.println(m4);
System.out.println(m5);
System.out.println(m6);
System.out.println(m7);
System.out.println(m8);
System.out.println(m9);
System.out.println(m10);

	String q1 = request.getParameter("q1");
	String q2 = request.getParameter("q2");
	String q3 = request.getParameter("q3");
	String q4 = request.getParameter("q4");
	String q5 = request.getParameter("q5");
	String q6 = request.getParameter("q6");
	String q7 = request.getParameter("q7");
	String q8 = request.getParameter("q8");
	String q9 = request.getParameter("q9");
	String q10 = request.getParameter("q10");

	if(p1!=null){
		total += Integer.parseInt(q1)*Integer.parseInt(r1);
	}
	else{
		p1="xxx";
	}
	if(p2!=null){
		total += Integer.parseInt(q2)*Integer.parseInt(r2);
	}
	else{
		p2="xxx";
	}
	if(p3!=null){
		total += Integer.parseInt(q3)*Integer.parseInt(r3);
	}
	else{
		p3="xxx";
	}
	if(p4!=null){
		total += Integer.parseInt(q4)*Integer.parseInt(r4);
	}
	else{
		p4="xxx";
	}
	if(p5!=null){
		total += Integer.parseInt(q5)*Integer.parseInt(r5);
	}
	else{
		p5="xxx";
	}
	if(p6!=null){
		total += Integer.parseInt(q6)*Integer.parseInt(r6);
	}
	else{
		p6="xxx";
	}
	if(p7!=null){
		total += Integer.parseInt(q7)*Integer.parseInt(r7);
	}
	else{
		p7="xxx";
	}
	if(p8!=null){
		total += Integer.parseInt(q8)*Integer.parseInt(r8);
	}
	else{
		p8="xxx";
	}
	if(p9!=null){
		total += Integer.parseInt(q9)*Integer.parseInt(r9);
	}
	else{
		p9="xxx";
	}
	if(p10!=null){
		total += Integer.parseInt(q10)*Integer.parseInt(r10);
	}
	else{
		p10="xxx";
	}
	session.setAttribute("total",total);
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

	String email=(String)session.getAttribute("name");
	session.setAttribute("em",email);
	String name=(String)session.getAttribute("pass");
	session.setAttribute("na",name);
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
	Statement st = con.createStatement();
	ResultSet rs;
	st.executeUpdate("insert into purchase(name,email,address,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,total,date) values('"+name+"','"+email+"','xxx','"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+p5+"','"+p6+"','"+p7+"','"+p8+"','"+p9+"','"+p10+"','"+total+"','"+strDateNew+"')");	
 	response.sendRedirect("insertpurchase1.jsp");
	%>
	
	

  
  
   





<!--

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
                <%=total%>
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
-->