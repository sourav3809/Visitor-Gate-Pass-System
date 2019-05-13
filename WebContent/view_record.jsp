<%@ page import="java.sql.*" %>
<!DOCTYPE table PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<table width=100%>
  		 		<tr>
  					<td style="background-color: maroon; color: white"> </td>	
  					<td style="background-color: maroon; color: white">EMPNO</td>
  					<td style="background-color: maroon; color: white">NAME</td>
  					<td style="background-color: maroon; color: white">DESIGNATION</td>
  					<td style="background-color: maroon; color: white">POST TO CISF</td>
  					<td style="background-color: maroon; color: white">BATTERY AREA PERM</td>
  					<td style="background-color: maroon; color: white">DEPT_CD</td>
  					<td style="background-color: maroon; color: white">DEPT</td>
  				</tr>
  			
<%
	String dept = request.getParameter("dept");
	Class.forName("org.h2.Driver");
  	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
  	Statement st=con.createStatement();
  	ResultSet rs = st.executeQuery("select * from visitor_perm where DEPT='Information Systems' and POST_PERM='Y' and BATTERY_PERM='Y'");
  	while(rs.next()){
  		%>
  				<tr>
  					<td><a href="delete.jsp" style="color: maroon">Delete</td>
  					<td><%=rs.getString("EMPNO") %></td>
  					<td><%=rs.getString("NAME") %></td>
  					<td><%=rs.getString("DESIGNATION") %></td>
  					<td><%=rs.getString("POST_PERM") %></td>
  					<td><%=rs.getString("BATTERY_PERM") %></td>
  					<td><%=rs.getString("DEPT_CD") %></td>
  					<td><%=rs.getString("DEPT") %></td>	
  				</tr>
  		<%
  	}
%>  	

</table>
</body>
</html>