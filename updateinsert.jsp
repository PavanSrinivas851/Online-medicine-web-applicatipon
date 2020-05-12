<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>no use</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>

<%

Connection con=null;

ResultSet rs=null;
PreparedStatement psmt1=null;


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
String l = request.getParameter("edate1");


try{

Class.forName("com.mysql.jdbc.Driver").newInstance();

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");




psmt1=con.prepareStatement("update medicine set pname=?,category=?,dose=?,dform=?,manufacture=?,origin=?,description=?,quantity=?,price=?,mdate=?,edate=?,sale=? where pname='"+a+"'");
psmt1.setString(1,a);
psmt1.setString(2,b);
psmt1.setString(3,c);
psmt1.setString(4,d);
psmt1.setString(5,e);
psmt1.setString(6,f);
psmt1.setString(7,g);
psmt1.setString(8,h);
psmt1.setString(9,i);
psmt1.setString(10,j);
psmt1.setString(11,k);
psmt1.setString(12, l);


psmt1.executeUpdate();
response.sendRedirect("viewproduct.jsp?message=success");

con.close();
psmt1.close();
//psmt2.close();

}catch(Exception ex){
	
out.println("Error in connection : "+ex);

}

%>

</body>
</html>