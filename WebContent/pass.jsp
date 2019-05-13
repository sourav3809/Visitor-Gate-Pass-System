<%@ page import ="java.sql.*" %>
<%@ page import="javax.xml.bind.DatatypeConverter" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="java.io.*" %>
<%
String imageData = request.getParameter("image");
byte[] imagedata = DatatypeConverter.parseBase64Binary(imageData.substring(imageData.indexOf(",") + 1));
BufferedImage bufferedImage = ImageIO.read(new ByteArrayInputStream(imagedata));
ImageIO.write(bufferedImage, "png", new File("img.png"));

String name=request.getParameter("name");
String age=request.getParameter("age");
String sex=request.getParameter("sex");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String police=request.getParameter("police");
String state=request.getParameter("state");
String pin=request.getParameter("pin");
String company=request.getParameter("company");


	         Class.forName("org.h2.Driver");
	           Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
	           Statement st=con.createStatement();
	           int i=st.executeUpdate("insert into EmpDetails(NAME,AGE,SEX,ADDRESS,COMPANY,CONTACT,POLICE_ST,STATE,PIN) values('" + name + "','" + age + "','" + sex + "','" + address + "','" + company + "','" + contact + "','" + police + "','" + state + "','" + pin +"')");
	        response.sendRedirect("home.jsp");
	   
        %>