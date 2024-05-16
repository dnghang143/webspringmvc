<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
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


<section id="center" class="center_home clearfix">
 <div class="container">
  <div class="row">
   <div class="col-sm-9 space_right">
    <div class="center_home_left clearfix">
	  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

  <!-- Wrapper for slides -->
		  <div class="carousel-inner">
			<div class="item active">
			 <img class="img-responsive" src="img/team/s1.jpg" alt="...">
			  <div class="carousel-caption">
				<h3>OFFER <span>30%</span> DISCOUNT</h3>
				<h1>TRENDING & STYLISH</h1>
				<h2>LATEST 2024</h2>
				<p>Miễn phí vận chuyển và lắp đặt tận nhà</p>
				<h5><a href="#">BOOK NOW</a></h5>
			  </div>
			</div>
			<div class="item ">
			  <img class="img-responsive" src="img/team/s2.jpg" alt="...">
			  <div class="carousel-caption">
				<h3>OFFER <span>30%</span> DISCOUNT</h3>
				<h1>TRENDING & STYLISH</h1>
				<h2>LATEST 2024</h2>
				<p>Bảo hành 12 tháng, bảo trì trọn đời</p>
				<h5><a href="#">BOOK NOW</a></h5>
			  </div>
			</div>
			 <div class="item">
			  <img class="img-responsive" src="img/team/s3.jpg" alt="...">
			  <div class="carousel-caption">
				<h3>OFFER <span>30%</span> DISCOUNT</h3>
				<h1>TRENDING & STYLISH</h1>
				<h2>LATEST 2024</h2>
				<p>Nội thất sang trọng, đẳng cấp</p>
				<h5><a href="#">BOOK NOW</a></h5>
			  </div>
			</div>
		  </div>

  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span>
	  </a>
</div>
	</div>
   </div>
   <div class="col-sm-3 space_left">
   <!-- tabbar loại -->
  <c:forEach var="f" items="${category}">
   <a href="./category/${f.categoryId}.htm">
   <div class="center_home_right clearfix">
	    <div class="grid">
		<figure class="effect-terry">
						<img src="img/4.jpg" alt="img26" height="160px">
						<figcaption>
							<h2>${f.categoryname}</h2>
							<!-- <p>
								<a href="#"><i class="fa fa-fw fa-download"></i></a>
								<a href="#"><i class="fa fa-fw fa-heart"></i></a>
								<a href="#"><i class="fa fa-fw fa-share"></i></a>
								<a href="#"><i class="fa fa-fw fa-tags"></i></a></p> -->
						</figcaption>			
		  </figure>
	   </div>
	 </div>
	 </a>
	 </c:forEach>
   </div>
  </div>
 </div>
</section>

<section id="product_home" class="clearfix">
 <div class="container">
  <div class="row">
   <div class="product_home_1 clearfix">
     <div class="col-sm-5 space_left">
	  <div class="product_home_1_left clearfix">
	    <h3>LATEST OFFERS</h3>
	  </div>
	 </div>
	 <div class="col-sm-7">
	  <div class="product_home_1_right clearfix"></div>
	 </div>
   </div>
   
   <c:forEach var="p" items="${product}">
   <div class="col-sm-3 border_right_1">
	  <div class="product_home_2_inner_main  clearfix">
	   <div class="product_home_2_inner_main_1 clearfix">
		  <a href="./product/${p.productId}.htm"><img src="img/7.png"></a>
		  <h6>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		  </h6>
		  <p class="para_1"><a href="#">${p.productname}</a></p>
		  <h5>${(p.price*(100-p.discount))/100}<span>${p.price}</span></h5>
		</div>
		
		<div class="product_home_2_inner_main_2 clearfix">
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left clearfix">
		    <ul>
			 <li>New</li>
			</ul>
		   </div>
		 </div>
		 
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left text-right clearfix">
		    <ul>
			 <li class="offer_tag">${p.discount}%</li>
			</ul>
		   </div>
		 </div>
		</div>
	  </div>
	</div>
   </c:forEach>
   </div>
  </div>

</section>

