<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<style>
	html{
			font-family: Arial;
	}
</style>
<body>
	<form action="" id="form">
	Enter Contact Number/Company Name to view all existing records:<input type="text" name="contact" required="true">
	<input type="submit" value="Search">
	</form>
<%@ page import ="java.sql.*" %>
<%
String contact = request.getParameter("contact");
Class.forName("org.h2.Driver");
Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
Statement st = con.createStatement();
ResultSet r;
r = st.executeQuery("select * from EmpDetails where CONTACT='" + contact + "'");
if(r.next()){

%>
<br>
<form method="get" name="display">

<table width=100% style="border-collapse: collapse; border: 1px solid black" border="1" align="center">
<tr>
<td style="background-color: green" align="center"> </td>
<td style="background-color: green" align="center">Visitor Name</td>
<td style="background-color: green" align="center">Age</td>
<td style="background-color: green" align="center">Address</td>
<td style="background-color: green" align="center">Company</td>
</tr>


		<tr>
		<td style="background-color: green" align="center"><a href="cisf.jsp">Select</a></td>
	    <td align="center"><%=r.getString("NAME")%></td>
	    <td align="center"><%=r.getString("AGE")%></td>
	    <td align="center"><%=r.getString("ADDRESS")%></td>
	    <td align="center"><%=r.getString("COMPANY")%></td>
	    </tr>
	 
	    </table>
	    <%
	
%>
	</form>  <%
}
else{
	ResultSet rs;
	rs = st.executeQuery("select * from EmpDetails where COMPANY='" + contact + "'");
	if(rs.next()){
	
	%>
	<br>
	<form method="get" name="display">

	<table width=50% style="border-collapse: collapse; border: 1px solid black" border="1" align="center">
	<tr>
	<td style="background-color: green" align="center"><a href="cisf.jsp" formtarget="_blank"><u>Select</u></a></td>
	<td style="background-color: green" align="center">Visitor Name</td>
	<td style="background-color: green" align="center">Age</td>
	<td style="background-color: green" align="center">Address</td>
	<td style="background-color: green" align="center">Company</td>
	</tr>
	<%
	while(rs.next()){
		
		%>
	
	
			<tr>
			<td></td>
		    <td align="center"><%=r.getString("NAME")%></td>
		    <td align="center"><%=r.getString("AGE")%></td>
		    <td align="center"><%=r.getString("ADDRESS")%></td>
		    <td align="center"><%=r.getString("COMPANY")%></td>
		    </tr>
		 
		    </table>
		    <%
		}
	%>
	</form> <%
	}
}
		
		
		
		
		%>
		</html> 

