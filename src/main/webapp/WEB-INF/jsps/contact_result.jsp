<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="menu.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Contacts</title>
</head>
<body>
<a href="view">Create New Contact</a>
	<h2 style="background-color:Lime">List Of Contacts</h2>
	<table>
		<tr>
			<th style="background-color:red">Id</th>
			<th style="background-color:cyan">First Name</th>
			<th style="background-color:red">Last Name</th>
			<th style="background-color:lime">Email</th>
			<th style="background-color:red">Lead Source</th>
			<th style="background-color:lime">Mobile</th>
			<th style="background-color:cyan">Billing</th>
		</tr>
	<c:forEach items="${contacts}" var="contact">
		<tr>
			<td>${contact.id}</td>
			<td><a href="getContactById?id=${contact.id}">${contact.firstName}</a></td>
			<td>${contact.lastName}</td>
			<td>${contact.email}</td>
			<td>${contact.leadSource}</td>
			<td>${contact.mobile}</td>
			<td><a href="getContactById?id=${contact.id}">Generate Bill</a></td>
		</tr>	
	</c:forEach>	
	</table>
</body>
</html>