<section id="shopping" style="background-image: url('img/team/about.png');">
 <div class="shopping_main clearfix">
   <div class="container">
  <div class="row">
   <div class="shopping clearfix">
    <div class="col-sm-6">
	 <div class="shopping_left clearfix"></div>
	</div>
	<div class="col-sm-6">
	 <div class="shopping_left text-center clearfix">
	   <h4>CLASS APTENT TACITI  LITORA TORQUENT CONUBIA </h4>
	   <h5><a href="#">BUY NOW <i class="fa fa-caret-right"></i></a></h5>
	 </div>
	</div>
   </div>
  </div>
 </div>
 </div>
</section>

<section id="product_home_other" class="clearfix">
 <div class="container">
  <div class="row">
   <div class="product_home_1 clearfix">
     <div class="col-sm-5 space_left">
	  <div class="product_home_1_left clearfix">
	    <h3>TRENDING BEST OFFERS</h3>
	  </div>
	 </div>
	 <div class="col-sm-7">
	  <div class="product_home_1_right clearfix">
	    <ul class="text-right">
		 <li><a href="#">Fashion</a></li>
		 <li><a href="#">Trending</a></li>
		 <li><a href="#">Popular</a></li>
		 <li><a href="#">Child</a></li>
		 <li><a href="#">Electronics</a></li>
		 <li class="border_none_1"><a href="#">Computers</a></li>
		</ul>
	  </div>
	 </div>
   </div>
   <div class="product_home_2 clearfix">
    <div class="col-sm-3 border_right_1">
	  <div class="product_home_2_inner_main  clearfix">
	    <div class="product_home_2_inner_main_1 clearfix">
		  <a href="#"><img src="img/12.png"></a>
		  <h6>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		  </h6>
		  <p class="para_1"><a href="#">Lorem ipsum dolor sit...</a></p>
		  <h5>$40.00 <span>$55.00</span></h5>
		</div>
		<div class="product_home_2_inner_main_2 clearfix">
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left clearfix">
		    <ul>
			 <li>New</li>
			</ul>
		   </div>
		 </div>
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left text-right clearfix">
		    <ul>
			 <li class="offer_tag">-25%</li>
			</ul>
		   </div>
		 </div>
		</div>
	  </div>
	</div>
    <div class="col-sm-3 border_right_1">
	  <div class="product_home_2_inner_main  clearfix">
	    <div class="product_home_2_inner_main_1 clearfix">
		  <a href="#"><img src="img/13.png"></a>
		  <h6>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		  </h6>
		  <p class="para_1"><a href="#">Lorem ipsum dolor sit...</a></p>
		  <h5>$45.00 <span>$65.00</span></h5>
		</div>
		<div class="product_home_2_inner_main_2 clearfix">
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left clearfix">
		    <ul>
			 <li>New</li>
			</ul>
		   </div>
		 </div>
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left text-right clearfix">
		    <ul>
			 <li class="offer_tag">-20%</li>
			</ul>
		   </div>
		 </div>
		</div>
	  </div>
	</div>
	<div class="col-sm-3 border_right_1">
	  <div class="product_home_2_inner_main  clearfix">
	    <div class="product_home_2_inner_main_1 clearfix">
		  <a href="#"><img src="img/14.jpg"></a>
		  <h6>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		  </h6>
		  <p class="para_1"><a href="#">Lorem ipsum dolor sit...</a></p>
		  <h5>$55.00 <span>$75.00</span></h5>
		</div>
		<div class="product_home_2_inner_main_2 clearfix">
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left clearfix">
		    <ul>
			 <li>New</li>
			</ul>
		   </div>
		 </div>
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left text-right clearfix">
		    <ul>
			 <li class="offer_tag">-30%</li>
			</ul>
		   </div>
		 </div>
		</div>
	  </div>
	</div>
	<div class="col-sm-3">
	  <div class="product_home_2_inner_main  clearfix">
	    <div class="product_home_2_inner_main_1 clearfix">
		  <a href="#"><img src="img/15.png"></a>
		  <h6>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		   <i class="fa fa-star-o"></i>
		  </h6>
		  <p class="para_1"><a href="#">Lorem ipsum dolor sit...</a></p>
		  <h5>$65.00 <span>$80.00</span></h5>
		</div>
		<div class="product_home_2_inner_main_2 clearfix">
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left clearfix">
		    <ul>
			 <li>New</li>
			</ul>
		   </div>
		 </div>
		 <div class="col-sm-6 space_all">
		   <div class="product_home_2_inner_main_2_left text-right clearfix">
		    <ul>
			 <li class="offer_tag">-48%</li>
			</ul>
		   </div>
		 </div>
		</div>
	  </div>
	</div>
   </div>
  </div>
 </div>
