<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coffee Shop Items For Sale</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
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
					<td><a href="/items/${item.id}">${item.name}</a></td>
					<td>${item.description}</td>
					<td>${item.storeQuantity}</td>
					<td><fmt:formatNumber value="${item.price}" type="currency" /></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/items/add" >Add Item</a>
		<a href="/">Home</a>

</body>
</html>