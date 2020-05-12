
<%@ page import="java.sql.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>
<font color="green" size="6" face="Timesnewroman">Record Deleted successfully from
List</font> 
<hr>
	<form name="del">
			
	
	<% 
    String email=request.getQueryString();
				
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
        try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","root");
		
	    st=con.createStatement();
	    String sql="delete from purchase where email='"+email+"'";
 	    st.executeUpdate(sql);
			
		%>
		<jsp:forward page="admin.jsp"/>
		
		<%
	}catch(SQLException e1)	{ out.println("Database error"+e1.getMessage()); }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
			
             </form>
       </body> 	
</html>