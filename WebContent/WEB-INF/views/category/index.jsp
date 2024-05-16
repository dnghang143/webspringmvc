 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="ptithcm.utils.Constants"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	
	<section id="trending">
		<div class="container">
			<div class="row">
				<div class="trending_1 clearfix">
					<c:forEach var="f" items="${category}">
						<div class="col-sm-4">
							<div class="trending_1_inner clearfix">
								<div class="trending_1_inner_1 clearfix">
									<a href="#"><img src="img/giuong.jpg" width="100%"
										height="200px"></a>
								</div>
								<div class="trending_1_inner_2 clearfix">
									<h4>${f.categoryname}</h4>
									<h5>
										<a href="./category/${f.categoryId}.htm">BOOK NOW <i class="fa fa-caret-right"></i></a>
									</h5>
								</div>
							</div>
						</div>
					</c:forEach>
					
					<!--    <div class="col-sm-4">
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
	</div> -->
				</div>
				
			</div>
		</div>
	</section>
	<br><br><br>
	<div class="container">
<c:forEach var="p" items="${productCate}">
   <div class="col-sm-3 border_right_1">
	  <div class="product_home_2_inner_main  clearfix">
	   <div class="product_home_2_inner_main_1 clearfix">
		  <a href="./product/${p.productId}.htm""><img src="img/7.png"></a>
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
	<%-- <div class="super_container">
		<div class="new_arrivals">
			<div class="container ">
				<div class="row">
				
					<div class="breadcrumbs d-flex flex-row align-items-center">
						<ul>
							<li><a href="index.htm">Home</a></li>
							<li class="active"><a href="index.htm"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Men's</a></li>
						</ul>
					</div>
					<div class="sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">
								<h5>Danh mục sản phẩm</h5>
								<div class="row align-items-center">
									<div class="col text-center">
										<div class="new_arrivals_sorting">
											<ul
												class="arrivals_grid_sorting clearfix button-group filters-button-group">
												<c:forEach var="f" items="${category}">
													<li
														class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center"
														data-filter=".${f.categoryId}">${f.categoryname}</li>

												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<c:forEach var="p" items="${product}">
						<c:if test="${p.categoryId == categoryId}">
							<!-- Your code here -->
							<!-- This block will be executed only if p.CategoryId equals categoryId -->

						</c:if>

					</c:forEach>
					<!-- Main Content -->
					<div class="main_content">
						<!-- Products -->
						<div class="products_iso">
							<div class="row">
								<div class="col">
									<!-- Product Sorting -->
									<div
										class="product_sorting_container product_sorting_container_top">
										<ul class="product_sorting">
											<li><span class="type_sorting_text">Mặc định</span> <i
												class="fa fa-angle-down"></i>
												<ul class="sorting_type">
													<li class="type_sorting_btn"
														data-isotope-option='{ "sortBy": "original-order" }'><span>Mặc
															định</span></li>
													<li class="type_sorting_btn"
														data-isotope-option='{ "sortBy": "price" }'><span>Theo
															giá tăng dần</span></li>
													<li class="type_sorting_btn"
														data-isotope-option='{ "sortBy": "name" }'><span>Theo
															tên sản phẩm</span></li>
												</ul></li>
											<li><span>Chế độ</span> <span class="num_sorting_text">6</span>
												<i class="fa fa-angle-down"></i>
												<ul class="sorting_num">
													<li class="num_sorting_btn"><span>6</span></li>
													<li class="num_sorting_btn"><span>12</span></li>
													<li class="num_sorting_btn"><span>24</span></li>
												</ul></li>
										</ul>
										<div class="pages d-flex flex-row align-items-center">
											<form method="get"
												action="product/index.htm?keyword=${keyword}">
												<div class="input-group">
													<input type="search" placeholder="Từ khóa" name="keyword"
														class="form-control border-success rounded-pill pr-5 form-control-sm mr-10"
														value="${keyword}" />
													<div class="input-group-append ml-10">
														<button class="btn btn-primary btn-sm">Tìm</button>
													</div>
												</div>
											</form>
										</div>
									</div>
									<!-- Product Grid -->
									<div class="product-grid">
										<c:forEach var="f" items="${women}">
											<div class="product-item 2">
												<div class="product discount product_filter">
													<div class="product_image">
														<a href="product/${f.productId}.htm"><img
															src="<c:url value="/resources/images/${Constants.getBanner(f.images)}"/>"
															alt=""></a>
													</div>
													<div class="favorite favorite_left"></div>
													<div
														class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
														<span>-${f.discount}%</span>
													</div>
													<div class="product_info">
														<h6 class="product_name">${f.productname}</h6>
														<div class="product_price">${f.price-(f.price*((f.discount)/100))}k<span>${f.price}k</span>
														</div>
													</div>
												</div>
												<div class="red_button add_to_cart_button">
													<a href="product/cart.htm?id_product=${f.productId}">Thêm
														vào giỏ hàng</a>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="f" items="${men}">
											<div class="product-item 1">
												<div class="product discount product_filter">
													<div class="product_image">
														<a href="product/${f.productId}.htm"><img
															src="<c:url value="/resources/images/${Constants.getBanner(f.images)}"/>"
															alt=""></a>
													</div>
													<div class="favorite favorite_left"></div>
													<div
														class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
														<span>-${f.discount}%</span>
													</div>
													<div class="product_info">
														<h6 class="product_name">${f.productname}</h6>
														<div class="product_price">${f.price-(f.price*((f.discount)/100))}k<span>${f.price}k</span>
														</div>
													</div>
												</div>
												<div class="red_button add_to_cart_button">
													<a href="product/cart.htm?id_product=${f.productId}">Thêm
														vào giỏ hàng</a>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="f" items="${accessories}">
											<div class="product-item 3">
												<div class="product discount product_filter">
													<div class="product_image">
														<a href="product/${f.productId}.htm"><img
															src="<c:url value="/resources/images/${Constants.getBanner(f.images)}"/>"
															alt=""></a>
													</div>
													<div class="favorite favorite_left"></div>
													<div
														class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
														<span>-${f.discount}%</span>
													</div>
													<div class="product_info">
														<h6 class="product_name">${f.productname}</h6>
														<div class="product_price">${f.price-(f.price*((f.discount)/100))}k<span>${f.price}k</span>
														</div>
													</div>
												</div>
												<div class="red_button add_to_cart_button">
													<a href="product/cart.htm?id_product=${f.productId}">Thêm
														vào giỏ hàng</a>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="f" items="${product}">
											<div class="product-item 3">
												<div class="product discount product_filter">
													<div class="product_image">
														<a href="product/${f.productId}.htm"><img
															src="<c:url value="/resources/images/${Constants.getBanner(f.images)}"/>"
															alt=""></a>
													</div>
													<div class="favorite favorite_left"></div>
													<div
														class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
														<span>-${f.discount}%</span>
													</div>
													<div class="product_info">
														<h6 class="product_name">${f.productname}</h6>
														<div class="product_price">${f.price-(f.price*((f.discount)/100))}k<span>${f.price}k</span>
														</div>
													</div>
												</div>
												<div class="red_button add_to_cart_button">
													<a href="#">add to cart</a>
												</div>
											</div>
										</c:forEach>
									</div>

									<!-- Product Sorting -->

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
	<nav aria-label="Page navigation">
		<ul class="pagination justify-content-end">
			<!-- First Page -->
			<li class="page-item ${page == 1 ? 'disabled' : '' }"><a
				class="page-link" href="category/index.htm?page=1" tabindex="-1"
				aria-disabled="true">&laquo;</a></li>

			<!-- Page Number -->
			<c:forEach begin="${page-2<1 ? 1 : page-2}"
				end="${page+2 > maxPage ? maxPage : page+2}" varStatus="loop">
				<li class="page-item ${loop.count == page ? 'active' : '' }"><a
					class="page-link" href="category/index.htm?page=${loop.count}">${loop.count}</a></li>
			</c:forEach>

			<!-- Last Page -->
			<li class="page-item ${page == maxPage ? 'disabled' : '' }"><a
				class="page-link" href="category/index.htm?page=${maxPage}"
				tabindex="-1" aria-disabled="true">&raquo;</a></li>
		</ul>
	</nav>
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
	<script src="<c:url value='/resources/js/categories_custom.js' />"></script>
	<script src="<c:url value='/resources/js/custom.js' />"></script>
	<br>
	<br>
	<br>

</body>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>

 <%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Category</title>
</head>
<body>
    <h1>Products by Category</h1>
    
    <c:forEach var="p" items="${productCate}">
        <div>
            <h2>${p.productname}</h2>
            <p>Price: ${p.price}</p>
            <!-- Add more details here if needed -->
        </div>
    </c:forEach>
</body>
</html>
  --%>