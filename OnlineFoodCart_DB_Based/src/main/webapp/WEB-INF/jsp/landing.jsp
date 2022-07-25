<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
   
       
    <%@include file="common.jsp" %>
    
  <!DOCTYPE html>
<html lang="en">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link
	href="https://fonts.googleapis.com/css2?
	family=Ubuntu+Mono&display=swap"
	rel="stylesheet">	
</head>

<body>
<h1 style="text-align:center;">Products</h1>
<center>
	 <td><img src="${pageContext.request.contextPath}/resources/image/logo.jpg" height="50" width="50"/></td> 
</center>	
<br>
	<div id="container1">
		<div id="row1">
			Welcome to Online FoodShop
		</div>
		<button class="btn">ORDER NOW</button>
		<div id="container3">
			<div id="row2">
				<button class="btn">Prices</button>
			</div>
			<div id="row3">
				<button class="btn">Specials</button>
			</div>
		</div>
	</div>
	<hr>
	<h1 id="top3">Featured Products</h1>
	<div id="container4">
		<div id="row4">
			<button class="btn">ORDER NOW</button>
		</div>
		<div id="row5">
			<button class="btn">ORDER NOW</button>
		</div>
		<div id="row6">
			<button class="btn">ORDER NOW</button>
		</div>
	</div>
	<footer>Copyright © 2020-2021 OnlineFoodShop.
		All Rights are reserved</footer>
</body>
</html>