</section>

<section id="trending">
 <div class="container">
  <div class="row">
   <div class="trending_1 clearfix">
    <div class="col-sm-4">
	 <div class="trending_1_inner clearfix">
	  <div class="trending_1_inner_1 clearfix">
	   <a href="#"><img src="img/16.jpg" width="100%" height="200px"></a>
	  </div>
	  <div class="trending_1_inner_2 clearfix">
	   <h4>SHOPPING AND BOOKING</h4> 
	   <h5><a href="#">BOOK NOW <i class="fa fa-caret-right"></i></a></h5>
	  </div>
	 </div>
	</div>
	<div class="col-sm-4">
	 <div class="trending_1_inner clearfix">
	  <div class="trending_1_inner_1 clearfix">
	   <a href="#"><img src="img/17.jpg" width="100%" height="200px"></a>
	  </div>
	  <div class="trending_1_inner_2 clearfix">
	   <h4>SHOPPING AND BOOKING</h4> 
	   <h5><a href="#">BOOK NOW <i class="fa fa-caret-right"></i></a></h5>
	  </div>
	 </div>
	</div>
	<div class="col-sm-4">
	 <div class="trending_1_inner clearfix">
	  <div class="trending_1_inner_1 clearfix">
	   <a href="#"><img src="img/18.jpg" width="100%" height="200px"></a>
	  </div>
	  <div class="trending_1_inner_2 clearfix">
	   <h4>SHOPPING AND BOOKING</h4> 
	   <h5><a href="#">BOOK NOW <i class="fa fa-caret-right"></i></a></h5>
	  </div>
	 </div>
	</div>
   </div>
  </div>
 </div>
</section>

<section id="partners">
 <div class="container">
  <div class="row">
   <div class="product_home_1 clearfix">
     <div class="col-sm-5 space_left">
	  <div class="product_home_1_left clearfix">
	    <h3>POPULAR BRANDS</h3>
	  </div>
	 </div>
	 <div class="col-sm-7">
	  <div class="product_home_1_right clearfix">
	    
	  </div>
	 </div>
   </div>
   <div class="partners_1 clearfix">
     <div class="carousel slide" id="myCarousel_1">
        <div class="carousel-inner">
            <div class="item active">
                    <ul class="thumbnails">
                        <li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#">Lorem Ipsum  <span>Dolor</span></a></h3>
	                       </div>
                        </li>
                        <li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#">consectetur   <span>adipiscing</span></a></h3>
	                       </div>
                        </li>
                        <li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#">Integer nec   <span>odio</span></a></h3>
	                       </div>
                        </li>
						<li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#">ante dapibus  <span>diam</span></a></h3>
	                       </div>
                        </li>
                    </ul>
              </div><!-- /Slide1 --> 
            <div class="item ">
                    <ul class="thumbnails">
                        <li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#">Nulla quis    <span>sem</span></a></h3>
	                       </div>
                        </li>
                        <li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#">nibh elementum    <span>imperdiet</span></a></h3>
	                       </div>
                        </li>
                        <li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#">augue semper    <span>porta</span></a></h3>
	                       </div>
                        </li>
						<li class="col-sm-3">
    						<div class="news_home_1_inner clearfix">
							  <h3><a href="#"> Vestibulum lacinia    <span>arcu</span></a></h3>
	                       </div>
                        </li>
                    </ul>
              </div><!-- /Slide2 --> 
            <!-- /Slide3 --> 
        </div>
        
       
	   <nav>
			<ul class="control-box pager">
				<li><a data-slide="prev" href="#myCarousel_1" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
				<li><a data-slide="next" href="#myCarousel_1" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li></ul>
	   <!-- /.control-box -->   
                              
    </nav></div>
   </div>
  </div>
 </div>
</section>

