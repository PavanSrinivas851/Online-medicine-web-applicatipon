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
String c = request.getParameter("phone");
String d = request.getParameter("email");
String e = request.getParameter("message");

java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
st=con.createStatement();
st.executeUpdate("insert into contact(firstname,lastname,phone,email,message,date) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+strDateNew+"')");
response.sendRedirect("contacts.jsp");
}

catch(Exception ex){
	out.println(ex);
}
%>
