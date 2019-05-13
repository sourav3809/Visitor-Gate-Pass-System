<%@ page import ="java.sql.*" %>
<html>
<head>
<style>
</style>
</head>
<%
String contact = request.getParameter("contact");
Class.forName("org.h2.Driver");
Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
Statement st = con.createStatement();
ResultSet r;
r = st.executeQuery("select * from EmpDetails where CONTACT='" + contact + "'");

if(r.next())
{
	
	%>
	

	<body>
	<br><br>
	<h1 style="color: white"><center>Visitor Details</center></h1>
	<br><br>

	<form method="get" name="display">

	<table width=100% style="border-collapse: collapse; border: 1px solid black" border="1" align="center">
	<tr>
	<td style="color: cyan">NAME</td>
	<td style="color: cyan">AGE</td>
	<td style="color: cyan">SEX</td>
	<td style="color: cyan">ADDRESS</td>
	<td style="color: cyan">STATE</td>
	<td style="color: cyan">PIN</td>
	<td style="color: cyan">POLICE STATION</td>
	<td style="color: cyan">CONTACT</td>
	</tr>
	
			<tr>
		    <td style="color: white"><%=r.getString("NAME")%></td>
		    <td style="color: white"><%=r.getString("AGE")%></td>
		    <td style="color: white"><%=r.getString("SEX")%></td>
		    <td style="color: white"><%=r.getString("ADDRESS")%></td>
		    <td style="color: white"><%=r.getString("STATE")%></td>
		    <td style="color: white"><%=r.getString("PIN")%></td>
		    <td style="color: white"><%=r.getString("POLICE_ST")%></td>
		    <td style="color: white"><%=r.getString("CONTACT")%></td>
		    </tr>
		 
		    </table>
		    <br><br><br><br><br>
		    <center><input type="button" value="Confirm" onclick="location.href='print_pass.jsp'"></center>
		    <%
		    r.close();
		    st.close();
		    con.close();
	
		
}
else
{
	response.sendRedirect("registration.jsp");	
}
		
		
		
		
		%>
		
		</form>
		</html> 

