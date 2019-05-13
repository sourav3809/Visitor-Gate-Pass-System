<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print Pass</title>
</head>
<style>
	html{
			font-family: Arial Narrow;
			font-size: 20px;
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
	  	<center><h2><u>Indian Oil Corporation Limited</u></h2></center>
		<center><h2><u>Visitor Gate Pass</u></h2></center><br><br><br>

<%
	String passno = request.getParameter("pno");
	Class.forName("org.h2.Driver");
    Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from empdetails where pass_no='" + passno + "'");
    if(rs.next()){
    	%>
    		<table width=100%>
    			<tr><td><u><b>PASS NO</b></u>:</td><td><%=rs.getString("PASS_NO") %></td><td><b>Instructions for the Visitor:</b></td></tr>
    			<tr><td><u><b>NAME</b></u>:</td><td><%=rs.getString("NAME") %></td><td>1. You are not allowed to visit any other department without prior permission.</td></tr>
    			<tr><td><u><b>AGE</b></u>:</td><td><%=rs.getString("AGE") %></td><td>2. After the visit, you are requested to get the signature of the person you visited.</td></tr>
    			<tr><td><u><b>COMPANY</b></u>:</td><td><%=rs.getString("COMPANY") %></td><td>3. Do not handle any machinery/appliance inside the premises without prior permission.</td></tr>
    			<tr><td><u><b>PASS ISSUE</b></u>:</td><td id="date"></td><td>4. You are not allowed to leave the premises without returning the pass to the CISF.</td></tr>
    			<tr><td><u><b>NO OF VISITORS</b></u>:</td><td><%=rs.getString("NO_OF_VISITORS") %></td><td>5. The pass cannot be retained for reuse. It is valid only for one time.</td></tr>
    			<tr><td><u><b>TO VISIT</b></u>:</td><td><%=rs.getString("PERSON_VISIT") %></td></tr>
    			<tr><td><u><b>DEPARTMENT TO VISIT</b></u>:</td><td><%=rs.getString("DEPARTMENT_VISIT") %></td></tr>
    			<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
    			<tr><td>Security Personnel Sign</td><td></td><td>Visitor Sign</td></tr>
    			<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
    			<tr><td>Out Time</td><td></td><td>Concerned Personnel Sign</td></tr>
    			
    		</table>
    		<script>
    			var d = new Date();
    			document.getElementById("date").innerHTML = d.toDateString();
    		</script>
    	<%
    }
%>
</body>
</html>