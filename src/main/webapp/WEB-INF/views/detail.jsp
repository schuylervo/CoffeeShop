<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div>
		<h1>Coffee Shop Items For Sale</h1>
		<table>
			<tr>
				<th>Name</th>
				<td>${item.name}</td>
			</tr>
			<tr>
				<th>Description</th>
				<td>${item.description}</td>
			</tr>
			<tr>
				<th>Quantity</th>
				<td>${item.quantity}</td>
			</tr>
			<tr>
				<th>Price</th>
				<td>${item.price}</td>
			</tr>
		</table>
		<a href="/items/${item.id}/edit">Edit</a>
		<a href="/items/${item.id}/delete">Delete</a>
		<a href="/items">Back to List</a>
	</div>
</body>
</html>