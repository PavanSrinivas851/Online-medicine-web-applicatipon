<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>
<html>
<head>
<title>transport management</title>
</head>

<body>
<%
String s1=(String)session.getAttribute("s1");
String cno=(String)session.getAttribute("cno");



try
    {
	 Connection con = databasec.getconnection();
	PreparedStatement ps=con.prepareStatement("update cab set avail='"+s1+"' where cno='"+cno+"'");
    
	ps.executeUpdate();
	response.sendRedirect("req_action.jsp?message=success");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}

%>
</body>
</html>
