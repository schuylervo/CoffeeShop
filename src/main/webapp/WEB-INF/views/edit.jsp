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
				<td><input type="number" name="quantity" value="${item.quantity}" /></td>
			</tr>
			<tr>
				<th >Price</th>
				<td><input type="number" name="price" value="${item.price}" /></td>
			</tr>
		</table>
		<button type="submit" >Save Changes</button>
		<a href="/items/${item.id}">Cancel</a>
		</form>
</body>
</html>