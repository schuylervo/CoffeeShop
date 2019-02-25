<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Detail</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css">
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
				<td>${item.storeQuantity}</td>
			</tr>
			<tr>
				<th>Price</th>
				<td><fmt:formatNumber value="${item.price}" type="currency" /></td>
			</tr>
		</table>
		<a href="/items/${item.id}/edit">Edit</a>
		<a href="/items/${item.id}/delete">Delete</a>
		<a href="/items">Back to List</a>
	</div>
</body>
</html>