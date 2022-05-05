<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="menu.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Leads</title>
</head>
<body>
<a href="view">Create New Lead</a>
	<h2 style="background-color:Lime">List Of Leads</h2>
	<table>
		<tr>
			<th style="background-color:red">Id</th>
			<th style="background-color:cyan">First Name</th>
			<th style="background-color:red">Last Name</th>
			<th style="background-color:lime">Email</th>
			<th style="background-color:red">Lead Source</th>
			<th style="background-color:lime">Mobile</th>
		</tr>
	<c:forEach items="${leads}" var="lead">
		<tr>
			<td>${lead.id}</td>
			<td><a href="getLeadById?id=${lead.id}">${lead.firstName}</a></td>
			<td>${lead.lastName}</td>
			<td>${lead.email}</td>
			<td>${lead.leadSource}</td>
			<td>${lead.mobile}</td>
		</tr>	
	</c:forEach>	
	</table>
</body>
</html>