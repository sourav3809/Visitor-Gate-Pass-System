<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Visitors</title>
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
	<center><h2>Indian Oil Corporation Limited</h2></center><br>
	<center><u><h2 style="color: maroon">Visitor Details</h2></u></center>
	<br><br><br><br><br>
	<center><input type="button" value="Exit" onclick="location.href='home.jsp'"></center>
	<br><br>
	<form action="print.jsp">
		<center>Enter Pass Number to Print<input type="text" name="pno" required="true"></center><br>
		<center><input type="submit" value="Print"></center>
	<center><u><h3 style="color: green">Following visitors are requested to contact pass section for gate pass</h3></u></center>
	<center><table width=100%>
		<tr>
			<td style="background-color: cyan" align="center"><u>Pass No.</u></td>
			<td style="background-color: cyan" align="center"><u>Visitor Name</u></td>
			<td style="background-color: cyan" align="center"><u>Company</u></td>
			<td style="background-color: cyan" align="center"><u>Department to visit</u></td>
		</tr>
			<%
			Class.forName("org.h2.Driver");
		    Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
		    Statement st = con.createStatement();
		    ResultSet rs = st.executeQuery("select * from EmpDetails where pass_status='NR' and approve_status='APP'");
		    while(rs.next()){
		    	%>
		    	<tr>
		    		<td align="center"><%=rs.getString("PASS_NO") %></td>
		    		
		    		<td  align="center"><%=rs.getString("NAME") %></td>

		    		<td align="center"><%=rs.getString("COMPANY") %></td>
	
		    		<td align="center"><%=rs.getString("DEPARTMENT_VISIT") %></td>
		    	</tr>	<%
		    }
			%>
	</table></center>
	
</body>
</html>