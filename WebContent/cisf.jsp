<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from empdetails where pass_status='NR' and approve_status='NAPP'");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Approve/Edit/View Pass</title>
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
	<center><h2>Indian Oil Corporation Limited</h2></center>
	<center><h2 style="color: blue"><u>Visitor Gate Pass System</u></h2></center><br>
	<center><h3 style="color: maroon"><u>CISF Approval Portal(Pass Approval)</u></h3></center><br>
<br><br><br>
	<center><form action="">
	<center><table width=50%><tr>
	<td align="right">Enter Pass No</td><td><input type="text" name="pass_no" required="true"></td><td><input type="submit" value="View"></td>
	</tr></table></center>
	<br><br><br>
	<table width=100%>
		<tr>
			<td style="background-color: blue; color:white" align="center">PASS NO.</td>
			<td style="background-color: blue; color:white" align="center">VISITOR NAME</td>
			<td style="background-color: blue; color:white" align="center">COMPANY</td>
			<td style="background-color: blue; color:white" align="center">ADDRESS</td>
			<td style="background-color: blue; color:white" align="center">AGE</td>
			<td style="background-color: blue; color:white" align="center">VISIT LOCATION</td>
		</tr>
		
	<% 
		while(rs.next()){
			%>
			<tr>
				<td align="center"><%=rs.getString("PASS_NO") %></td>
				<td align="center"><%=rs.getString("NAME") %></td>
				<td align="center"><%=rs.getString("COMPANY") %></td>
				<td align="center"><%=rs.getString("ADDRESS") %></td>
				<td align="center"><%=rs.getString("AGE") %></td>
				<td align="center"><%=rs.getString("DEPARTMENT_VISIT") %></td>	
			</tr>
			<%		
		}
	
	 %>
		
	</table>
	</form></center><br><br><br>
<%
	String pass_no = request.getParameter("pass_no");
	session.setAttribute("PASS_NO",pass_no);
    ResultSet rs1 = st.executeQuery("select * from empdetails where pass_no='" + pass_no + "'");
    if(rs1.next()){
    	%>
    	<br><br>
    	<center><form id="formid" action="" method="post">
		<table width=100% style="font-family: Arial Narrow; font-size: 18px">
		<tr><td><b>NAME:</b></td><td align="center"><%=rs1.getString("NAME") %></td></tr>
		<tr><td><b>SEX:</b></td><td align="center"><%=rs1.getString("SEX") %></td></tr>
		<tr><td><b>ADDRESS:</b></td><td align="center"><%=rs1.getString("ADDRESS") %></td></tr>
			<tr><td><b>STATE:</b></td><td align="center"><%=rs1.getString("STATE") %></td></tr>
			<tr><td><b>PIN:</b></td><td align="center"><%=rs1.getString("PIN") %></td></tr>
			<tr><td><b>POLICE STATION:</b></td><td align="center"><%=rs1.getString("POLICE_ST") %></td></tr>
			<tr><td><b>CONTACT:</b></td><td align="center"><%=rs1.getString("CONTACT") %></td></tr>
			<tr><td><b>AGE:</b></td><td align="center"><%=rs1.getString("AGE") %></td></tr>
			<tr><td><b>COMPANY:</b></td><td align="center"><%=rs1.getString("COMPANY") %></td></tr>
			<tr><td><b>DEPARTMENT TO VISIT:</b></td><td align="center"><%=rs1.getString("DEPARTMENT_VISIT") %></td></tr>
			<tr><td><b>PASS NO:</b></td><td align="center"><%=rs1.getString("PASS_NO") %></td></tr>
    				
  					
  					
  					
  					
  					
  					
  					
  					
  					
  					
    	</tr>
    </table><br><br>
    <input type="button" value="Approve(CISF)" name="approve" onclick="Approve()">
    <input type="button" value="Edit" name="save" onclick="Save()">
    <input type="button" value="Delete" name="delete" onclick="Delete()">
    
    </form></center>
    <script>
		form=document.getElementById("formid");
		function Save() {
		        form.action="pass.jsp";
		        form.submit();
		}
		function Approve() {
		        form.action="post_approve.jsp";
		        form.submit();
		}
		function Delete() {
	        form.action="delete_cisf.jsp";
	        form.submit();
	}
	 
	</script>
    <%
    }
%>
</body>
</html>