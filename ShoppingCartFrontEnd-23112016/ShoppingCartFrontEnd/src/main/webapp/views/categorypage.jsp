<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<div class="col-md-12">
				<div class="page-header" id="shoes">
					<h3>Products</h3>
				</div>
			</div>
		</div>
		<div class="row">
	
		<div class="col-md-3"></div>
			<div class="col-md-6">
			
				<div class="row">
				
				<c:if test="${!empty caprolists}">
		
					<c:forEach items="${caprolists}" var="categoryproductList">	
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="Bootstrap Thumbnail First"
								src="resources/image/${categoryproductList.product_id}.jpg" />
							<div class="caption">
								<h3>${categoryproductList.product_name}</h3>
								<h7>${categoryproductList.product_description}</h7>
								<h5>Rs ${categoryproductList.product_price}</h5>
								<p>
								<c:choose>
								<c:when test="${pageContext.request.userPrincipal.name == null}">
									<a class="btn btn-primary" href="loginUser">Add to Cart</a> 
									</c:when>
									<c:otherwise>
									<a class="btn btn-primary" href="<c:url value='cart/add/${categoryproductList.product_id}'/>">Add to Cart</a> 
									</c:otherwise>
									</c:choose>
									<c:choose>
									<c:when test="${pageContext.request.userPrincipal.name == null}">
									<a
										class="btn" href="loginUser">Buy now</a>
										</c:when>
										<c:otherwise>
										<a
										class="btn" href="payment">Buy now</a>
										</c:otherwise>
										</c:choose>
								</p>
							</div>

						</div>
					</div>
					</c:forEach>
				
				</c:if>		
</div>
</div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>