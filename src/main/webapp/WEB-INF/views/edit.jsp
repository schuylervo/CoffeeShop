<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit item</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css">
</head>
<body>
<h1>Coffee Shop Items For Sale</h1>
		<form action="/items/${item.id}/edit" method="post">
		<table>
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" value="${item.name}" /></td>
			</tr>
			<tr>
				<th >Description</th>
				<td><input type="text" name="description" value="${item.description}" /></td>
			</tr>
			<tr>
				<th >Quantity</th>
				<td><input type="number" name="storeQuantity" value="${item.storeQuantity}" /></td>
			</tr>
			<tr>
				<th >Price</th>
				<td><input type="number" name="price" step="0.01" value="${item.price}"/></td>
			</tr>
		</table>
		<button type="submit" >Save Changes</button>
		<a href="/items/${item.id}">Cancel</a>
		</form>
</body>
</html>