<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	html{
		font-family: Arial;
	}
.container
{
 position:fixed;
 top:5px;
 left:5px;
 z-index:99;
 color:white;
}

</style>
<body>
<div class="container">
	  <img src="http://4.bp.blogspot.com/-xMfwBcBiW78/Vo1rLXIX0EI/AAAAAAAAGLk/CA-q5zdL_Rk/s1600/IOCL%2BJobs%2BRecruitment%2B2016.jpg" width="200" height="150">
</div>	

	<center><h2>Indian Oil Corporation Limited</h2></center>
	<center><u><h2 style="color: blue">Visitor Gate Pass System</h2></u></center>
	<center><u><h3 style="color: maroon">Pass Reports Portal</h3></u></center><br><br>
	<center><a href="home.jsp" style="color: white">Back</a></center>
	<form action="" method="post">
	<table width=100%>
	<tr>
	<td align="right">Show pass entries:</td><td align="right">From</td><td><select name="entry_dd_1" required="true">
												<option value="01">1</option>
												<option value="02">2</option>
												<option value="03">3</option>
												<option value="04">4</option>
												<option value="05">5</option>
												<option value="06">6</option>
												<option value="07">7</option>
												<option value="08">8</option>
												<option value="09">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
												</select>
								<select name="entry_mm_1" required="true">
								<option value="01">January</option>
								<option value="02">February</option>
								<option value="03">March</option>
								<option value="04">April</option>
								<option value="05">May</option>
								<option value="06">June</option>
								<option value="07">July</option>
								<option value="08">August</option>
								<option value="09">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
								</select>
								
								<select name="entry_yy_1" required="true">
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>
								<option value="2022">2022</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
								<option value="2025">2025</option>
								<option value="2026">2026</option>
								<option value="2027">2027</option>
								<option value="2028">2028</option>
								<option value="2029">2029</option>
								<option value="2030">2030</option>
								<option value="2031">2031</option>
								<option value="2032">2032</option>
								<option value="2033">2033</option>
								<option value="2034">2034</option>
								<option value="2035">2035</option>
								<option value="2036">2036</option>
								<option value="2037">2037</option>
								<option value="2038">2038</option>
								<option value="2039">2039</option>
								<option value="2040">2040</option>
								</select></td>
								
								<td align="right">To</td>
								
								<td><select name="entry_dd_2" required="true">
												<option value="01">1</option>
												<option value="02">2</option>
												<option value="03">3</option>
												<option value="04">4</option>
												<option value="05">5</option>
												<option value="06">6</option>
												<option value="07">7</option>
												<option value="08">8</option>
												<option value="09">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
								</select>
								
								<select name="entry_mm_2" required="true">
								<option value="01">January</option>
								<option value="02">February</option>
								<option value="03">March</option>
								<option value="04">April</option>
								<option value="05">May</option>
								<option value="06">June</option>
								<option value="07">July</option>
								<option value="08">August</option>
								<option value="09">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
								</select>
								
								<select name="entry_yy_2" required="true">
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>
								<option value="2022">2022</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
								<option value="2025">2025</option>
								<option value="2026">2026</option>
								<option value="2027">2027</option>
								<option value="2028">2028</option>
								<option value="2029">2029</option>
								<option value="2030">2030</option>
								<option value="2031">2031</option>
								<option value="2032">2032</option>
								<option value="2033">2033</option>
								<option value="2034">2034</option>
								<option value="2035">2035</option>
								<option value="2036">2036</option>
								<option value="2037">2037</option>
								<option value="2038">2038</option>
								<option value="2039">2039</option>
								<option value="2040">2040</option>
								</select></td>
								</tr></table><br><br><br>
			<center><input type="submit" value="View"></center></form>
			<br><center><a href="home.jsp" style="color:blue">Back</a></center><br><br>
<table width=100%>
			<tr>
				<td style="background-color: maroon; color: white" align="center">PASS NO</td>
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