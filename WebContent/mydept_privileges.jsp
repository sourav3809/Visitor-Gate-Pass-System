<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<style>
	html{
			font-family: Arial;
	}
</style>
<body>

	<b><u><center>Visitor Gate Pass Permissions for My Department</center></u></b>
	<table width=100%>
		<tr>
			<td style="background-color: blue; color: white" align="center">Name</td>
			<td style="background-color: blue; color: white" align="center">Send to CISF Perm.</td>
			<td style="background-color: blue; color: white" align="center">Battery Area Perm.</td>
		</tr>
<%
	Class.forName("org.h2.Driver");
    Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from visitor_perm where post_perm='Y' and battery_perm='Y'");
    while(rs.next()){
    	%>
    	<tr>
    		<td align="center"><%=rs.getString("NAME") %></td>
    		<td align="center"><%=rs.getString("POST_PERM") %></td>
    		<td align="center"><%=rs.getString("BATTERY_PERM") %></td>
    	</tr>
    </table>
    	<%
    }
%>
</body>
</html>