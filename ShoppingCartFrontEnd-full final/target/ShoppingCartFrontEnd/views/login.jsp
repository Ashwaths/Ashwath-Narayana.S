<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping:Shop Online for Best Mobiles-Log-In</title>
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
<link href="resources/Styles/font-awesome/css/font-awesome.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body{ 
background-image: url(resources/images/wp1.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 }
 </style> -->
</head>

<body>


<jsp:include page="navbar.jsp"></jsp:include>
  
  <div class="container" style="width: 550px; height: 300px;">
      <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12">
            <center>
                  <h1>LOG-IN</h1>
             </center>
             
      <form name="loginForm" action="<c:url value='j_spring_security_check' />" method="post">  
       <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="span9 center">
                   	<c:if test="${not empty msg}">
                 		<div class="msg">${msg} <br><br></div>
            		</c:if>
            		
            		 <div class="form-group">		
					 <label for="inputEmail3" class="col-sm-2 control-label">UserName</label>
			<div class="col-sm-10">
                	<input type="text" placeholder="Username" name="username" class="login-input"/></div></div>
                	<br>
                	<br>
                	
                	<div class="form-group">
			 <label for="inputPassword3" class="col-sm-2 control-label">Password</label>		 	 
		<div class="col-sm-10">
					<input type="password" placeholder="Password"  name="password" class="login-input"/></div></div>
					<br>
                	<br>
                	
                	<div class="form-group">
		 <div class="col-sm-1"></div>
		 <div class="col-sm-10">
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				LOG IN</button>			
		</div></div>
					
					<!-- <div class="span8 center">
					<br>
                		<button type="submit" class="login-btn"><h8>login</h8></button>

					</div> -->
				</div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
      
      
            <%--    <form:form action="userlogin" commandName="adduser"  method="POST">
            
            <div class="form-group">		
					 <label for="inputEmail3" class="col-sm-2 control-label">UserName</label>
			<div class="col-sm-10">
				<form:input path="name" cssClass="form-control" placeholder="User Name" required="true" />

			</div></div><br><br><br>
			
			<div class="form-group">
			 <label for="inputPassword3" class="col-sm-2 control-label">Password</label>		 	 
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-control" placeholder="Password" required="true" />

		</div></div><br><br>
		
		<div class="form-group">
		 <div class="col-sm-1"></div>
		 <div class="col-sm-10">
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				LOG IN</button>			
		</div></div>
	 
		</form:form> --%>
		
		<br>
  <br>
  
  
    <div class="form-group">
      <div class="col-sm-offset-3 col-sm-10">
        <border style="border-top: 2px solid#888; padding-top:15px; font-size:100%">
          <h4>Don't Have an Account? <a href="memberShip.obj">Sign Up Here</h4>

          </a>
        </div>
      </div></div></div></div>
 

</body>
</html>