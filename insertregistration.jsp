<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

Connection con = null;
Statement st = null;
ResultSet rs = null;

String a = request.getParameter("firstname");
String b = request.getParameter("lastname");
String c = request.getParameter("address");
String d = request.getParameter("country");
String e = request.getParameter("phonenumber");
String f = request.getParameter("height");
String g = request.getParameter("weight");
String h = request.getParameter("sex");
String i = request.getParameter("birthday");
String j = request.getParameter("email");
String k = request.getParameter("password");

java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
st=con.createStatement();
st.executeUpdate("insert into account(firstname,lastname,address,country,phonenumber,height,weight,sex,birthday,email,password,date) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+strDateNew+"')");
response.sendRedirect("userregistration.jsp");
}

catch(Exception ex){
	out.println(ex);
}
%>
