<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="menu.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Billings</title>
</head>
<body>
	<h2 style="background-color:Lime">List Of Billings</h2>
	<table>
		<tr>
			<th style="background-color:red">Id</th>
			<th style="background-color:cyan">First Name</th>
			<th style="background-color:red">Last Name</th>
			<th style="background-color:lime">Email</th>
			<th style="background-color:lime">Mobile</th>
			<th style="background-color:red">Product Name</th>
			<th style="background-color:cyan">Amount Paid</th>
		</tr>
	<c:forEach items="${Billing}" var="bill">
		<tr>
			<td>${bill.id}</td>
			<td><a href="generate?id=${bill.id}">${bill.firstName}</a></td>
			<td>${bill.lastName}</td>
			<td>${bill.email}</td>
			<td>${bill.leadSource}</td>
			<td>${bill.mobile}</td>
			<td><a href="generate?id=${bill.id}">Generate Bill</a></td>
		</tr>	
	</c:forEach>	
	</table>
</body>
</html>