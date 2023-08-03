<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.digit.JavaTraining.MVCapp.model.BankApp"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
	@charset "ISO-8859-1";
/* Reset some default styles to achieve consistent rendering across different browsers */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

/* Apply some basic styling to the body */
body {
    font-family: Arial, sans-serif;
    background-color: #f1f1f1;
}

/* Center the content vertically and horizontally */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 10vh;
}

/* Style the group header */
.grp {
    font-size: 28px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;
    margin-top:20px;
    padding: 30px;
}

/* Style the session message */
.container {
    font-size: 20px;
    text-align: center;
    margin-bottom: 20px;
}

.sec{
	
	font-size: 20px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;
    margin-top:160px;
    padding: 30px;
}
/* Style the links */
a {
    display: block;
    font-size: 18px;
    text-decoration: none;
    color: #007bff;
    margin-bottom: 10px;
    flex-direction: row;
    padding: 5px;
    text-align: center;
}

a:hover {
    text-decoration: underline;
}
	
</style>
</head>
<body>
<form >
	<h1 class="grp">Welcome to the bank</h1>
	<div class="container">
	<%
        out.println(" Welcome to your account. Please select an operation to perform");
     %>
     </div>
	<br>
	<a href="Balance.jsp">Check Balance</a><br>
	<a href="ChangePassword.html">Change Password</a><br>
	<a href="Loan.jsp">Apply for Loan</a><br>
	<a href="Transfer.html">Transfer Amount</a><br>
	<a href="ViewAllTransactions.jsp">View All Transactions</a><br>
	<a href="Logout">Log out</a>
	</form>
</body>
</html>