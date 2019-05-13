<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><form action="">
<table>
		<tr>
			<td style="background-color: maroon; color:white" align="center">NAME</td>
			<td style="background-color: maroon; color:white" align="center">SEX</td>
			<td style="background-color: maroon; color:white" align="center">ADDRESS</td>
			<td style="background-color: maroon; color:white" align="center">STATE</td>
			<td style="background-color: maroon; color:white" align="center">PIN</td>
			<td style="background-color: maroon; color:white" align="center">POLICE STATION</td>
			<td style="background-color: maroon; color:white" align="center">CONTACT</td>
			<td style="background-color: maroon; color:white" align="center">AGE</td>
			<td style="background-color: maroon; color:white" align="center">COMPANY</td>
			<td style="background-color: maroon; color:white" align="center">DEPARTMENT TO VISIT</td>
			<td style="background-color: maroon; color:white" align="center">PASS NO</td>
		</tr>
<%
	String pass_no = request.getParameter("pass_no");
	Class.forName("org.h2.Driver");
    Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from empdetails where pass_no='" + pass_no + "'");
    if(rs.next()){
    	%>
    	<tr>
    				<td><%=rs.getString("NAME") %></td>
  					<td><%=rs.getString("SEX") %></td>
  					<td><%=rs.getString("ADDRESS") %></td>
  					<td><%=rs.getString("STATE") %></td>
  					<td><%=rs.getString("PIN") %></td>
  					<td><%=rs.getString("POLICE_ST") %></td>
  					<td><%=rs.getString("CONTACT") %></td>
  					<td><%=rs.getString("AGE") %></td>
  					<td><%=rs.getString("COMPANY") %></td>
  					<td><%=rs.getString("DEPARTMENT_VISIT") %></td>
  					<td><%=rs.getString("PASS_NO") %></td><td><input type="button" ></td>	
    	</tr>
    </table>
    <input type="button" value="Save">
    <input type="button" value="Approve(CISF)" onclick="location.href='post_approve.jsp'">
    <input type="button" value="Delete" onclick="location.href='delete_cisf.jsp'">
    </form></center>
    <%
    }
%>
</body>
</html>