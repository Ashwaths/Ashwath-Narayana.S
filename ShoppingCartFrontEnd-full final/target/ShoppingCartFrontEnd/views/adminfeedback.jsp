<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin-FeedBack</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/Styles/bootstrap.css" rel="stylesheet">
<script src="resources/Scripts/ajaxjquery.js"></script>
<script src="resources/Scripts/jquery-3.0.0.js"></script>
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
     
     			<h2>FeedBack List</h2>
	
				<br>
        		<div id="feedback" div class="table-responsive">
				<table
					class="table  table-hover table-striped
      table-bordered">
					<thead>
						<tr class="warning">
							<th>feed_name</th>
							<th>feed_email</th>
							<th>feed</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${!empty somefeedlist}">
						<c:forEach items="${somefeedlist}" var="flist">
							<tr class="danger">
								<td>${flist.feed_name}</td>
								<td>${flist.feed_email}</td>
								<td>${flist.feed}</td>	
							</tr>
						</c:forEach>
					</c:if>
					</tbody>
				</table>
			</div>
		<br>
		<br>
		<br>
		<br>
	 <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>