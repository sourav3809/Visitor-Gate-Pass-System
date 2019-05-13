<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%
	String empremove = request.getParameter("return");
	Class.forName("org.h2.Driver");
  	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
  	Statement st=con.createStatement();
  	st.executeUpdate("update empdetails set pass_status='R' where pass_no='" + empremove + "'");
  	response.sendRedirect("return.jsp");
 %>