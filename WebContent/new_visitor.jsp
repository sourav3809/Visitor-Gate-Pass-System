<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<style>
	html{
			font-family: Arial;
	}
</style>
<body>
<form action="">
	<table>
		<tr>
			<td>Visit Date: </td>
			<td><select name="dd">
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
			<select name="mm">
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
			<select name="yyyy">
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
			<td></td>
			<td></td>
			<td>Visit Location:</td>
			<td><select name="departments">
				<option value="Information Systems">Information Systems</option>
				<option value="Finances">Finances</option>
				<option value="R & D">R & D</option>
				<option value="Sales and Marketing">Sales and Marketing</option>
				<option value="Board of Directors' Office">Board of Directors' Office</option>
			</select></td>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td>Company/Visitor Name:</td>
			<td><input type="text" name="visitor_name" required="true"></td>
			
		</tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>	
			<td>Person to Visit:</td>
			<td><select name="person_visit">
				<option value="Indrani Mukherjee">Indrani Mukherjee</option>
				<option value="Debajani Panda">Debajani Panda</option>
				<option value="Partha Das">Partha Das</option>
			</select></td></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td><input type="submit" value="Fill Visitor Details"></td>
			<td><input type="reset" value="Clear All"></td>
		</tr>
	</table></form>
</body>
</html>