<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coffee Shop Items For Sale</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Coffee Shop Items For Sale</h1>
		<table>
			<thead>
				<tr>
					<th>Name of Item</th><th>Description</th><th>Quantity</th><th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
				<tr>
					<td><a href="/${item.id}">${item.name}</a></td>
					<td>${item.description}</td>
					<td>${item.quantity}</td>
					<td>${item.price}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/items/add" >Add Item</a>
</body>
</html>