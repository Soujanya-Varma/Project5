<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.digit.JavaTraining.MVCapp.model.BankApp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance</title>
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
<section class="sec">
<h3>
<%
   session = request.getSession();
   BankApp bankapp = (BankApp) session.getAttribute("bankapp");
   out.println("Balance : "+ bankapp.getBalance());
%>
<br>
<br>
</section>
<a href="Home.jsp">Click to Redirect</a>
</h3>
</body>
</html>