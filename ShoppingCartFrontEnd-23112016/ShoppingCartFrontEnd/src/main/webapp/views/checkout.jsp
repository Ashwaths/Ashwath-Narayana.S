<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page isELIgnored ="false" %>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cart</title>
<style>
 th{
    color:white;
    background-color:#d35400;
}

table, th, td {
    border: 1px solid black;
}
.btn {
    background-color:#d35400 ;
    }
.button {
    background-color:#d35400 ;
    }


h2{
color:#d35400;
font-family: "Times New Roman", Times, serif;
}
body{
background-image: url(resources/images/ch2.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
}


</style>
</head>

 <body style="background-color:white;">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >SKart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="homepage"><span class="glyphicon glyphicon-home"></span></a></li>
	 
     </ul>
     <ul class="nav navbar-nav navbar-right">
      
      <li class="divider-vertical"></li>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			
			
			
			<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
				<li><a href="<c:url value="/admin" />">View ALL</a></li>
			</c:if>
			
			<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
		</c:if>
								
		<c:if test="${pageContext.request.userPrincipal.name  == null}">
			<li><a href="<c:url value="/loginUser" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="<c:url value="memberShip.obj" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		</c:if>
  </div>
</nav>
 <div class="container-fluid">
	<h2><center>CART LIST</center></h2>
	<br>
	<br>
	<br>
	<c:if test="${!empty cartList}">
		<table class="table table-condensed" align="center">
			<tr>
				<th width="120" align="center">Product Name</th>
				<th width="120" align="center">Price</th>
				<!-- <th width="120" align="center">Image</th> -->
				<th width="60" align="center">Delete</th>
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
					<td align="center">${cart.productName}</td>
					<td align="center">${cart.price}</td>
<%-- 					<td align="center"><img alt="Bootstrap Thumbnail First"
					src="resources/image/${homeproductList.product_id}.jpg" /></td>
 --%>							
					<td width="120" align="center"><a href="<c:url value='cart/delete/${cart.id}' />"><button type="button" class="btn btn-info">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<c:if test="${pageContext.request.userPrincipal.name  != null}">
		<h2><center> Total:${sum}</center></h2>
		</c:if>
	</c:if>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div style="text-align: center;">
	<a href="payment"><button type="button" class="btn btn-success">Proceed to Pay</button>
	</h4></a>
	</div>
</body>
</html>

