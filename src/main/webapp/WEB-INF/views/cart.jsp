<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart of Items</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css">
</head>
<body>
	<header>
		<span>
			Hello ${ profile.firstName } ${ profile.lastName }
		</span>
	</header>
<h1>Cart Items</h1>
	<h3>Here are the items you have added to your cart:</h3>
	
	<table>
			<thead>
				<tr>
					<th>Item in Cart</th><th>Quantity in Cart</th><th>Unit Price</th><th>Cart Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cartItem" items="${citems}">
				<tr>
					<td>${cartItem.item.name}</td>
					<td>${cartItem.cartQuantity}</td>
					<td>${cartItem.item.price}</td>
					<td><fmt:formatNumber value="${cartItem.item.price * cartItem.cartQuantity}" type="currency" /></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/" >Go Home</a>
</body>
</html>