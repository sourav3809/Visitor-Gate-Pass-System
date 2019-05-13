<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Visitor Details</title>
<style>
	html { 
	  background: grey;
	  -webkit-background-size: cover;
	  -moz-background-size: cover;
	  -o-background-size: cover;
	  background-size: cover;
	  font-family: Arial;
	}
</style>
<frameset rows="30%,55%,15%">
	<frameset cols="60%,40%">
		<frame name="new_visitor" src="new_visitor.jsp" style="background-color: grey" />
		<frame style="background-color: cyan" src="find_visitor.jsp" name="find_visitor" />
	</frameset>
	<frame name="registration" style="background-color: maroon" src="registration.jsp" />
	<frame name="mydept_privileges" src="mydept_privileges.jsp" style="background-color: grey" />
	
</frameset>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	
</body>
</html>