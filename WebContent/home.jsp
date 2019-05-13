<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
	function enable(){
		document.getElementById("admin").disabled = false;
		document.getElementById("return").disabled = false;
	}
</script>
<title>Visitor Gate Pass System: Home</title>
</head>
<style>
html { 
  background-color: maroon;
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
	<h2 style="color: white"><center>Indian Oil Corporation Limited</center></h2>
	<form action="">
		<%
			Class.forName("org.h2.Driver");
		    Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
		    Statement st = con.createStatement();
		    ResultSet rs = st.executeQuery("select * from employee1 where userid='" + session.getAttribute("USERID") + "'");
		    if(rs.next()){
		    	
		%>
		<center><h2 style="color: white">Welcome to the Visitor Gate Pass Portal,</h1><h1 style="color: cyan"><%=rs.getString("NAME")%></h2></center><br><br>
		<center><table width=100%>
			<tr>
				<td style="background-color: blue; color:white" align="center">NAME</td>
				<td style="background-color: blue; color:white" align="center">GRADE</td>
				<td style="background-color: blue; color:white" align="center">DESIGNATION</td>
				<td style="background-color: blue; color:white" align="center">DEPARTMENT</td>
			</tr>
			<tr>
				<td style="background-color: white" align="center"><%=rs.getString("NAME") %></td>
				<td style="background-color: white" align="center"><%=rs.getString("GRADE") %></td>
				<td style="background-color: white" align="center"><%=rs.getString("DESIGNATION") %></td>
				<td style="background-color: white" align="center"><%=rs.getString("DEPARTMENT") %></td>
			</tr>
		</table></center><br><br><br><br>
		
		<center><table>
		<tr><td><input type="button" value="Enter New Pass" onclick="location.href='visitor_details.jsp'"></td></tr>
		<tr><td><input type="button" value="Approve/Edit/View Pass" id="approve" onclick="location.href='cisf.jsp'"></td></tr>
		<tr><td><input type="button" value="Display Visitors" onclick="location.href='disp_visitors.jsp'"></td></tr>
		<tr><td><input type="button" value="Reports" onclick="location.href='reports.jsp'"></td></tr>
		<tr><td><input type="button" value="Return Visitor Pass" id="return" onclick="location.href='return.jsp'" disabled></td></tr>
		<tr><td><input type="button" value="Administrator Menu" id="admin" onclick="location.href='admin.jsp'" disabled></td></tr>
		</table></center>
		<br><br><br><br>
		<center><b><a href="index.jsp" style="color: white">Logout</a></b></center>
		<% 
		    }
		    
		    ResultSet rs1 = st.executeQuery("select * from employee1 where userid='" + session.getAttribute("USERID") + "' and AUTH='A'");
		    if(rs1.next()){
		%>
		<script>enable();</script>
		
	</form>
	<% 
		    }
	
	%>
</body>
</html>