<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<%@include file="partials/header.jsp" %>
	<h1>Login</h1>
	
	<p class="message">${ message }</p>
	
	<form action="/login" method="post">
		<p>
			<label for="username">Username:</label> <input id="username" name="username" value="${ param.username }" required minlength="3" />
		</p>		<p>
			<label for="password">Password:</label> <input id="password" type="password" name="password" required minlength="2" />
		</p>
		<p>
			<button>Submit</button>
		</p>
	</form>
	
	or
	
	<p>
		<a href="https://github.com/login/oauth/authorize?client_id=485850f59087d9910f72">Sign in with GitHub</a>
	</p>
	
	<p>
		Don't have an account yet? <a href="/signup">Sign up here</a>.
	</p>
</body>
</html>