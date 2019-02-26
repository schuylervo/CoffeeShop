<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Summary</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<body>

<header>
	<span>
			Hello ${ profile.firstName } ${ profile.lastName }
	</span>
	</header>
	<p>
		 <p class="message">${ message }</p>Thank you for registering. Below is a summary of your registration information:
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
	Username: ${ user.username }
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