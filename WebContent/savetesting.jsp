<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.xml.bind.DatatypeConverter" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="java.io.*" %>
<%
String imageData = request.getParameter("ImageData");
byte[] imagedata = DatatypeConverter.parseBase64Binary(imageData.substring(imageData.indexOf(",") + 1));
BufferedImage bufferedImage = ImageIO.read(new ByteArrayInputStream(imagedata));
ImageIO.write(bufferedImage, "png", new File("img.png"));

 %>