<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping:Shop Online for Best Products-SKart.in</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link href="resources/Styles/bootstrap.css" rel="stylesheet">
<script src="resources/Scripts/ajaxjquery.js"></script>
<script src="resources/Scripts/jquery-3.0.0.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="resources/Scripts/bootstrap.min.js"></script>
<link href="resources/Styles/carousel.css" rel="stylesheet">
<link href="resources/Styles/navbar.css" rel="stylesheet">
<link href="resources/Styles/navbar-bottom.css" rel="stylesheet">
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 500%;
	margin: auto;
}
</style>
</head>
<body ng-app="mainApp">
	<nav class="navbar navbar-default-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="homepage"><img
				src="resources/images/logo1.png" id="logo1"></a></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">ShopByCategory<span class="caret"></span></a>
					<ul class="dropdown-menu">

						<c:if test="${!empty hcatlist}"></c:if>
						<c:forEach items="${hcatlist}" var="homecatlist">
							<li><a href="category${homecatlist.category_id}">${homecatlist.category_name}</a></li>
						</c:forEach>

					</ul></li>
			</ul>
			<form class="navbar-form navbar-left">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">
					<a href="#"></a>Submit</a>
				</button> 
				<!-- <input type="text" ng-model="searchBox">
				<div ng-controller="people">
				<ul>
				<li ng-repeat="person in persons | filter:searchBox">
				{{ person.Name + ' : '  + person.Address }}
				</li>
				</ul>
				</div> -->
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="homepage"><span
						class="glyphicon glyphicon-home" aria-hidden="true">Home</span></a></li>
				<c:if test="${pageContext.request.userPrincipal.name == 'ashwath'}">
					<li><a href="admin"><span class="glyphicon glyphicon-home"
							aria-hidden="true">Admin Home</span></a></li>
				</c:if>
				<!-- <li class="active"><a href="aboutus"><span
						class="glyphicon glyphicon-modal-window" aria-hidden="true">AboutUS</span></a></li>
						
 -->				
 		           <c:if test="${pageContext.request.userPrincipal.name  != null}">
 		           <li><a href="feedback"><span class="glyphicon glyphicon-user" aria-hidden="true">Feedback</span></a></li>
 		           </c:if>
 		          
 		           
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
			<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="<c:url value="/j_spring_security_logout"/>"><span
						class="glyphicon glyphicon-log-out" aria-hidden="true">Logout</span></a></li>
			</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  == null}">
				
					<li><a href="loginUser"><span
							class="glyphicon glyphicon-log-in" aria-hidden="true">Login</span></a></li>
					<li><a href="memberShip.obj"><span
							class="glyphicon glyphicon-log-out" aria-hidden="true">SignUp</span></a></li>
				</c:if>
					 <c:if test="${pageContext.request.userPrincipal.name != 'ashwath'}">
					 <c:if test="${pageContext.request.userPrincipal.name  != null}">
					 
				<li><a href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize}</li>
			</c:if>
			</c:if>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<%-- <nav class="navbar navbar-default-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="homepage">SKart.in</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="sell">Sell</a></li>
				<li><a href="customerservice">CustomerService</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">ShopbyCategory <span class="caret"></span></a>
					<ul class="dropdown-menu">

						<c:if test="${!empty hcatlist}"></c:if>
						<c:forEach items="${hcatlist}" var="homecatlist">
							<li><a href="#">${homecatlist.category_name}</a></li>
						</c:forEach>

					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Your Orders<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login"><button type="button"
									class="btn btn-default" data-toggle="tooltip"
									data-placement="bottom" title="Tooltip on bottom">YourOrders</button></a></li>
						<li><a href="youraccount">Your Account</a></li>
						<li><a href="wishlist">Your WishList</a></li>
						<li><a href="cart">Your Subscribe & Save items</a></li>
						<li><a href="memberShip.obj">Not User? SignOut</a></li>
					</ul></li>
				<li class="dropdown"><a href="wishlist"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">WishList <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="wishlist">Create a WishList</a></li>
						<li><a href="wishlist">Find a WishList</a></li>
						<li><a href="https://www.amazon.com/wishlist/universal">Wish
								From Any Website</a></li>
					</ul></li>
					
								<c:if test="${pageContext.request.userPrincipal.name != 'ashwath'}">
				<li><a href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize}</li>
			</c:if>
			
			 <c:if test="${pageContext.request.userPrincipal.name != 'ashwath'}">
				<li><a href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize}</li>
			</c:if>
 --%>			 
					
<!-- 				<li class="dropdown"><a class="navbar-brand" href="cart"><img
						src="resources/images/cart5.png" id="cart5"></a><a href="cart"
					aria-haspopup="true" aria-expanded="false"></a></li>
 -->			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>



</body>
</html>
