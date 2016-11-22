<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product-SKart.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link href="resources/Styles/bootstrap.css" rel="stylesheet">
<script src="resources/Scripts/ajaxjquery.js"></script>
<script src="resources/Scripts/jquery-3.0.0.js"></script>
 <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="resources/Scripts/bootstrap.min.js" ></script>
<link href="resources/Styles/carousel.css" rel="stylesheet">
<link href="resources/Styles/navbar.css" rel="stylesheet">
<link href="resources/Styles/navbar-bottom.css" rel="stylesheet">
<link href="resources/bootstrap-theme.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/960.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/reset.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/text.css"/>">
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 500%;
      margin: auto;
}
</style>
</head>
<body>
<jsp:include page="navbar-admin.jsp"></jsp:include>
<div class="jumbotron">
<div class="row">
<div class="col-md-4">
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-xs-3 col-sm-3 col-md-3">
      <center>
        <h3>Add a Product</h3>
      <br>
      <form:form action="productadd" commandName="product" enctype="multipart/form-data">

	<c:if test="${!empty product.product_id}">
		<form:input path="product_id" cssClass="form-control" value="${product.product_id}" readonly="true"/>
	</c:if>
	<c:if test="${empty product.product_id}">
		<form:input path="product_id" cssClass="form-control" placeholder="product ID" />
	</c:if>
	<div class="form-group">
	<label for="product_id">Name</label>
	<form:input path="product_name" cssClass="form-control" placeholder="product name" value="${product.product_name}"/>
	</div>
	<div class="form-group">
	<label for="product_name">Description</label>
	<form:input path="product_description" cssClass="form-control" placeholder=" product_description" value="${product.product_description}"/>
	</div>
	<div class="form-group">
	<label for="int">Size</label>
	<form:input path="size" cssClass="form-control" placeholder="product size" value="${product.size}"/>
	</div>
	<div class="form-group">
	<label for="int">Price</label>
	<form:input path="product_price" cssClass="form-control" placeholder="product price" value="${product.product_price}"/>
	</div>
	<div class="form-group">
	<label for="int">Stock</label>
	<form:input path="product_stock" cssClass="form-control" placeholder="product stock" value="${product.product_stock}"/>
	</div>
	<div class="form-group">
	<label for="ID">Supplier</label>
	<form:select path="supplier.supplier_name" cssClass="form-control" items="${supplierList}" itemLabel="supplier_name" itemValue="supplier_name"></form:select>
	</div>
	<div class="form-group">
	<label for="ID">Category</label>
	<form:select path="category.category_name" cssClass="form-control" items="${categoryList}" itemLabel="category_name" itemValue="category_name"></form:select>
       </div>
       <form:input type="file" value="${product.image}" path="image" required="true"/> 

<%--         <form:label path="image"><spring:message text="image"/></form:label>
      <form:input type="file" path="image"/>
 --%> 
 <center>
	<c:if test="${!empty product.product_name}">
		<input type="submit" value="Edit Product" class="btn btn-warning">
	</c:if>
	<c:if test="${empty product.product_name}">
		<input type="submit" value="ADD Product" class="btn btn-success">
	</c:if>
	</center>
 </form:form> 
 </center>
 </div>
 </div>
 <br>
 <center>
 <div class="row">
 <div class="col-sm-8">
 <a href="productdetail-${product.product_id}" class="btn btn-success">Show Products</a>
 		<!-- <input type="submit" value="Show Product" class="btn btn-success">  -->   
 </div>
 </div>
 </center>
 
         <center>
          <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">
              <h3>Product List</h3>
            </div>
          </center>
  <br>
  <br>
   <div class="container">
    <div class="row">
<div id="product" div class="table-responsive">
      <table class="table  table-hover table-striped
      table-bordered">
      <thead>
        <tr class="warning">
          <th>Product Id</th>
          <th>Name</th>
          <th>Description</th>
          <th>Price</th>
          <th>Stock</th>
          <th>Image</th>
          <th>Category</th>
          <th>Supplier</th>
          <th>EDIT</th>
          <th>DELETE</th>
          </tr>
          </thead>
          <tbody>
          <c:if test="${!empty productList}">
          <c:forEach items="${productList}" var="plist">
        <tr class="danger">
          <td>${plist.product_id}</td>
          <td>${plist.product_name}</td>
          <td>${plist.product_description}</td>
          <td>${plist.product_price}</td>
          <td>${plist.product_stock}</td>
          <%-- <td><img src="<c:url value="/resources/image/${plist.product_id}.jpg"/>"></td> --%>
          <td><img src="resources/image/${plist.product_id}.jpg" style="width: 100px; height: 150px;"></td>
          <td>${plist.category.category_name}</td>
          <td>${plist.supplier.supplier_name}</td>
          <td><a href="<c:url value='productedit-${plist.product_id}' />"><button type="button" class="btn btn-primary">EDIT</button></a></td>
          <td><a href="<c:url value='productdelete-${plist.product_id}'/>"><button type="button" class="btn btn-danger">DELETE</button></a></td>
        </tr>
        </c:forEach>
        </c:if>
        </tbody>
        </table>
  </div>
  </div>
  </div>
  <br>
  <br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>