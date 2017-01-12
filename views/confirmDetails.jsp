<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<style>
 th{
    color: light blue;
    backgr	ound-color: #9ACD32;
}

 body{ 
background-image: url(resources/images/wp1.jpg); 
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
      <li><a href="homepage"><span class="glyphicon glyphicon-home"></span></a></li>
     
     </ul>
      
      
  </div>
</nav>

 <img style="display:block; position: relative; margin:auto" src="resources\images\r12.png" />
    <!-- a bunch of tables and stuff that doesn't have a conveniently fixed size  -->
</div>
<h2><center>CONFIRM DETAILS</center></h2>
		<br>
		<br>
		<div class="container-fluid">
	
<div class="col-md-2">
  <div class="row-fluid">
		<fieldset>
			
			<sf:form modelAttribute="userDetails">
<%-- 				<sf:label path="id">User ID :</sf:label>    ${userDetails.id}
 --%>					<br />
				<br />
				<sf:label path="name"> User Name:</sf:label> ${userDetails.name}
					<br />
				<br />
				<sf:label path="password">Password :</sf:label> ${userDetails.password}
				<br>
					<br>
                <sf:label path="email">Email:</sf:label> ${userDetails.email}
					<br />
				<br />
				<sf:label path="mob_no">Mobile #:</sf:label> ${userDetails.mob_no}
					<br />
				<br />
				<sf:label path="address">Address :</sf:label> ${userDetails.address}
					<br />
				<br />
				<input name="_eventId_edit" type="submit"  class="btn btn-primary" value="Edit" />
				<input name="_eventId_submit" type="submit" class="btn btn-success" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
	</div>
	</div>
</body>
</html>