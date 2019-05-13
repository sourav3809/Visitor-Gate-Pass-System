<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	html{
			font-family: Arial;
	}
.container
{
 position:fixed;
 top:5px;
 left:5px;
 z-index:99;
 color:white;
}
</style>
<body>
<div class="container">
	  <img src="http://4.bp.blogspot.com/-xMfwBcBiW78/Vo1rLXIX0EI/AAAAAAAAGLk/CA-q5zdL_Rk/s1600/IOCL%2BJobs%2BRecruitment%2B2016.jpg" width="200" height="150">
</div>
	<h2><center>Indian Oil Corporation Limited</center></h2>
	<h2 style="color: blue"><u><center>Visitor Gate Pass System</center></u></h2>
	<h2 style="color: red"><u><center>Pass Return Portal</center></u></h2><br><br><br>
	<center><form action="returned.jsp">
		Enter Pass Number<input type="text" name="return" required="true"><br><br>
		<input type="submit" value="Submit">
	</form></center>
	<br><br><br>
	<table width=100%>
	<tr>
		<td style="color: white; background-color: blue" align="center">PASS NO</td>
		<td style="color: white; background-color: blue" align="center">NAME</td>
		<td style="color: white; background-color: blue" align="center">AGE</td>
		<td style="color: white; background-color: blue" align="center">CONTACT</td>
		<td style="color: white; background-color: blue" align="center">COMPANY</td>
		<td style="color: white; background-color: blue" align="center">DEPARTMENT VISITED</td>
		<td style="color: white; background-color: blue" align="center">PERSON VISITED</td>
	</tr>
	
<% 
	String Return = request.getParameter("return");
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select * from empdetails where pass_status='NR' and approve_status='APP'");
	while(rs.next()){
%>
			<tr>
					<td align="center"><%=rs.getString("PASS_NO") %></td>
  					<td align="center"><%=rs.getString("NAME") %></td>
  					<td align="center"><%=rs.getString("AGE") %></td>
  					<td align="center"><%=rs.getString("CONTACT") %></td>
  					<td align="center"><%=rs.getString("COMPANY") %></td>
  					<td align="center"><%=rs.getString("DEPARTMENT_VISIT") %></td>
  					<td align="center"><%=rs.getString("PERSON_VISIT") %></td>
			</tr>
		</table>
		<%
	}	
	%>
</body>
</html>