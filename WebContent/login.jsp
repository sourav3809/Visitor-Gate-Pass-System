<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("userid");    
    String pwd = request.getParameter("password");
    Class.forName("org.h2.Driver");
    Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from Employee1 where USERID='" + userid + "' and PWD='" + pwd + "'");
    if (rs.next()){
        session.setAttribute("USERID", userid);
        response.sendRedirect("home.jsp");
    } else {
        out.println("Invalid UserID or Password. <a href='index.jsp'>Try again</a>");
    }
%>