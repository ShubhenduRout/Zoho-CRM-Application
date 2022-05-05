<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose</title>
</head>
<body>
	<h2 style="background-color:red">Compose Email</h2>
	<form action="sendEmail" method="post">
		<pre>
			to<input type="text" name="to" value="${email}"/>
			subject<input type="text" name="subject"/>
			<textarea name="body" rows="8" cols="70"></textarea>
			<input type="Submit" value="Send Email"/>
		</pre>
	</form>
</body>
</html>