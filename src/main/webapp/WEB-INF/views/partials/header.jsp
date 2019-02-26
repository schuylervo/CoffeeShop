<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<a href="/">Home</a>
	
	<span>
	<c:choose>
		<c:when test="${ not empty profile }">
			Welcome ${ profile.firstName } ${ profile.lastName }
			<a href="/logout">Logout</a>
		</c:when>
		<c:otherwise>
			<a href="/login">Login</a>
			<a href="/user-registration-form">Sign Up</a>
		</c:otherwise>
	</c:choose>
	</span>
</header>