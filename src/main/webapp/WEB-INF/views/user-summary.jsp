<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/style.css" />
<body>

	<p>
		 Welcome, ${ user.firstName }! Below is a summary of your registration information:
	</p>
	<p>	 
	First Name: ${ user.firstName } 
	</p>
	<p>
	Last Name: ${ user.lastName }
	</p>
	<p>
	Email address: ${ user.email }
	</p>
	<p>
	Date of Birth: ${ user.birthday }
	</p>
	<p>
	Password: ${ user.password }
	</p>
	<p>
	Preferred coffee roast: ${ user.roast }
	</p>
	<p>
	Type of baristas employed: ${ user.barista }
	</p>
	<a href="/">Home</a>
</body>
</html>