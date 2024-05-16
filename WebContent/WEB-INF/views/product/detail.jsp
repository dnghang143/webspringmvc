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
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Store</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/global.css" rel="stylesheet">
<link href="css/product.css" rel="stylesheet">
<link href="css/detail.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Righteous&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Saira+Stencil+One&display=swap"
	rel="stylesheet">
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>

	<section id="center" class="center_detail clearfix">
		<div class="center_product_main clearfix">
			<div class="container">
				<div class="row">
					<div class="center_product_1 clearfix">
						<div class="col-sm-6">
							<div class="center_product_1_left clearfix">
								<h4>${product.productname}</h4>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="center_product_1_right text-right clearfix">
								<ul>
									<li><a href="#">Home <i class="fa fa-caret-right"></i></a></li>
									<li>${product.productname}<i class="fa fa-caret-right"></i></li>
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
				<div class="product_page_main clearfix">
					<div class="col-sm-3">
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
										<a href="#"><img src="img/25.jpg" width="100%"></a>
									</div>
								</div>
								<div class="col-sm-8 space_left">
									<div class="product_page_left_2_inner_right clearfix">
										<h5>
											<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i>
										</h5>
										<p>
											<a href="#">Cursus ante dapibus diam...</a>
										</p>
										<h4>
											$50.00 <span>$70.00</span>
										</h4>
									</div>
								</div>
							</div>
							<div class="product_page_left_2_inner clearfix">
								<div class="col-sm-4 space_left">
									<div class="product_page_left_2_inner_left clearfix">
										<a href="#"><img src="img/26.jpg" width="100%"></a>
									</div>
								</div>
								<div class="col-sm-8 space_left">
									<div class="product_page_left_2_inner_right clearfix">
										<h5>
											<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i>
										</h5>
										<p>
											<a href="#">Nulla quis sem at nibh...</a>
										</p>
										<h4>
											$45.00 <span>$80.00</span>
										</h4>
									</div>
								</div>
							</div>
							<div class="product_page_left_2_inner border_none_1 clearfix">
								<div class="col-sm-4 space_left">
									<div class="product_page_left_2_inner_left clearfix">
										<a href="#"><img src="img/27.jpg" width="100%"></a>
									</div>
								</div>
								<div class="col-sm-8 space_left">
									<div class="product_page_left_2_inner_right clearfix">
										<h5>
											<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i>
										</h5>
										<p>
											<a href="#">Lorem ipsum dolor sit...</a>
										</p>
										<h4>
											$35.00 <span>$65.00</span>
										</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="product_page_left_3 clearfix">
							<div class="grid">
								<figure class="effect-layla">
									<img src="img/28.jpg" alt="img03">
									<figcaption>
										<h2>
											Latest <span>Offer</span>
										</h2>
										<p>Fusce nec tellus sed augue semper porta.</p>
										<a href="#">View more</a>
									</figcaption>
								</figure>
							</div>
						</div>
					</div>
					<div class="col-sm-9">
						<div class="product_detail_right clearfix">
							<div class="product_detail_right_1 clearfix">
								<div class="col-sm-6">
									<div class="product_detail_right_1_left clearfix">
										<div class="carousel slide article-slide"
											id="article-photo-carousel">

											<!-- Wrapper for slides -->
											<div class="carousel-inner cont-slider">

												<div class="item">
													<div class="mag">
														<div class="magnify">
															<div class="magnify">
																<img data-toggle="magnify" src="img/30.jpg" alt="">
																<div class="magnify-large"
																	style="background: url(&quot;img/53.jpg&quot;) no-repeat;"></div>
															</div>
															<div class="magnify-large"></div>
														</div>
													</div>
												</div>
												<div class="item">
													<div class="mag">
														<div class="magnify">
															<div class="magnify">
																<img data-toggle="magnify" src="img/31.jpg" alt="">
																<div class="magnify-large"
																	style="background: url(&quot;img/54.jpg&quot;) no-repeat;"></div>
															</div>
															<div class="magnify-large"></div>
														</div>
													</div>
												</div>
												<div class="item">
													<div class="mag">
														<div class="magnify">
															<div class="magnify">
																<img data-toggle="magnify" src="img/32.jpg" alt="">
																<div class="magnify-large"
																	style="background: url(&quot;img/55.jpg&quot;) no-repeat;"></div>
															</div>
															<div class="magnify-large"></div>
														</div>
													</div>
												</div>
												<div class="item active">
													<div class="mag">
														<div class="magnify">
															<div class="magnify">
																<img data-toggle="magnify" src="img/33.jpg" alt="">
																<div class="magnify-large"
																	style="background: url(&quot;img/56.jpg&quot;) -101px -21px no-repeat; display: block; left: 17px; top: -27.5px; opacity: 0;"></div>
															</div>
															<div class="magnify-large"></div>
														</div>
													</div>
												</div>
											</div>
											<!-- Indicators -->
											<ol class="carousel-indicators">
												<li class="" data-slide-to="0"
													data-target="#article-photo-carousel"><img alt=""
													src="img/34.jpg"></li>
												<li class="" data-slide-to="1"
													data-target="#article-photo-carousel"><img alt=""
													src="img/35.jpg"></li>
												<li class="" data-slide-to="2"
													data-target="#article-photo-carousel"><img alt=""
													src="img/36.jpg"></li>
												<li class="active" data-slide-to="3"
													data-target="#article-photo-carousel"><img alt=""
													src="img/37.jpg"></li>
											</ol>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="product_detail_right_1_right clearfix">
										<div class="product_page_right_2_right clearfix">
											<h4>
												<a href="#">${product.productname}</a>
											</h4>
											<h5>
												<a href="#"> <i class="fa fa-star-o"></i> <i
													class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
													class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
												</a>
											</h5>
											<h6>${product.price-(product.price*((product.discount)/100))}k</h6>
											<i>(-${product.discount}%)</i>

											<p>${product.review}</p>
											<ul>
											<a  class="btn btn-danger" href="product/cart.htm?id_product=${product.productId}">${addedToCart ? 'Đã thêm' : 'Thêm vào giỏ'}</a>
						&nbsp;&nbsp;&nbsp;
												<!-- <li><a class="tag_3" href="#"><i
														class="fa fa-shopping-cart"></i> Add To Wishlist</a></li> -->
												<li><a class="tag_4" href="#"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a class="tag_4" href="#"><i
														class="fa fa-share"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="product_detail_right_2 clearfix">

								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#home">DESCRIPTION</a></li>
									<li class=""><a data-toggle="tab" href="#menu1">MORE
											DETAILS</a></li>
									<li><a data-toggle="tab" href="#menu2">COMMENTS</a></li>
									<li><a data-toggle="tab" href="#menu3"> TRADITION
											SECTION</a></li>
								</ul>

								<div class="tab-content clearfix">
									<div id="home" class="tab-pane fade clearfix active in">
										<div class="click clearfix">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Integer nec odio.Praesent libero. Sed cursus ante
												dapibus diam. Sed nisi. Nulla quis sem at nibh elementum
												imperdiet. Duis sagittis ipsum.Praesent mauris. Fusce nec
												tellus sed augue semper porta. Mauris massa. Vestibulum
												lacinia arcu eget nulla.Class aptent taciti sociosqu ad
												litora torquent per conubia nostra, per inceptos himenaeos.
												Curabitursodales ligula in libero.Sed dignissim lacinia
												nunc.Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Integer nec odio.Praesent libero. Sed cursus ante
												dapibus diam. Sed nisi. Nulla quis sem at nibh elementum
												imperdiet. Duis sagittis ipsum.Praesent mauris. Fusce nec
												tellus sed augue semper porta. Mauris massa. Vestibulum
												lacinia arcu eget nulla.Class aptent taciti sociosqu ad
												litora torquent per conubia nostra, per inceptos himenaeos.
												Curabitursodales ligula in libero.Sed dignissim lacinia
												nunc.Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Integer nec odio.Praesent libero. Sed cursus ante
												dapibus diam. Sed nisi. Nulla quis sem at nibh elementum
												imperdiet. Duis sagittis ipsum.Praesent mauris. Fusce nec
												tellus sed augue semper porta. Mauris massa. Vestibulum
												lacinia arcu eget nulla.Class aptent taciti sociosqu ad
												litora torquent per conubia nostra, per inceptos himenaeos.
												Curabitursodales ligula in libero.Sed dignissim lacinia
												nunc.</p>
										</div>
									</div>
									<div id="menu1" class="tab-pane fade clearfix">
										<div class="click clearfix">
											<ul>
												<li>Tình trạng:<span> <c:choose>
															<c:when test="${product.available == 0}"> còn hàng</c:when>
															<c:otherwise>
																<span class="msg-fail">hết hàng</span>
															</c:otherwise>
														</c:choose>
												</span></li>
												<li>Chất liệu: <span>Gỗ cao cấp</span></li>
											</ul>
										</div>
									</div>
									<div id="menu2" class="tab-pane fade clearfix">
										<div class="click clearfix">
											<h3>Your comment for:</h3>
											<h3 class="heading_tag">${product.productname}</h3>
											<h5>
												User Rating <span>*</span>
											</h5>
											<h5>
												Caliber: <a href="#"><i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i></a>
											</h5>
											<h5>
												Rating: <a href="#"><i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i></a>
											</h5>
											<h5>
												Rate: <a href="#"><i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i></a>
											</h5>
											<h5>
												Measure: <a href="#"><i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i></a>
											</h5>
											<h6>
												Your Name <span>*</span>
											</h6>
											<input id="review_name" class="form-control" type="text"
												name="name" id="review_name">
											<h6>
												Description <span>*</span>
											</h6>
											<input id="review_description" class="form-control" type="text"
												name="description" id="review_description">
											<h6>
												Comment <span>*</span>
											</h6>
											<textarea id="review_message" class="form-control form_1" name="message" required
												data-error="Please, leave us a review."></textarea>
											<h4>
												<button id="review_submit" type="submit"
												class="red_button review_submit_btn trans_300"
												value="Submit">SUBMIT</button>
											</h4>
										</div>
									</div>
									<div id="menu3" class="tab-pane fade clearfix">
										<div class="click clearfix">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Integer nec odio.Praesent libero. Sed cursus ante
												dapibus diam. Sed nisi. Nulla quis sem at nibh elementum
												imperdiet. Duis sagittis ipsum.Praesent mauris. Fusce nec
												tellus sed augue semper porta. Mauris massa. Vestibulum
												lacinia arcu eget nulla.Class aptent taciti sociosqu ad
												litora torquent per conubia nostra, per inceptos himenaeos.
												Curabitursodales ligula in libero.Sed dignissim lacinia
												nunc.Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Integer nec odio.Praesent libero. Sed cursus ante
												dapibus diam. Sed nisi. Nulla quis sem at nibh elementum
												imperdiet. Duis sagittis ipsum.Praesent mauris. Fusce nec
												tellus sed augue semper porta. Mauris massa. Vestibulum
												lacinia arcu eget nulla.Class aptent taciti sociosqu ad
												litora torquent per conubia nostra, per inceptos himenaeos.
												Curabitursodales ligula in libero.Sed dignissim lacinia
												nunc.Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Integer nec odio.Praesent libero. Sed cursus ante
												dapibus diam. Sed nisi. Nulla quis sem at nibh elementum
												imperdiet. Duis sagittis ipsum.Praesent mauris. Fusce nec
												tellus sed augue semper porta. Mauris massa. Vestibulum
												lacinia arcu eget nulla.Class aptent taciti sociosqu ad
												litora torquent per conubia nostra, per inceptos himenaeos.
												Curabitursodales ligula in libero.Sed dignissim lacinia
												nunc.</p>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="product_home_1 clearfix">
					<div class="col-sm-5 space_left">
						<div class="product_home_1_left clearfix">
							<h3>RELATED BRANDS</h3>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="product_home_1_right clearfix"></div>
					</div>
				</div>
				<div class="product_home_2 clearfix">
					<div class="col-sm-3 border_right_1">
						<div class="product_home_2_inner_main  clearfix">
							<div class="product_home_2_inner_main_1 clearfix">
								<a href="#"><img src="img/7.png"></a>
								<h6>
									<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
								</h6>
								<p class="para_1">
									<a href="#">Lorem ipsum dolor sit...</a>
								</p>
								<h5>
									$40.00 <span>$55.00</span>
								</h5>
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
									<div
										class="product_home_2_inner_main_2_left text-right clearfix">
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
								<a href="#"><img src="img/8.png"></a>
								<h6>
									<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
								</h6>
								<p class="para_1">
									<a href="#">Lorem ipsum dolor sit...</a>
								</p>
								<h5>
									$45.00 <span>$65.00</span>
								</h5>
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
									<div
										class="product_home_2_inner_main_2_left text-right clearfix">
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
								<a href="#"><img src="img/9.png"></a>
								<h6>
									<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
								</h6>
								<p class="para_1">
									<a href="#">Lorem ipsum dolor sit...</a>
								</p>
								<h5>
									$55.00 <span>$75.00</span>
								</h5>
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
									<div
										class="product_home_2_inner_main_2_left text-right clearfix">
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
								<a href="#"><img src="img/10.png"></a>
								<h6>
									<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
								</h6>
								<p class="para_1">
									<a href="#">Lorem ipsum dolor sit...</a>
								</p>
								<h5>
									$65.00 <span>$80.00</span>
								</h5>
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
									<div
										class="product_home_2_inner_main_2_left text-right clearfix">
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
</script>

	<script type="text/javascript">
	!function ($) {

    "use strict"; // jshint ;_;


    /* MAGNIFY PUBLIC CLASS DEFINITION
     * =============================== */

    var Magnify = function (element, options) {
        this.init('magnify', element, options)
    }

    Magnify.prototype = {

        constructor: Magnify

        , init: function (type, element, options) {
            var event = 'mousemove'
                , eventOut = 'mouseleave';

            this.type = type
            this.$element = $(element)
            this.options = this.getOptions(options)
            this.nativeWidth = 0
            this.nativeHeight = 0

            this.$element.wrap('<div class="magnify" \>');
            this.$element.parent('.magnify').append('<div class="magnify-large" \>');
            this.$element.siblings(".magnify-large").css("background","url('" + this.$element.attr("src") + "') no-repeat");

            this.$element.parent('.magnify').on(event + '.' + this.type, $.proxy(this.check, this));
            this.$element.parent('.magnify').on(eventOut + '.' + this.type, $.proxy(this.check, this));
        }

        , getOptions: function (options) {
            options = $.extend({}, $.fn[this.type].defaults, options, this.$element.data())

            if (options.delay && typeof options.delay == 'number') {
                options.delay = {
                    show: options.delay
                    , hide: options.delay
                }
            }

            return options
        }

        , check: function (e) {
            var container = $(e.currentTarget);
            var self = container.children('img');
            var mag = container.children(".magnify-large");

            // Get the native dimensions of the image
            if(!this.nativeWidth && !this.nativeHeight) {
                var image = new Image();
                image.src = self.attr("src");

                this.nativeWidth = image.width;
                this.nativeHeight = image.height;

            } else {

                var magnifyOffset = container.offset();
                var mx = e.pageX - magnifyOffset.left;
                var my = e.pageY - magnifyOffset.top;

                if (mx < container.width() && my < container.height() && mx > 0 && my > 0) {
                    mag.fadeIn(100);
                } else {
                    mag.fadeOut(100);
                }

                if(mag.is(":visible"))
                {
                    var rx = Math.round(mx/container.width()*this.nativeWidth - mag.width()/2)*-1;
                    var ry = Math.round(my/container.height()*this.nativeHeight - mag.height()/2)*-1;
                    var bgp = rx + "px " + ry + "px";

                    var px = mx - mag.width()/2;
                    var py = my - mag.height()/2;

                    mag.css({left: px, top: py, backgroundPosition: bgp});
                }
            }

        }
    }


    /* MAGNIFY PLUGIN DEFINITION
     * ========================= */

    $.fn.magnify = function ( option ) {
        return this.each(function () {
            var $this = $(this)
                , data = $this.data('magnify')
                , options = typeof option == 'object' && option
            if (!data) $this.data('tooltip', (data = new Magnify(this, options)))
            if (typeof option == 'string') data[option]()
        })
    }

    $.fn.magnify.Constructor = Magnify

    $.fn.magnify.defaults = {
        delay: 0
    }


    /* MAGNIFY DATA-API
     * ================ */

    $(window).on('load', function () {
        $('[data-toggle="magnify"]').each(function () {
            var $mag = $(this);
            $mag.magnify()
        })
    })

} ( window.jQuery );
	</script>
</body>

</html>
