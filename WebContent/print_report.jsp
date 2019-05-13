<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<html>
<style>
	html{
			font-family: Calibri;
			font-size: 20px;
	}
</style>
<body>
<table width=100%>
			<tr>
				<td style="background-color: maroon; color: white" align="center">PASS_NO</td>
				<td style="background-color: maroon; color: white" align="center">ENTRY DATE</td>
				<td style="background-color: maroon; color: white" align="center">VISITOR NAME</td>
				<td style="background-color: maroon; color: white" align="center">AGE</td>
				<td style="background-color: maroon; color: white" align="center">GENDER</td>
				<td style="background-color: maroon; color: white" align="center">COMPANY</td>
				<td style="background-color: maroon; color: white" align="center">DEPARTMENT VISITED</td>
				<td style="background-color: maroon; color: white" align="center">STATUS</td>
			</tr>		
			
<%
	String entry_dd_1 = request.getParameter("entry_dd_1");
	String entry_mm_1 = request.getParameter("entry_mm_1");
	String entry_yy_1 = request.getParameter("entry_yy_1");
	String entry_dd_2 = request.getParameter("entry_dd_2");
	String entry_mm_2 = request.getParameter("entry_mm_2");
	String entry_yy_2 = request.getParameter("entry_yy_2");
	String entry_1 = entry_yy_1 + '-' + entry_mm_1 + '-' + entry_dd_1;
	String entry_2 = entry_yy_2 + '-' + entry_mm_2 + '-' + entry_dd_2;
	out.println("entry_1");
	out.println("entry_2");
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from empdetails where pass_entry between '" + entry_1 + "' and '" + entry_2 + "'");
	while(rs.next()){
		%>
				<tr>
  					<td align="center"><%=rs.getString("PASS_NO") %></td>
  					<td align="center"><%=rs.getString("PASS_ENTRY") %></td>
  					<td align="center"><%=rs.getString("NAME") %></td>
  					<td align="center"><%=rs.getString("AGE") %></td>
  					<td align="center"><%=rs.getString("SEX") %></td>
  					<td align="center"><%=rs.getString("COMPANY") %></td>
  					<td align="center"><%=rs.getString("DEPARTMENT_VISIT") %></td>
  					<td align="center"><%=rs.getString("PASS_STATUS") %></td>	
  				</tr>
			
			<%
	}	
	%>
	</table>
	</body>
	</html>
