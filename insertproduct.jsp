<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

Connection con = null;
Statement st = null;
ResultSet rs = null;

String a = request.getParameter("productname");
String b = request.getParameter("category");
String c = request.getParameter("dose");
String d = request.getParameter("dform");
String e = request.getParameter("manufacture");
String f = request.getParameter("origin");
String g = request.getParameter("description");
String h = request.getParameter("quantity");
String i = request.getParameter("price");
String j = request.getParameter("mdate");
String k = request.getParameter("edate");
String l = request.getParameter("sale");

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
st=con.createStatement();
st.executeUpdate("insert into medicine(pname,category,dose,dform,manufacture,origin,description,quantity,price,mdate,edate,sale) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"')");
response.sendRedirect("uploadproduct.jsp");
}

catch(Exception ex){
	out.println(ex);
}
%>
