<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin-SKart.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/Styles/bootstrap.css" rel="stylesheet">
<script src="resources/Scripts/ajaxjquery.js"></script>
<script src="resources/Scripts/jquery-3.0.0.js"></script>
<script src="resources/Scripts/bootstrap.min.js" ></script>
<link href="resources/Styles/carousel.css" rel="stylesheet">
<link href="resources/Styles/navbar.css" rel="stylesheet">
<link href="resources/Styles/navbar-bottom.css" rel="stylesheet">
<link href="resources/Styles/navbar-bottom navbar-default.css" rel="stylesheet">

</head>
<body>

<nav class="navbar navbar-default-fixed-top">
<div class="container-fluid">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="homepage"><img src="resources/images/logo1.png" id="logo1"></a></a>
</div>
<form class="navbar-form navbar-left">
<div class="form-group">
<input type="text" class="form-control" placeholder="Search">
</div>
<button type="submit" class="btn btn-default"><a href="#"></a>Submit</a></button>
</form>
<c:if test="${pageContext.request.userPrincipal.name  != null}">
					<li><a href="<c:url value="/j_spring_security_logout"/>"><span
						class="glyphicon glyphicon-log-in" aria-hidden="true">Logout</span></a></li>
				</c:if>

<!-- </div> --><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->
</nav>

</body>
</html>