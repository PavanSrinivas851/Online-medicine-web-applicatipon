<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>
<html>
<head>
<title>transport management</title>
</head>

<body>
<%
String cno=(String)session.getAttribute("cno");

String av=null;
ResultSet rs=null;

try
    {
	 Connection con = databasec.getconnection();
	PreparedStatement ps=con.prepareStatement("select * from cab where cno='"+cno+"'");
    
	rs=ps.executeQuery();
	while(rs.next())
	{
	av=rs.getString(6);
	}
	
	int b=1;
	 int a = Integer.parseInt(av);
	 int s=a-b;
	String s1 = Integer.toString(s);
	session.setAttribute("s1",s1);
	response.sendRedirect("asign_reg3.jsp?message=success");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}

%>
</body>
</html>
