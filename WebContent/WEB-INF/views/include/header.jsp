<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <base href="${pageContext.servletContext.contextPath}/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Store</title>
     <link href="<c:url value='css/bootstrap.min.css' />" rel="stylesheet">
     <link href="<c:url value='css/global.css' />" rel="stylesheet">
	<link href="<c:url value='css/index.css' />" rel="stylesheet">
	
	
	<link rel="stylesheet" type="text/css" href="<c:url value='css/font-awesome.min.css' />" />
	<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Saira+Stencil+One&display=swap" rel="stylesheet">
	<script src="<c:url value='js/jquery-2.1.1.min.js' />"></script>
	<script src="<c:url value='js/bootstrap.min.js' />"></script>
<!-- <script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script> -->

</head>

<body>
	<section id="header_top" class="clearfix">
		<div class="container">
			<div class="row">
				<div class="header_top_1 clearfix">
					<div class="col-sm-6">
						<div class="header_top_1_inner clearfix">
							<ul class="nav_1">
								<li class="tag_1">CONTACT US: 0123-456-789051234</li>
								<li class="dropdown tag_1"><a class="tag_menu" href="#"
									data-toggle="dropdown" role="button" aria-expanded="false">Language<span
										class="caret"></span></a>
									<ul class="dropdown-menu drop_1" role="menu">
										<li><a href="#">English</a></li>
										<li><a href="#"> American</a></li>
										<li><a href="#">Spanish</a></li>
										<li><a href="#">Hindi</a></li>
									</ul></li>
								<li class="dropdown tag_1 border_none_1"><a
									class="tag_menu" href="#" data-toggle="dropdown" role="button"
									aria-expanded="false">Currency<span class="caret"></span></a>
									<ul class="dropdown-menu drop_1" role="menu">
										<li><a href="#">Rupee</a></li>
										<li><a href="#">Euro</a></li>
									</ul></li>

							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="header_top_1_inner clearfix text-right">
							<ul class="nav_1">

								<!-- 	<li class="tag_1"><a class="tag_menu" href="#">Add To Cart</a></li> -->
								<c:if test="${sessionScope.account != null && sessionScope.account.type != 'admin'}">
									<li class="tag_1"><a class="tag_menu"
										href="account/profile.htm">My Profile</a></li>
									<li class="tag_1"><a href="cart/index.htm"><button
												type="button" class="btn btn-success position-relative">
												Giỏ hàng <span
													class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
													${user.carts.size()} </span>
											</button></a></li>
									<li class="tag_1 border_none_1"><a class="tag_menu"
										href="account/logout.htm">Logout</a></li>
								</c:if>


								<!-- <li class="tag_1 border_none_1"><a class="tag_menu" href="account/logout.htm">Logout</a></li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="header_middle" class="clearfix">
		<div class="container">
			<div class="row">
				<div class="header_middle_1 clearfix">
					<div class="col-sm-2">
						<div class="header_middle_1_left clearfix">
							<h3>
								<a href="home.htm">lovemyhouse</a>
							</h3>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="header_middle_1_middle clearfix">
							<div class="col-sm-4 space_right">
								<select class="form-control">
									<c:forEach var="f" items="${category}">
										<option>${f.categoryname}</option>
									</c:forEach>

								</select>
							</div>
							
							<div class="col-sm-8 space_left header_middle_1_middle_inner">
							<form method="get" action="product/index.htm?keyword=${keyword}">
								<div id="custom-search-input">
									<div class="input-group col-sm-12">
										<input type="text" class="  search-query form-control" value="${keyword}"
											placeholder="Enter Product"> <span
											class="input-group-btn">
											<button class="btn btn-danger" type="button">
												<span>SEARCH</span>
											</button>
										</span>
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="header_middle_1_right clearfix">
							<c:choose>
								<c:when test="${sessionScope.account == null}">
									<ul>
										<li class="dropdown tag_1 border_none_1">
						  <a class="tag_menu" href="#" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-shopping-cart"></i></a>
						  <ul class="dropdown-menu drop_1" role="menu">
							<li> No Products In Your Shopping Bag.</li>
						  </ul>
						</li>
										<li><i class="fa fa-user"></i></li>
										<li class="tag_2"><a href="account/signin.htm">Sign
												In</a> / <a href="account/register.htm">Sign Up</a><br> <a
											href="account/profile.htm">Welcome Client</a></li>
									</ul>
								</c:when>
								<c:when test="${sessionScope.account.type == 'admin'}">
									<a href="admin.htm" class="dropdown-item"><i
										class="fa fa-sliders"></i> Quản trị admin</a>
										<a class="tag_menu"
										href="account/logout.htm">Logout</a>
								</c:when>
								<c:otherwise>
									<ul>
										<li class="dropdown tag_1 border_none_1"><a
											class="tag_menu" href="order/index.htm"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-shopping-cart"></i></a>
											<ul class="dropdown-menu drop_1" role="menu">
												<li>No Products In Your Shopping Bag.</li>
											</ul></li>
										<li><i class="fa fa-user"></i></li>
										<li class="tag_2"><a href="account/profile.htm">Welcome
												${account.fullname}</a></li>
									</ul>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="header_main" class="clearfix">
		<nav class="navbar navbar-default cd-secondary-nav">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home.htm"> <span>M</span>STORE
					</a>
				</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown">
						  <a class="menu_tab menu_tab_1" href="#" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-list"></i> CATEGORIES<span class="caret"></span></a>
						  <ul class="dropdown-menu drop_2" role="menu">
						  <c:forEach var="f" items="${category}"><li><a href="./category/${f.categoryId}.htm">${f.categoryname}</a></li></c:forEach>
							<%-- <li><a href="#">${f.categoryname}</a></li>
							<li><a href="#">Rating</a></li>
							<li><a href="#">Latest</a></li>
							<li><a href="#">Price</a></li>
							<li><a href="#">Men</a></li>
							<li><a href="#">Women</a></li>
							<li><a href="#">Child</a></li>
							<li><a href="#">Fashion</a></li>
							<li><a href="#">Trending</a></li>
							<li><a href="#">Computers</a></li> --%>
						  </ul>
						</li>

						<li><a class="menu_tab active_tag" href="home.htm">Home</a></li>

						<li><a class="menu_tab" href="product/pro.htm">Product</a></li>


						<li><a class="menu_tab" href="about.htm">About Us</a></li>

						<li><a class="menu_tab" href="contact.htm">Contact</a></li>

						<li><a class="menu_tab" href="account/signin.htm">Login</a></li>


						<li class="dropdown mega-dropdown"><a href="#"
							class="dropdown-toggle menu_tab menu_tab_1"
							data-toggle="dropdown">More <span
								class="glyphicon glyphicon-chevron-down pull-right icon_1"></span></a>

							<ul class="dropdown-menu mega-dropdown-menu row drop_3">
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">Best in Shop</li>
										<li><a href="#">Lorem Ipsum</a></li>
										<li><a href="#">Dolor Amet</a></li>
										<li><a href="#">Adipiscing Elit</a></li>
										<li><a href="#">Newsbox</a></li>
										<li><a href="#"> Integer Nec</a></li>
										<li class="divider"></li>
										<li class="dropdown-header">Branded</li>
										<li><a href="#">New Elements</a></li>
									</ul>
								</li>
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">Trending</li>
										<li><a href="#">Lorem Ipsum</a></li>
										<li><a href="#">Dolor Amet</a></li>
										<li><a href="#">Adipiscing Elit</a></li>
										<li><a href="#">Newsbox</a></li>
										<li><a href="#"> Integer Nec</a></li>
										<li class="divider"></li>
										<li class="dropdown-header">New</li>
										<li><a href="#">New Elements</a></li>
									</ul>
								</li>
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">Popular</li>
										<li><a href="#">Praesent Libero</a></li>
										<li><a href="#">Sed Cursus</a></li>
										<li><a href="#">Ante Dapibus </a></li>
										<li class="divider"></li>
										<li class="dropdown-header">Old</li>
										<li><a href="#">Nulla Quis Sem</a></li>
										<li><a href="#">Elementum Imperdiet</a></li>
										<li><a href="#">Duis Sagittis</a></li>
									</ul>
								</li>
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">Latest</li>
										<li><a href="#">Praesent Mauris</a></li>
										<li><a href="#">Fusce Nec Tellus </a></li>
										<li><a href="#">Augue Semper </a></li>
										<li class="divider"></li>
										<li class="dropdown-header">Newsletter</li>
										<form class="form" role="form">
											<div class="form-group">
												<label class="sr-only" for="email">Email address</label> <input
													type="email" class="form-control" id="email"
													placeholder="Enter email">
											</div>
											<button type="submit" class="btn btn-primary btn-block">Log
												in</button>
										</form>
									</ul>
								</li>
							</ul></li>


					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a class="menu_tab" href="#">Newly Offer!</a></li>
						<li><a class="menu_tab_2" href="#">Special Monday</a></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</section>



<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="<c:url value='/resources/styles/bootstrap4/popper.js' />"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="<c:url value='/resources/plugins/Isotope/isotope.pkgd.min.js' />"></script>
	<script
		src="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js' />"></script>
	<script src="<c:url value='/resources/plugins/easing/easing.js' />"></script>
	<script
		src="<c:url value='/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js' />"></script>
	<script src="<c:url value='/resources/js/single_custom.js' />"></script>
<%--  <%@include file="/WEB-INF/views/include/footer.jsp"%> --%>
<script type="text/javascript">
$(document).ready(function(){

/*****Fixed Menu******/
var secondaryNav = $('.cd-secondary-nav'),
   secondaryNavTopPosition = secondaryNav.offset().top;
	$(window).on('scroll', function(){
		if($(window).scrollTop() > secondaryNavTopPosition ) {
			secondaryNav.addClass('is-fixed');	
		} else {
			secondaryNav.removeClass('is-fixed');
		}
	});	
	
});
</script>
</body>

</html>