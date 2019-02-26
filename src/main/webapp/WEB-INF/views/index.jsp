<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Schuyler's Coffee Shop Supply Depot</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<%@include file="partials/header.jsp" %>
	<h1> Welcome to Schuyler's Coffee Shop Supply Depot!</h1>
	
	<p class="message">${ message }</p>
<h3>
<p> Get your fix with our premium coffee shop supplies!
</p>

<p> Click below to register as a user so that you can buy the best coffee shop supplies available anywhere at an affordable price.</p>

</h3>
<p> 
<input type = button onclick="location.href='/user-registration-form'" value='Click here to register'>
</p>

<img id="thumbsup" src="images/thumbsup.svg.png">
<img id="deal" src="images/deal.jpg">

<p> Here is a list of the coffee shop supplies that are available to purchase: </p>

<div>

<table>
			<thead>
				<tr class ="itemtable">
					<th class ="itemtable">Name of Item</th><th>Description</th><th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
				<tr>
					<td class ="itemtable">${item.name} <a href='/add-to-cart?itemId=${item.id}'>Add to Cart</a></td>
					<td class ="itemtable">${item.description}</td>
					<td class ="itemtable"><fmt:formatNumber value="${item.price}" type="currency" /></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>

		
		<a href="/cart">Check Cart</a>
</div>

<p> 

<input type = button onclick="location.href='/items'" value='Administrators Enter Here'>
<p>
<img id="sipping" src="images/SippingTeaColbertStewart.gif">
<img id="coffeesupplies" src="images/coffeesupplies.jpg">
<img id="nostarbucks" src="images/nostarbucks.jpg">
</p>

<p>Disclaimer: Neither Stephen Colbert nor Jon Stewart have endorsed these products. </p>
</body>
</html>