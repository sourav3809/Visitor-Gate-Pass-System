<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
	Statement st=con.createStatement();
	st.executeUpdate("update empdetails set approve_status='APP' where pass_no='" + session.getAttribute("PASS_NO") + "'");
	response.sendRedirect("cisf.jsp");
%>