<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping:Shop Online for Best Products-SKart.in</title>
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
  <link href="resources/Styles/video.css" rel="stylesheet"> 
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 500%;
      margin: auto;
}
</style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container-fluid" style="padding:0px;">
		<div class="video-container" >
			<video autoplay="true" muted loop preload="true" class="bg-video">
				<source src="<c:url value="resources/videos/shop.mp4"/>" type="video/mp4">
			</video>
		</div>	
	</div>
	<div class="container-fluid video-label">
		<div class="row text-center">
			<h1>ShoppingCart</h1>
		</div>
	</div>
<div class="container" style="background: white;">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3"></li>
<li data-target="#mycorousel" data-slide-to="4"></li>
<li data-target="#mycorousel" data-slide-to="5"></li>
<li data-target="#mycorousel" data-slide-to="6"></li>
<li data-target="#mycorousel" data-slide-to="7"></li>
<li data-target="#mycorousel" data-slide-to="8"></li>
<li data-target="#mycorousel" data-slide-to="9"></li>
<li data-target="#mycorousel" data-slide-to="10"></li>
<li data-target="#mycorousel" data-slide-to="11"></li>
</ol>
<!-- Wrapper for slides -->
<div class="carousel-inner" role="listbox">
<div class="item active">
<!-- Set the first background image using inline CSS below  -->
<img src="resources/images/b20.jpg" alt="b20" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/b22.jpg" alt="b22" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/b23.jpg" alt="b23" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/b24.jpg" alt="b24" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/b25.jpg" alt="b25" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/b26.jpg" alt="b26" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/fn1.jpg" alt="fn1" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/l2.jpg" alt="l2" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/mm1.jpeg" alt="mm1" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/sb12.jpg" alt="sb12" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/sb13.jpg" alt="sb13" width="600" height="345">
</div>

<div class="item">
<img src="resources/images/ws19.jpg" alt="ws19" width="600" height="345">
</div>
<div class="item">
<img src="resources/images/ws20.jpg" alt="ws20" width="600" height="345">
</div>
<!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>
</div>
</div>	
	<div class="container-fluid pro-container">
		<div class="row" style="margin-top: 50px;">
  			<div class="col-sm-10 col-sm-offset-1 text-center">
  				<h1 class="">Shop all new Products in ShoppingCart</h1>
          		<hr>
  			</div>
  		</div> <!-- /.row of pro-container -->

  		
  		  	<!-- Page Content -->
  	<div class="container">
  		<div class="row label-row">
  			<div class="col-sm-10 col-sm-offset-1 text-center">
  				<h1 class="">NEW ARRIVALS</h1>
          		<hr>
  			</div>
  		</div>
  		<div class="row new-pro-row">
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb1">
			        <img class="img-responsive" src="resources/images/m14.jpg" alt="">
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> 2500</h2>
			           <a class="info" href="fashion">Fashion</a>
			        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb2">
			        <img class="img-responsive" src="resources/images/ms2.jpg" alt="">
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> 32000</h2>
			           <a class="info" href="electronics">Electronics</a>
			        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb3">
			        <img class="img-responsive" src="resources/images/sb9.jpg" alt="">
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> 1000</h2>
			           <a class="info" href="shoes">Shoes</a>
			        </div>
    			</div>
  			</div>
  			  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb3">
			        <img class="img-responsive" src="resources/images/b5.jpg" alt="">
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> 1000</h2>
			           <a class="info" href="bags">Bags</a>
			        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/ws15.jpg" alt="">
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> 3000</h2>
			           <a class="info" href="watches">Watches</a>
			        </div>
    			</div>
  			</div>
  			<div class="col-lg-3 col-md-4 col-xs-6">
  				<div class="hovereffect thumbnail thumb4">
			        <img class="img-responsive" src="resources/images/canon3.jpg" alt="">
			        <div class="overlay">
			           <h2><i class="fa fa-inr" aria-hidden="true"></i> 15000</h2>
			           <a class="info" href="Cameras">Cameras</a>
			        </div>
    			</div>
  			</div>
  		</div>
  		<!-- /.row -->
  	</div>
  	<!-- /.container -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="page-header" id="shoes">
					<h3>Products</h3>
				</div>
			</div>
		</div>
		<div class="row">
	
		<div class="col-md-3"></div>
			<div class="col-md-6">
			
				<div class="row">
				
				<c:if test="${!empty hproList}">
		
					<c:forEach items="${hproList}" var="homeproductList">	
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="Bootstrap Thumbnail First"
								src="resources/image/${homeproductList.product_id}.jpg" />
							<div class="caption">
								<h3>${homeproductList.product_name}</h3>
								<h7>${homeproductList.product_description}</h7>
								<h5>Rs ${homeproductList.product_price}</h5>
								<p>
									<a class="btn btn-primary" href="<c:url value='homepro${homeproductList.product_id}'/>">More</a> <a
										class="btn" href="payment">Buy now</a>
								</p>
							</div>

						</div>
					</div>
					</c:forEach>
				
				</c:if>		
