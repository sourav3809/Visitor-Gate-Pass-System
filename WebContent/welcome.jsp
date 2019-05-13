<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<center><form action="">
		Contact number/Company name<input type="text" name="contact" required="true">
		<input type="submit" value="View">
	</form></center>
<%
	String contact = request.getParameter("contact");
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from empdetails where (contact='" + contact + "' or company='" + contact + "')");
	while(rs.next()){
		%>
			
		<%
	}
%>	
</body>
</html>