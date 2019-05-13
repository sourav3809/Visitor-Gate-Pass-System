<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<script>
	document.getElementById("image").value = canvas.toDataURL("image/png");
</script>
</head>
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
<body>
	<form action="pass.jsp">
	<table width=100%>
	<tr><td style="color: red">Pass No.</td><td><input type="text" name="pass_no" required="true"></td></tr>
	<tr></tr>
	<tr><td style="color: red">Visitor Name</td><td><input type="text" name="name" required="true"></td></tr>
	<tr></tr>
	<tr><td style="color: red">Age</td><td><input type="text" name="age" required="true"></td></tr>
	<tr></tr>
	<tr><td style="color: red">Company</td><td><input type="text" name="company" required="true"></td></tr>
	<tr></tr>
	<tr><td style="color: white">Sex</td><td><select name="sex"><option value="Male">Male</option><option value="Female">Female</option><option value="Transgender">Transgender</option></select></td></tr>
	<tr></tr>
	<tr><td style="color: white">Address</td><td><input type="text" name="addr_1"></td></tr>
	<tr></tr>
	<tr><td style="color: white">Contact number</td><td><input type="text" name="contact"></td></tr>
	<tr></tr>
	<tr><td style="color: white">Police Station</td><td><input type="text" name="police"></td></tr>
	<tr></tr>
	<tr><td style="color: white">State</td><td><input type="text" name="state"></td></tr>
	<tr></tr>
	<tr><td style="color: white">PIN</td><td><input type="text" name="pin"></td></tr>
	<tr></tr>
	<tr><td style="color: red">No of Visitors</td><td><input type="text" name="no_of" required="true"></td></tr>
	<tr></tr>
	<tr><td style="color: red">Visiting Area</td><td><input type="text" name="visit_area" required="true"></td></tr>
	<tr></tr>
	<tr><td style="color: red">To Visit</td><td><input type="text" name="to_visit" required="true"></td></tr>
	<tr></tr>
	<tr><td style="color: white">Add Photo</td><td><input type="file" value="Upload" name="image" accept="image/*"></td></tr>
	
	</table><br><br>
	<center><table>
		<tr>
			<td><input type="submit" value="Save"></td>
		</tr>
	</table></center>
</form>

</body>
</html>