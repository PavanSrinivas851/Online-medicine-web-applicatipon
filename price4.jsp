
<%@ page import="java.sql.*"%>
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
width:750px;
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
              <div id="aside"> 
                <h2><font size="+2"> 
                  <%=(String)session.getAttribute("cat")%>
                  </font> </h2>
                <div class="post-block" id="scrol"> 
                  <form action="insertpurchase.jsp" name="f1" method="post" onSubmit="return val()">
                    <table  height="458" width="700" border="0" cellspacing="15">
                      <tr> 
                        <th> Select</th>
                        <th> Name </th>
                        <th>Rate </th>
                        <th> Sale</th>
                        <th>Quantity</th>
                      </tr>
                      <% 

    
    Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs=null;
	 String pro = null,rate = null,pid = null,sale= null;
	//String cat = (String)session.getAttribute("cat");
	try
	 {  
	   Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
	   
	   stmt = con.prepareStatement("select * from medicine where category='"+cat+"' and sale='Available'");
	     
	   rs = stmt.executeQuery();
		
		int i=1;
	   while(rs.next())
       {
	   
	      pro =rs.getString(2);
		  rate =rs.getString(9);
		  pid = rs.getString(1);
		  sale =rs.getString(12);
		  
		   
         %>
                      <tr> 
                        <td><input type="checkbox" name="p<%=i%>" value="<%=pid%>"></td>
                        <td><input type="text" name="m<%=i%>" value="<%=pid%>"></td>
                        <td> <input type="text" name="r<%=i%>" value="<%=rate%>"></td>
                        <td> <input type="text" name="s<%=i%>" value="<%=sale%>"></td>
                        <td> <input type="text" name="q<%=i%>"></td>
                      </tr>
                      <%
   i++;
	   }
	  
	  
	 }
	   catch(Exception e)
	   {
	     out.println(e.getMessage());
	   }
	   
	    %>
                      <tr> 
                        <td></td>
                        <td></td>
                        <td><input type="submit" name="sub" value="Add to cart"></td>
                        <td><input type="reset" name="reset" value="Clear"></td>
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