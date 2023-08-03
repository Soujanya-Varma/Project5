<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.digit.JavaTraining.MVCapp.model.Loan"
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Applied Loan Details</h1>
	<%
	session = request.getSession();
	Loan curLoan = (Loan) session.getAttribute("currLoan");
	out.println("\nLoanID: " + curLoan.getLoanID());
	out.println("\nLoanType: " + curLoan.getLoanType());
	out.println("\nLoanTenure: " + curLoan.getTenure());
	out.println("\nLoanIntrest: " + curLoan.getIntrest());
	out.println("\nLoanDescription: " + curLoan.getDescription());
	%>
	<br>
	<br>
	<a href="Home.jsp">Click to Redirect</a>
</body>

</html>