</div>
</div>
</div>
</div>

				<c:if test="${displayCart==true}">

					<table>
						<tr>
							<th align="left" width="80">Cart ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Quantity</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="60">Delete from Cart</th>

						</tr>
						<c:forEach items="${cartList}" var="cart">
							<tr>
								<td align="left">${cart.id}</td>
								<td align="left">${cart.productName}</td>
								<td align="left">${cart.quantity}</td>
								<td align="left">${cart.price}</td>
								<td align="left"><a
									href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
								<td align="left"><a href="<c:url value='pay/${cart.id}' />">
										Proceed</a></td>
							</tr>
						</c:forEach>

					</table>

					<h2>Total cost : ${totalAmount}</h2>
					<a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a> 
					<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a>
				</c:if>

			</div> 
		<h4 style="color: yellow;">${message }</h4>
		<c:if test="${not empty cartSize }">
		<a href="myCart">My Cart(${ cartSize})</a>
		</c:if>
		<c:if test="${loggedOut==true }">
		<h4 style="color: yellow;">${logoutMessage }</h4> 
</c:if>
<br>
<h2>ABOUT US</h2>
<p>At SKart, our vision is to be Earth's most customer centric company; to build a place where people can come to find and discover virtually anything they want to buy online.</p>
<p>With <a href="home.html"alt="">SKart.in</a>, we endeavour to build that same destination in India by giving customers more of what they want – vast selection, low prices, fast and reliable delivery, and a trusted and convenient online shopping experience – and provide sellers a world-class e-commerce platform.</p>
<p>We are committed to ensure <a href="100%purchaseprotection.html"alt="">100% Purchase Protection</a> for your shopping done on <a href="home.html"alt="">SKart.in</a> so that you can benefit from a safe and secure online ordering experience, convenient payment options such as cash on delivery, easy returns and enjoy a completely hassle free online shopping experience.</p>
<p>We launched with Books and Movies & TV Shows and have expanded our offerings to include the Kindle family of E-Readers, the Amazon Fashion Store and various products under different categories.</p>
<p>Customers can now buy products from popular brands across categories such as Samsung mobiles, Dell laptops, Canon cameras, Fastrack watches and many more at <a href="home.html"alt="">SKart.in</a>.
<p>Don’t forget to shop for Today's Deals on SKart and save big every day.</p>
<p>On SKart shopping is not only about buying, it's also about gifting and through Gift A Smile you can give products online to charity through verified NGOs.</p>
<p>It is still “Day 1” and we will relentlessly focus on expanding selection and raising the bar for customer experience and online shopping in India.</p>
<p>Customers can also shop our full selection of products using the <a href="skartapp.html"alt="">SKart App for Android, iOS and Windows</a> which offers customers a convenient, fast and secure way to search, browse, compare offers, and shop online quickly and easily, at anytime from anywhere.</p>
<br>
<h2>Popular searches on <a href="homepage"alt="">SKart.in</a></h2>


<div id="admin">
<div id="categories">
  <c:if test="${isAdminClickedCategories==true}">
     <jsp:include page="/views/AdminHome.jsp"></jsp:include>
     <jsp:include page="/views/managecategories.jsp"></jsp:include>
</c:if>
</div>

<div id="products">
<c:if test="${isAdminClickedProducts==true}">
<jsp:include page="/views/AdminHome.jsp"></jsp:include>
<jsp:include page="/views/manageproducts.jsp"></jsp:include>
</c:if>
</div>

<div id="suppliers">
<c:if test="${isAdminClickedSuppliers==true}">
<jsp:include page="/views/AdminHome.jsp"></jsp:include>
<jsp:include page="/views/managesuppliers.jsp"></jsp:include>
</c:if>

</div>
</div>

<a href="product/add">Product</a>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>