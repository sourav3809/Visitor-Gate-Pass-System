<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%
	String empremove = request.getParameter("empremove");
	Class.forName("org.h2.Driver");
  	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
  	Statement st=con.createStatement();
  	st.executeUpdate("update visitor_perm set POST_PERM='N', BATTERY_PERM='N' where empno='" + empremove + "'");
  	response.sendRedirect("admin.jsp");
 %>