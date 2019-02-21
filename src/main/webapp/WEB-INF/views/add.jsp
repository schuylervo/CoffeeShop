<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css">
</head>
<body>

<h1>Coffee Shop Items For Sale</h1>
		<h2>Add an Item</h2>
		<form action="/items/add" method="post">
		<table>
			<tr>
				<th >Name</th>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<th >Description</th>
				<td><input type="text" name="description" /></td>
			</tr>
			<tr>
				<th >Quantity</th>
				<td>
					<td><input type="number" name="quantity" /></td>
				</td>
			</tr>
			<tr>
				<th >Price</th>
				<td>
					<td>$<input type="number" name="price" step="0.01" /></td>
				</td>
			</tr>
		</table>
		<button type="submit"  href="/items/add">Add</button>
		<a href="/items">Cancel</a>
		</form>

</body>
</html>