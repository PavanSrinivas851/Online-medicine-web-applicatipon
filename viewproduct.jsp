<%@ page import="java.sql.*"%>
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
<style type="text/css">
#scrol{
width:780px;
height:235px;
overflow:scroll;
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
                <p><strong><font color="#CC66FF" size="+1">Products</font></strong></p>
                <div class="post-block" id="scrol"> 
                  <form action="#" name="form" method="post">
                    <table align="center" width="900" style="border:1px solid #66CC33;" bgcolor="#FFFFFF">
                      <!--DWLayoutTable-->
                      <tr class="button3" style="border:1px solid #CCCCCC;"> 
                        <td width="100" style="border:1px solid #CCCCCC;" height="35"><font color="#FF0000"><strong>Product 
                          Name</strong></font></td>
                        <td width="160" style="border:1px solid #CCCCCC;" height="35"><font color="#FF0000"><strong>Category</strong></font></td>
                        <td width="120" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Dose</strong></font></td>
                        <td width="100" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Dosage 
                          Form</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Manufacture</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Country 
                          of Origin</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Description</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Quantity</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Price</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Manufactured 
                          date</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Expiring 
                          date</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Sale</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Delete</strong></font></td>
                        <td width="70" style="border:1px solid #CCCCCC;"><font color="#FF0000"><strong>Update</strong></font></td>
                      </tr>
                      <% 

try

        {

Class.forName("com.mysql.jdbc.Driver"); 
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");

Statement st=con.createStatement();

String sql="select * from  medicine";

ResultSet rs=st.executeQuery(sql);


while(rs.next())

    {

  %>
                      <tr class="paragraping2" style="border:1px solid #CCCCCC;"> 
                        <td width="112" height="43" style="border:1px solid #CCCCCC;"><font color="000080"> 
                          <% out.println(rs.getString(1));%>
                          </font></td>
                        <td width="53" nowrap style="border:1px solid #CCCCCC;"> 
                          <font color="000080"> 
                          <% out.println(rs.getString(2));%>
                          </font></td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(3));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(4));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(5));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(6));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(7));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(8));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(9));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(10));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(11));%>
                        </td>
                        <td style="border:1px solid #CCCCCC;"> 
                          <%out.println(rs.getString(12));%>
                        </td>
                        <td width="80" style="border:1px solid #CCCCCC;"> <a  href="deleteproduct1.jsp?<%=rs.getString(1)%>"><strong>Delete</strong></a> 
                        <td width="80" style="border:1px solid #CCCCCC;"> <a  href="updateproduct.jsp?<%=rs.getString(1)%>"><strong>Update</strong></a> 
                        </td>
                        <%

	%>
                        <%
}

st.close();

con.close();

}

catch(Exception e)

        {

out.println(e);

}

%>
                      </tr>
                    </table>
                  </form>
                </div>
                <!--post-block-->
              </div>
              <!--aside-->
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