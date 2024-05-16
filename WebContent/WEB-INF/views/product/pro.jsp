<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%-- <%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%> --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Store</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/product.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Saira+Stencil+One&display=swap" rel="stylesheet">
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</head>
<body>
<section id="center" class="center_product clearfix">
 <div class="center_product_main clearfix" style="background-image: url('img/team/product.png');">
   <div class="container">
	  <div class="row">
	   <div class="center_product_1 clearfix">
		<div class="col-sm-6">
		 <div class="center_product_1_left clearfix">
		   <h4>PRODUCTS</h4>
		 </div>
		</div>
		<div class="col-sm-6">
		 <div class="center_product_1_right text-right clearfix">
		  <ul>
		   <li><a href="home.htm">Home <i class="fa fa-caret-right"></i></a></li>
		   <li>Products <i class="fa fa-caret-right"></i></li>
		  </ul>
		 </div>
		</div>
	   </div>
	  </div>
 </div>
 </div>
</section>

<section id="product_page" class="clearfix">
 <div class="container">
  <div class="row">
   <div class="col-sm-3">
    <div class="product_page_left clearfix">
	 <h4>STORE BY</h4>
	 <hr>
	 <h5>Classification</h5>
	 <ul>
	  <li><a href="detail.html">Shoes (14) </a></li>
	  <li><a href="detail.html">Watches (15) </a></li>
	  <li><a href="detail.html">Mobile Phones (70) </a></li>
	 </ul>
	</div>
	<div class="product_page_left_1 clearfix">
	  <h4>Rate</h4>
	  <hr>
	  <p>$51 - $178</p>
	</div>
	<div class="product_page_left_2 clearfix">
	  <h4>EQUATE BRANDS</h4>
	  <hr>
	  <p>You have nothing to equate.</p>
	</div>
	<div class="product_page_left_2 clearfix">
	  <h4>POPULAR BRANDS</h4>
	  <hr>
	  <div class="product_page_left_2_inner clearfix">
	   <div class="col-sm-4 space_left">
	    <div class="product_page_left_2_inner_left clearfix">
		 <a href="detail.html"><img src="img/25.jpg" width="100%"></a>
		</div>
	   </div>
	   <div class="col-sm-8 space_left">
	    <div class="product_page_left_2_inner_right clearfix">
		 <h5>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		 </h5>
		 <p><a href="detail.html">Cursus ante dapibus diam...</a></p>
		 <h4>$50.00  <span>$70.00</span></h4>
		</div>
	   </div>
	  </div>
	  <div class="product_page_left_2_inner clearfix">
	   <div class="col-sm-4 space_left">
	    <div class="product_page_left_2_inner_left clearfix">
		 <a href="detail.html"><img src="img/26.jpg" width="100%"></a>
		</div>
	   </div>
	   <div class="col-sm-8 space_left">
	    <div class="product_page_left_2_inner_right clearfix">
		 <h5>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		 </h5>
		 <p><a href="detail.html">Nulla quis sem at nibh...</a></p>
		 <h4>$45.00  <span>$80.00</span></h4>
		</div>
	   </div>
	  </div>
	  <div class="product_page_left_2_inner border_none_1 clearfix">
	   <div class="col-sm-4 space_left">
	    <div class="product_page_left_2_inner_left clearfix">
		 <a href="detail.html"><img src="img/27.jpg" width="100%"></a>
		</div>
	   </div>
	   <div class="col-sm-8 space_left">
	    <div class="product_page_left_2_inner_right clearfix">
		 <h5>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		 </h5>
		 <p><a href="detail.html">Lorem ipsum dolor sit...</a></p>
		 <h4>$35.00  <span>$65.00</span></h4>
		</div>
	   </div>
	  </div>
	</div>
	<div class="product_page_left_3 clearfix">
	   <div class="grid">
					<figure class="effect-layla">
						<img src="img/28.jpg" alt="img03"/>
						<figcaption>
							<h2>Latest <span>Offer</span></h2>
							<p> Fusce nec tellus sed augue semper porta.</p>
							<a href="detail.html">View more</a>						</figcaption>			
		  </figure>
	  </div>
	</div>
   </div>
   <div class="col-sm-9">
    <div class="product_page_right clearfix">
	 <div class="product_page_right_1 clearfix">
	   <div class="col-sm-6">
	    <div class="product_page_right_1_left clearfix">
		  <label class="label_1">Sort By</label> 
		   <select class="form_1"> 
		      <option>Category</option> 
		      <option>Brand Name</option> 
		      <option>Price</option> 
		   </select>
		</div>
	   </div>
	   <div class="col-sm-6">
	    <div class="product_page_right_1_left text-right clearfix">
		  <label class="label_1">Show</label> 
		   <select class="form_2"> 
		      <option>1</option> 
		      <option>10</option> 
		      <option>15</option>
			  <option>20</option>
			  <option>25</option> 
		   </select>
		   <ul> 
		    <li>Page:</li>
			<li class="tag_page">1</li>
			<li><a href="detail.html">2</a></li>
			<li><a href="detail.html">3</a></li>
			<li><a href="detail.html"><i class="fa fa-caret-right"></i></a></li>
		   </ul>
		</div>
	   </div>
	 </div>
	<!--  <div class="product_page_right_2 clearfix">
	  <div class="col-sm-3 space_left">
	   <div class="product_page_right_2_left clearfix">
	    <a href="detail.html"><img src="img/7.png" width="100%" height="230px"></a>
	   </div>
	  </div> -->
	  
	 <c:forEach var="p" items="${product}">
	 <div class="product_page_right_2 clearfix">
	  <div class="col-sm-3 space_left">
	   <div class="product_page_right_2_left clearfix">
	    <a href="detail.html"><img src="img/8.png" width="100%" height="230px"></a>
	   </div>
	  </div>
	 <div class="col-sm-9">
	   <div class="product_page_right_2_right clearfix">
	    <h4><a href="detail.html">${p.productname}</a></h4>
		<h5><a href="detail.html">
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  <i class="fa fa-star-o"></i>
		  </a>
		 </h5>
		 <h6>${(p.price*(100-p.discount))/100}</h6>
		 <p>${p.review}.</p>
		 <ul>
		   <li><a class="tag_3" href="product/cart.htm?id_product=${p.productId}"><i class="fa fa-shopping-cart"></i> Add To Wishlist</a></li>
		   <li><a class="tag_4" href="detail.html"><i class="fa fa-heart-o"></i></a></li>
		   <li><a class="tag_4" href="detail.html"><i class="fa fa-share"></i></a></li>
		 </ul>
	   </div>
	  </div> 
	  </div>
	  </c:forEach>
	  
	</div>
   </div>
  </div>
 </div>
</section>

 <%@include file="/WEB-INF/views/include/footer.jsp"%> 
</body>

</html>