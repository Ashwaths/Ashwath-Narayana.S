<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FeedBack:SKart.in</title>
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
<link href="resources/Style/font-awesome/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
		<div class="row login-area">
			<div class="signin-page animated flipInY">
				<div class="signin-model">
					<h3 class="text-center">FEEDBACK</h3>
					
					<c:if test="${!empty feedsuccess}">
						<p class="signuperror">${feedsuccess}</p>
					</c:if>
					
					<form:form action="addfeedback" commandName="addfeed">
						<div class="form-group">
							<!-- <input type="email" placeholder="Email"> -->
							<form:input path="feed_name" placeholder="Username"/>
						</div>
						<div class="form-group">
							<!-- <input type="email" placeholder="Email"> -->
							<form:input path="feed_email" placeholder="Email"/>
						</div>
						<div class="form-group">
							<!-- <input type="password" placeholder="Password"> -->
							<form:textarea path="feed" placeholder="Comment/Query"/>
						</div>
						<input type="submit" value="SEND">
					</form:form>
					
				</div> <!-- /.signin-model -->
			</div> <!-- /.signin-page -->
		</div> <!-- /.row login-area -->
	</div> <!-- /.container -->



</body>
</html>