<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<jsp:include page="navbar-admin.jsp"></jsp:include>

<div id="AdminHome">
<br>
<br>
<h1>Admin Actions</h1>
<br>
<br>
<br>
<a href="managecategories">Manage Categories</a> &nbsp; &nbsp;
<a href="managesuppliers">Manage Suppliers</a>  &nbsp; &nbsp;
<a href="manageproducts">Manage Products</a>   &nbsp; &nbsp;
<a href="adminfeedback">Admin-FeedBack</a>     &nbsp; &nbsp;
</div>
<br>
<br/>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>