<section id="trending_other">
 <div class="container">
  <div class="row">
   <div class="trending_1 clearfix">
    <div class="col-sm-6">
	 <div class="trending_1_inner clearfix">
	  <div class="trending_1_inner_1 clearfix">
	   <a href="#"><img src="img/19.jpg" width="100%" height="200px"></a>
	  </div>
	  <div class="trending_1_inner_2 clearfix">
	   <h4>SHOPPING AND BOOKING</h4> 
	   <h5><a href="#">BOOK NOW <i class="fa fa-caret-right"></i></a></h5>
	  </div>
	 </div>
	</div>
	<div class="col-sm-6">
	 <div class="trending_1_inner clearfix">
	  <div class="trending_1_inner_1 clearfix">
	   <a href="#"><img src="img/20.jpg" width="100%" height="200px"></a>
	  </div>
	  <div class="trending_1_inner_2 clearfix">
	   <h4>SHOPPING AND BOOKING</h4> 
	   <h5><a href="#">BOOK NOW <i class="fa fa-caret-right"></i></a></h5>
	  </div>
	 </div>
	</div>
   </div>
  </div>
 </div>
</section>

<section id="blog_home">
 <div class="container">
  <div class="row">
   <div class="product_home_1 clearfix">
     <div class="col-sm-5 space_left">
	  <div class="product_home_1_left clearfix">
	    <h3>TRENDING BLOGS</h3>
	  </div>
	 </div>
	 <div class="col-sm-7">
	  <div class="product_home_1_right clearfix">
	    
	  </div>
	 </div>
   </div>
   <div class="blog_home_1 clearfix">
    <div class="col-sm-4 space_left">
	 <div class="blog_home_1_inner clearfix">
	  <a href="#"><img src="img/21.jpg" width="100%"></a>
	    <div class="blog_home_1_inner_1 clearfix">
		  <h5><i class="fa fa-calendar"></i> July 13,2019</h5>
		  <h4><a href="#">Lorem ipsum dolor sit amet </a></h4>
		  <ul>
		   <li><i class="fa fa-tags"></i> <a href="#">Headlines,</a></li>
		   <li><a href="#">New,</a></li>
		   <li><a href="#">Latest,</a></li>
		   <li><a href="#">Style,</a></li>
		   <li><a href="#">Sport</a></li>
		  </ul>
		  <h6><a href="#"><i class="fa fa-caret-right"></i> Find More</a></h6>
		</div>
	 </div>
	</div>
	<div class="col-sm-4 space_left">
	 <div class="blog_home_1_inner clearfix">
	  <a href="#"><img src="img/22.jpg" width="100%"></a>
	    <div class="blog_home_1_inner_1 clearfix">
		  <h5><i class="fa fa-calendar"></i> July 16,2019</h5>
		  <h4><a href="#">Sed cursus ante dapibus diam  nisi</a></h4>
		  <ul>
		   <li><i class="fa fa-tags"></i> <a href="#">Headlines,</a></li>
		   <li><a href="#">New,</a></li>
		   <li><a href="#">Latest,</a></li>
		   <li><a href="#">Style,</a></li>
		   <li><a href="#">Sport</a></li>
		  </ul>
		  <h6><a href="#"><i class="fa fa-caret-right"></i> Find More</a></h6>
		</div>
	 </div>
	</div>
	<div class="col-sm-4 space_left">
	 <div class="blog_home_1_inner clearfix">
	  <a href="#"><img src="img/23.jpg" width="100%"></a>
	    <div class="blog_home_1_inner_1 clearfix">
		  <h5><i class="fa fa-calendar"></i> July 20,2019</h5>
		  <h4><a href="#">Nulla quis sem at nibh imperdiet</a></h4>
		  <ul>
		   <li><i class="fa fa-tags"></i> <a href="#">Headlines,</a></li>
		   <li><a href="#">New,</a></li>
		   <li><a href="#">Latest,</a></li>
		   <li><a href="#">Style,</a></li>
		   <li><a href="#">Sport</a></li>
		  </ul>
		  <h6><a href="#"><i class="fa fa-caret-right"></i> Find More</a></h6>
		</div>
	 </div>
	</div>
   </div>
   <div class="blog_home_2 clearfix">
    <div class="col-sm-3 space_left">
	 <div class="blog_home_2_inner clearfix">
	  <h1><i class="fa fa-paper-plane"></i></h1>
	  <h4><a href="#">ONE YEAR GUARANTEE</a> <span>15 Days Return Policy</span></h4>
	 </div>
	</div>
	<div class="col-sm-3 space_left">
	 <div class="blog_home_2_inner clearfix">
	  <h1><i class="fa fa-map-marker"></i></h1>
	  <h4><a href="#">FREE PRODUCT DELIVERY</a> <span>For Only Over 300 <i class="fa fa-rupee"></i></span></h4>
	 </div>
	</div>
	<div class="col-sm-3 space_left">
	 <div class="blog_home_2_inner clearfix">
	  <h1><i class="fa fa-tag"></i></h1>
	  <h4><a href="#">FOR OLD CUSTOMERS</a> <span>Upto 50 % Offers</span></h4>
	 </div>
	</div>
	<div class="col-sm-3 space_left">
	 <div class="blog_home_2_inner clearfix">
	  <h1><i class="fa fa-life-ring"></i></h1>
	  <h4><a href="#">24 HOUR HELP</a> <span>Our Support 24 Hours</span></h4>
	 </div>
	</div>
   </div>
  </div>
 </div>
