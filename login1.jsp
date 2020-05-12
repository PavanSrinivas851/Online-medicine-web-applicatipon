<%@ page import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
Connection con=null;
Statement st = null;
ResultSet rs = null;
String name = request.getParameter("name");
String password = request.getParameter("password");
session.setAttribute("name",name);
session.setAttribute("pass",password);
try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
	st = con.createStatement();
	String qry ="select * from account where email='"+name+"' AND password='"+password+"'"; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	out.println("Enter correct username, password");
	
	}
	else{
		response.sendRedirect("pricelist.jsp");	
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>


