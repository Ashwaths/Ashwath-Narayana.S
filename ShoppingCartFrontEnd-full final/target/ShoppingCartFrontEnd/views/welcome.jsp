<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<title>Welcome Page</title>
<style>
body{ 
background-image: url(resources/images/we.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 } 
 th{
    color:white;
    background-color: #cc0052;
    align:center;
}

table, th, td {
    border: 1px solid black;
    align:center;
}
.btn {
    background-color:#cc0052 ;
    }
h2{
color:#cc0052;
font-family: "Times New Roman", Times, serif;
}

h3{
color:#cc0052;
font-family: "Times New Roman", Times, serif;
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
      <li><a href="admin"><span class="glyphicon glyphicon-home"></span></a></li>
     
     </ul>
     <ul class="nav navbar-nav navbar-right">
     <li><a href="homepage"><span class="glyphicon glyphicon-user"></span> Sign out</a></li>
      
     </ul>
		
		
<h1>Welcome Thank You For Joining Us</h1>								
      
      
  </div>
</nav>





</body>
</html>