<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<body>
	<h2> 
	Register below to begin saving big money!
	</h2>
<img id="savemoney" src="images/savemoney.jpg">

	<form action="/user-summary" method="post">
		<p>
			<label>First Name:</label> <input type="text" name="firstName" required placeholder="Enter your first name" minlength="1"/>
		</p>
		<p>
			<label>Last Name:</label> <input type="text" name="lastName" required placeholder="Enter your last name" minlength="2"/>
		</p>
		<p>
			<label>Date of birth: <input type="date" name="birthday" />
		</p>
		<p>
			<label>Email:</label> <input type="email" name="email" required placeholder="Enter a vaild email address" pattern="[A-za-z0-9._%+-]+@[a-z0-9.-]+\.[A-Za-z]{2,}$" />
		</p>
		<p>
			<label>Username: </label> <input type="text" name="username" placeholder="Enter a new username" required minlength="3" required maxlength = "16" title="Must contain three or more characters"/>
		</p>
		<p>
			<label>Password: </label> <input type="password" name="password" placeholder="Enter a new password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required maxlength = "16" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
		</p>
		<p>
			<label for="password2">Confirm Password:</label> <input id="password2" type="password" name="confirm-password" required minlength="8" />
		</p>
		<p>
			Please select your preferred coffee roast (optional): 
			<div>
			<input type="radio" name="roast" value="Light" />
			<label>Light</label>
			<input type="radio" name="roast" value="Medium" />
			<label>Medium</label>
			<input type="radio" name="roast" value="Dark" />
			<label>Dark</label>
			</div>
		</p>
		<p>
		What type of barista do you employ at your coffee shop?
			<select name="barista">
			
			 <option value="Humans">Humans</option>
			 <option value="Robots">Robots</option>
			 <option value="Combination">Combination of Humans and Robots</option>
			 <option value="PreferNotToAnswer">Prefer Not To Answer</option>
			</select>
			
		</p>
			<button type="submit">Submit Registration</button>
	</form>
	<img id="writtenorder" src="images/coffeewrittenorder.jpg">
		<a href="/">Home</a>
</body>
</html>