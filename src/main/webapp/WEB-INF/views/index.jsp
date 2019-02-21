<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<h1> Welcome to the Coffee Shop Supply Depot!</h1>
	
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
					<th class ="itemtable">Name of Item</th><th>Description</th><th>Quantity</th><th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
				<tr>
					<td class ="itemtable">${item.name}</td>
					<td class ="itemtable">${item.description}</td>
					<td class ="itemtable">${item.quantity}</td>
					<td class ="itemtable">$${item.price}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
</div>

<p> 
<input type = button onclick="location.href='/items'" value='Administrators Enter Here'>
<p>
<img id="sipping" src="images/SippingTeaColbertStewart.gif">
<img id="coffeesupplies" src="images/coffeesupplies.jpg">
<img id="nostarbucks" src="images/nostarbucks.jpg">
</p>

<p>Disclaimer: Stewart and Colbert have not endorsed these products. </p>
</body>
</html>