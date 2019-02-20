<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<h1> Welcome to the Coffee Shop Supply Depot!</h1>
	
<h3>
<p> Get your fix with our top of line coffee shop supplies from an independent, non-corporate coffee supplier.
</p>
<img id="sipping" src="images/SippingTeaColbertStewart.gif">
<img id="coffeesupplies" src="images/coffeesupplies.jpg">
<img id="nostarbucks" src="images/nostarbucks.jpg">

<p> Click below to register as a user so that you can buy the best coffee shop supplies available anywhere at an affordable price.</p>
<img id="thumbsup" src="images/thumbsup.svg.png">
<img id="deal" src="images/deal.jpg">
</h3>
<p> <a href="/user-registration-form" >Register as a user</a> </p>

<div>
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
</div>
<p> <a href="/items">Shop</a>



<p>Disclaimer: Stewart and Colbert have not endorsed these products. </p>
</body>
</html>