</section>





<!-- <section id="footer">
 <div class="container">
  <div class="row">
   <div class="footer_1 clearfix">
    <div class="col-sm-2">
	 <div class="footer_1_inner clearfix">
	  <h4>CHÍNH SÁCH HỖ TRỢ</h4>
	  <ul>
	   <li><a href="#">Chính sách khách hàng</a></li>
	   <li><a href="#">Chính sách giao nhận</a></li>
	   <li><a href="#">Chính sách bảo mật</a></li>
	   <li><a href="#">Chính sách thông tin</a></li>
	  </ul>
	 </div>
	</div>
	<div class="col-sm-2">
	 <div class="footer_1_inner clearfix">
	  <h4>YÊU CẦU</h4>
	  <ul>
	   <li><a href="#"> Liên hệ chúng tôi</a></li>
	   <li><a href="#">Cửa hàng</a></li>
	   <li><a href="#">Lắp đặt, vận chuyển</a></li>
	   <li><a href="#"> Thông tin</a></li>
	   <li><a href="#"> Báo cáo</a></li>
	   <li><a href="#">Về chúng tôi</a></li>
	  </ul>
	 </div>
	</div>
	<div class="col-sm-4">
	 <div class="footer_1_inner clearfix">
	  <h4>LIÊN HỆ</h4>
	  <ul class="footer_dropdown">
	   <li>97 MAN THIỆN, PHƯỜNG HIỆP PHÚ, THÀNH PHỐ THỦ ĐỨC</li>
	   <li> (+XY) XXX-YYY-ZZZ</li>
	   <li><a href="#"> lovemyhouse@gmail.com</a></li>
	  </ul>
	  <ul class="social-network social-circle">
                        <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
	 </div>
	</div>
	<div class="col-sm-4">
	 <div class="footer_1_inner clearfix">
	  <h4>NEWSLETTER</h4>
      <p>Curabitursodales ligula in libero Sed dignissim lacinia nunc conubia nostra, per inceptos himenaeos !</p>
	   <div id="custom-search-input">
          <div class="input-group col-sm-12">
                                <input type="text" class="  search-query form-control" placeholder="Enter Email">
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span>SUBMIT</span>
                                    </button>
                                </span>
                            </div>
      </div>
	 </div>
	</div>
   </div>
   
   
   <div class="footer_2 text-center clearfix">
    <ul>
	 <li><a href="#">ĐẶNG THỊ THÚY HẰNG</a></li>
	 <li><a href="#">USER SERVICE</a></li>
	 <li><a href="#">OUR PRIVACY</a></li>
	 <li><a href="#">SITE VIEW</a></li>
	 <li><a href="#">BOOKING AND RETURNING</a></li>
	 <li class="border_none_1"><a href="#">CONNECT WITH US</a></li>
	</ul>
	<p>Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitursodales ligula in libero.Sed dignissim lacinia nunc.</p>
	<p> © 2024 lOVE mY hOUSE. All Rights Reserved | Design by <a href="http://www.templateonweb.com">TemplateOnWeb</a></p>
   </div>
  </div>
 </div>
</section> -->
<%-- <script
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
 <%@include file="/WEB-INF/views/include/footer.jsp"%>
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
</script> --%>

</body>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>
