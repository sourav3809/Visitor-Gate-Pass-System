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
			background-color: white;
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
	<h2 style="color: red"><u><center>Administrator</center></u></h2><br><br><br>
	<center><form action="">
	<table width=100%>
	<tr>
	<td>Select Department</td><td align="center"><select name="dept">
						<option value="Information Systems">Information Systems</option>
						<option value="R & D">R & D</option>
						<option value="Sales and Marketing">Sales and Marketing</option>
						<option value="Finances">Finances</option>
					</select></td>
					<td><input type="submit" value="View"></td>
	</tr>
	</table>
	</form>
	<form action="enter_data.jsp">
	<table width=100%>
	<tr>
	<td>Enter Employee number</td><td><input type="text" name="empno" required="true"></td>
	</tr>
	<tr>
	<td>Permission to send pass to CISF</td><td><select name="perm_cisf">
										<option value="Y">Y</option>
										<option value="N">N</option>
									</select></td>
	</tr>
	<tr>
	<td>Permission to approve pass for Battery Area</td><td><select name="perm_battery">
										<option value="Y">Y</option>
										<option value="N">N</option>
									</select></td>
	</tr>
	<tr></tr>
	<tr></tr>
	<tr><td align="center"><input type="submit" value="Add"></td></tr>
	</table>
	
	</form>
	<br><br>
	<form action="delete.jsp">
		Remove Employee no<input type="text" name="empremove" required="true">
		<input type="submit" value="Delete"><br><br><br>
		<u><a href="home.jsp" style="color: blue">Back</a></u>
	</form>
	</center>
	<br><br><br>
	
	<table width=100%>
  		 		<tr>
  					<td style="background-color: maroon; color: white" align="center"> </td>	
  					<td style="background-color: maroon; color: white" align="center">EMPNO</td>
  					<td style="background-color: maroon; color: white" align="center">NAME</td>
  					<td style="background-color: maroon; color: white" align="center">DESIGNATION</td>
  					<td style="background-color: maroon; color: white" align="center">POST TO CISF</td>
  					<td style="background-color: maroon; color: white" align="center">BATTERY AREA PERM</td>
  					<td style="background-color: maroon; color: white" align="center">DEPT_CD</td>
  					<td style="background-color: maroon; color: white" align="center">DEPT</td>
  				</tr>
  			
<%
	String dept = request.getParameter("dept");
	Class.forName("org.h2.Driver");
  	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
  	Statement st=con.createStatement();
  	ResultSet rs = st.executeQuery("select * from visitor_perm where DEPT='" + dept + "' and (POST_PERM='Y' or BATTERY_PERM='Y')");
  	while(rs.next()){
  		%>
  				<tr>
  					<td align="center"><a href="delete.jsp" style="color: green">Delete</td>
  					<td align="center"><%=rs.getString("EMPNO") %></td>
  					<td align="center"><%=rs.getString("NAME") %></td>
  					<td align="center"><%=rs.getString("DESIGNATION") %></td>
  					<td align="center"><%=rs.getString("POST_PERM") %></td>
  					<td align="center"><%=rs.getString("BATTERY_PERM") %></td>
  					<td align="center"><%=rs.getString("DEPT_CD") %></td>
  					<td align="center"><%=rs.getString("DEPT") %></td>	
  				</tr>
  		<%
  	}
%>  	

</table>
</body>
</html>