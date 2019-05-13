<%@ page import ="java.sql.*" %>

<%
	String perm_cisf = request.getParameter("perm_cisf");
	String empno = request.getParameter("empno");
	String perm_battery = request.getParameter("perm_battery");
	Class.forName("org.h2.Driver");
    Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
    Statement st=con.createStatement();
    st.executeUpdate("update visitor_perm set post_perm='" + perm_cisf + "', battery_perm='" + perm_battery + "' where empno='" + empno + "'");
    response.sendRedirect("admin.jsp");
	   
%>