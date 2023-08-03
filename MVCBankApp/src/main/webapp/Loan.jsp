<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h3>Select type of loan to apply</h3>

		<p>1. Home Loan</p>
		<p>2. Educational Loan</p>
		<p>3. Vehicle Loan</p>
		<p>4. Gold Loan</p>
		<p>5. Personal Loan</p>

		<br> <br>

		<form action="loan" method="post">
			<label>Enter your choice</label><br>
			<br> <select name="loan" id="loan">
				<option value="Home Loan">Home Loan</option>
				<option value="Educational Loan">Educational Loan</option>
				<option value="vehicle Loan">Vehicle Loan</option>
				<option value="Gold Loan">Gold Loan</option>
				<option value="Personal Loan">Personal Loan</option>
			</select><br>
			<br> <input type="submit">
		</form>
	</div>
</body>
</html>