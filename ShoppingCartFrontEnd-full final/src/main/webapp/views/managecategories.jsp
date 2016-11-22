<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category-SKart.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link href="resources/Styles/bootstrap.css" rel="stylesheet">
<script src="resources/Scripts/ajaxjquery.js"></script>
<script src="resources/Scripts/jquery-3.0.0.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="resources/Scripts/bootstrap.min.js"></script>
<link href="resources/Styles/carousel.css" rel="stylesheet">
<link href="resources/Styles/navbar.css" rel="stylesheet">
<link href="resources/Styles/navbar-bottom.css" rel="stylesheet">
<link href="resources/Style.css" rel="stylesheet">
<link href="resources/bootstrap-theme.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/960.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/reset.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/text.css"/>">
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
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
<h3>Add a Category</h3>
<br>
<form:form action="addcategory" commandName="categorypage">
	<div class="form-group">
	<label for="category_id">ID</label>
	<c:if test="${!empty category.category_id}">
		<form:input path="category_id" value="${category.category_id}" readonly="true"/>
	</c:if>
	<c:if test="${empty category.category_id}">
		<form:input path="category_id" placeholder="category id"/>
	</c:if>
	</div>
	<div class="form-group">
	<label for="category_name">Name</label>
	<form:input path="category_name" cssClass="form-control" value="${category.category_name}" placeholder="category name"/>
	</div>
	<div class="form-group">
	<label for="category_description">Description</label>
	<form:input path="category_description" cssClass="form-control" value="${category.category_description}" placeholder="category description"/>
	</div>
	<br>
	<br>
	<center>
	<c:if test="${!empty category.category_name}">
		<button type="submit" class="btn btn-warning">EDIT</button> <!-- value="Edit category" --> 
	</c:if>
	<c:if test="${empty category.category_name}">
		<button type="submit" class="btn btn-success">ADD</button> <!-- value="Add category"> --> 
	</c:if>
	</form:form>
				<h2>Category List</h2>
	
				<br>
				<div class="row">
      <div class="col-md-12">
        <table class="table">
          <thead>
				<div id="category" div class="table-responsive">
				<table
					class="table  table-hover table-striped
      table-bordered">
					<thead>
						<tr class="warning">
							<th>Category Id</th>
							<th>Name</th>
							<th>Description</th>
							<th>EDIT</th>
							<th>DELETE</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${!empty categoryList}">
						<c:forEach items="${categoryList}" var="clist">
							<tr class="danger">
								<td>${clist.category_id}</td>
								<td>${clist.category_name}</td>
								<td>${clist.category_description}</td>	
<td><a href="categoryedit-${clist.category_id}"><button type="button" class="btn btn-primary">EDIT</button></a></td>
<td><a href="categorydelete-${clist.category_id}"><button type="button" class="btn btn-danger">DELETE</button></a></td>
							</tr>
						</c:forEach>
					</c:if>
					</tbody>
				</table>
			</div>
		</div>
		</div>
		</div>
		</div>
		</div>
	<br>
	<br>

	 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>