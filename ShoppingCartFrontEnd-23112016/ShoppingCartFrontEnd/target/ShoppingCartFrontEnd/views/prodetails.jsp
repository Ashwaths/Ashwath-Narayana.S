<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container-fluid">
<div class="row">
<c:if test="${!empty homecatpro}">
<div class="col-lg-6">
<div class="thumbnail">
<img src="resources/image/${homecatpro.product_id}.jpg">
</div>
</div>

<div class="col-lg-6">
<h2>${homecatpro.product_name}</h2>
<h2>${homecatpro.product_description}</h2>
<h2>${homecatpro.product_price}</h2>
<p>

	<a class="btn btn-primary" href="cart/add/${homecatpro.product_id}">Add to Cart</a> <a
		class="btn" href="payment">Buy now</a>
								
	</p>
</div>
</c:if>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>