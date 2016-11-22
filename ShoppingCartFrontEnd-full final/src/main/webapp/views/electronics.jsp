<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Electronics-SKart.in</title>
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
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container-fluid" style="padding:0px;">
		<div class="video-container" >
			<video autoplay="true" muted loop preload="true" class="bg-video">
				<source src="<c:url value="resources/videos/mobiles.mp4"/>" type="video/mp4">
			</video>
		</div>	
	</div>
	<div class="container-fluid video-label">
		<div class="row text-center">
			<h1>ShoppingCart</h1>
		</div>
	</div>

<%-- <c:forEach items="productList" var="plist">
         <div class="row">
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail">
			        <img class="img-responsive" src="resources/images/${plist.product_id}.jpg" >
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> ${plist.product_price}</h2>
			 <!--           <a class="info" href="#">More</a> -->
			        </div>
    			</div>
  			</div>
 --%>               

<%-- 
  		<div class="row">
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail">
			        <img class="img-responsive" src="resources/images/${plist.product_id}.jpg" >
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> ${plist.product_price}</h2>
<!-- 			           <a class="info" href="#">More</a>
 -->			        </div>
    			</div>
  			</div>

               


  		<div class="row">
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail">
			        <img class="img-responsive" src="resources/images/${plist.product_id}.jpg" >
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> ${plist.product_price}</h2>
			           <!-- <a class="info" href="#">More</a> -->
			        </div>
    			</div>
  			</div>               

  		<div class="row">
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail">
			        <img class="img-responsive" src="resources/images/${plist.product_id}.jpg" >
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> ${plist.product_price}</h2>
			           <!-- <a class="info" href="#">More</a> -->
			        </div>
    			</div>
  			</div>
</div>
</div>
</div>
</div>
</c:forEach>
 --%>
 
<!--  <div class="container-fluid video-label">
		<div class="row text-center">
			<h1>ShoppingCart</h1>
		</div>
	</div>
 -->
  		<div class="row new-pro-row">
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb1">
			        <img class="img-responsive" src="resources/images/aa1.jpg" alt="">
			        <div class="overlay">
		<!-- 	           <h2><i class="fa fa-inr" aria-hidden="true"></i> 2500</h2>
		 -->	          <!--  <a class="info" href="#">More</a> -->
			        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb2">
			        <img class="img-responsive" src="resources/images/ac1.jpg" alt="">
			        <div class="overlay">
	<!-- 		           <h2><i class="fa fa-inr" aria-hidden="true"></i> 1200</h2>
			           <a class="info" href="#">More</a>
 -->			        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb3">
			        <img class="img-responsive" src="resources/images/d1.jpg" alt="">
			        <div class="overlay">
	<!-- 		           <h2><i class="fa fa-inr" aria-hidden="true"></i> 1000</h2>
			           <a class="info" href="#">More</a>
	 -->		        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb3">
			        <img class="img-responsive" src="resources/images/fu1.jpg" alt="">
			        <div class="overlay">
		<!-- 	           <h2><i class="fa fa-inr" aria-hidden="true"></i> 1000</h2>
			           <a class="info" href="#">More</a>
		 -->	        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/ge1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/hp1.jpg" alt="">
			        <div class="overlay">
			    <!--        <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			     -->    </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/ja1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/l1.png" alt="">
			        <div class="overlay">
		<!-- 	           <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
		 -->	        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/lf1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/lg1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/mk1.jpg" alt="">
			        <div class="overlay">
		<!-- 	           <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
		 -->	        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/ms1.jpg" alt="">
			        <div class="overlay">
		<!-- 	           <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
		 -->	        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/ms2.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/ms3.png" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div><div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/ms4.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div><div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/mt1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div><div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/s1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/sg1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div><div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/xp1.jpg" alt="">
			        <div class="overlay">
			<!--            <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="#">More</a>
			 -->        </div>
    			</div>
  			</div>
  		</div>
  		<!-- /.row -->
  	</div>


 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>