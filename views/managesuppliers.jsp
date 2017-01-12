<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier-SKart.in</title>
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
<link href="resources/Style.css" rel="stylesheet">
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
  		<div class="col-md-4">
  			<center>
         <h3>
    					Add a Supplier
    				</h3>
    				</center>
    				
 
 <form:form action="addsupplier" commandName="supplierpage">
	<div class="form-group">
   <label for="supplier_id">Id</label>
	<c:if test="${!empty supplier.supplier_id}">
		<form:input path="supplier_id" cssClass="form-control" value="${supplier.supplier_id}" readonly="true"/>
	</c:if>
	<c:if test="${empty supplier.supplier_id}">
		<form:input path="supplier_id" cssClass="form-control" placeholder="supplier id"/>
	</c:if>
	</div>
	<div class="form-group">
 <label for="name">Name</label>
	<form:input path="supplier_name" cssClass="form-control" value="${supplier.supplier_name}" placeholder="supplier name" />
	</div>
	<div class="form-group">
 <label for="address">Address</label>
	<form:input path="supplier_address" cssClass="form-control" value="${supplier.supplier_address}" placeholder="supplier address" />
	</div>
	<center>
	<c:if test="${!empty supplier.supplier_name}">
		<button type="submit" class="btn btn-primary">EDIT</button> 
	</c:if>
	<c:if test="${empty supplier.supplier_name}">
		<button type="submit" class="btn btn-info">ADD</button> 
	</c:if>
	</center>
</form:form>
 <div class="col-md-4">
  		</div>
  	</div>
  </div>
 
   <center>  
          <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">
              <h3>Supplier List</h3>
            </div>
          </center>

  <br>
  <br>
  
  <div class="row">
      <div class="col-md-12">
        <table class="table">
          <thead>
<div class="supplier" div class="table-responsive">
      <table class="table  table-hover table-striped
      table-bordered">
      <thead>
        <tr class="warning">
          <th>Supplier Id</th>
          <th>Name</th>
          <th>Address</th>
          <th>EDIT</th>
          <th>DELETE</th>
          </tr>
          </thead>
          <tbody>
          <c:if test="${!empty supplierList}">
          <c:forEach items="${supplierList}" var="slist">
        <tr class="danger">
          <td>${slist.supplier_id}</td>
          <td>${slist.supplier_name}</td>
          <td>${slist.supplier_address}</td>
          <td><a href="supplieredit-${slist.supplier_id}"><button type="button" class="btn btn-primary">EDIT</button></a></td>
          <td><a href="supplierdelete-${slist.supplier_id}"><button type="button" class="btn btn-danger">DELETE</button></a></td>
          </tr>
        </c:forEach>
        </c:if>
        </tbody>
  </table>
  </div>
  </div>
  </div>
  </div>
  <br>
  <br>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>