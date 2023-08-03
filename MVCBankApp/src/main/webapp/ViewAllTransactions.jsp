<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.digit.JavaTraining.MVCapp.model.BankApp, 
	com.digit.JavaTraining.MVCapp.model.Transaction, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
	padding: 8px;
}

tr.green {
	background-color: grey;
}

tr.red {
	background-color: white;
}
</style>
</head>
<body>

	<%
	session = request.getSession();
	if (session == null) {
		response.sendRedirect("/MVCBankApp/Home.html");
		return;
	}

	BankApp curBankUser = (BankApp) session.getAttribute("bankapp");
	if (curBankUser == null) {
		response.sendRedirect("/MVCBankApp/Home.jsp");
		return;
	}

	String isListGenerated = (String) session.getAttribute("isListGenerated");
	if (isListGenerated == null) {
		response.sendRedirect("/MVCBankApp/viewAllTransactions");
	} else {
		session.removeAttribute("isListGenerated");
	}

	ArrayList<Transaction> arrayList = (ArrayList<Transaction>) session.getAttribute("ALL_TRANSACTIONS");
	if (arrayList == null) {
		return;
	}
	%>

	<%
	if (arrayList.size() == 0) {
	%>
	<h1 align="center">No Transactions Made Yet!</h1>
	<%
	return;
	}
	%>

	<h1 align="center">All Transactions</h1>

	<table>

		<tr>
		    <th>Transaction ID</th>
			<th>Customer ID</th>
			<th>Sender Bank Name</th>
			<th>Sender Bank IFSC Code</th>
			<th>Sender Account Number</th>
			<th>Receiver IFSC</th>
			<th>Receiver Account Number</th>
			<th>Amount of Transfer</th>
		</tr>

		<%
		for (Transaction curTransaction : arrayList) {
			String trTypeClass = curTransaction.getSender_accno() == curBankUser.getAccNo() ? "red" : "green";
		%>
		<tr class="<%=trTypeClass%>">
		    <td><%=curTransaction.getTransaction_id()%></td>
			<td><%=curTransaction.getCust_id()%></td>
			<td><%=curTransaction.getBank_name()%></td>
			<td><%=curTransaction.getIFSC()%></td>
			<td><%=curTransaction.getSender_accno()%></td>
			<td><%=curTransaction.getReceiver_IFSC()%></td>
			<td><%=curTransaction.getReceiver_accno()%></td>
			<td><%=curTransaction.getAmount()%></td>
		</tr>
		<%
		}
		%>

	</table>

	</ul>

</body>
</html>