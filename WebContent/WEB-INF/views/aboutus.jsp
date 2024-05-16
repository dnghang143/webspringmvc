<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
  <link href="<c:url value='css/about.css' />" rel="stylesheet">
<!-- <link href="css/about.css" rel="stylesheet"> -->
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
	<section id="center" class="center_about clearfix">
		<div class="center_product_main clearfix"  style="background-image: url('img/team/about.png');">
			<div class="container">
				<div class="row">
					<div class="center_product_1 clearfix">
						<div class="col-sm-6">
							<div class="center_product_1_left clearfix">
								<h4>ABOUT US</h4>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="center_product_1_right text-right clearfix">
								<ul>
									<li><a href="#">Home <i class="fa fa-caret-right"></i></a></li>
									<li>About Us <i class="fa fa-caret-right"></i></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="about_page">
		<div class="container">
			<div class="row">
				<div class="about_page_1 clearfix">
					<div class="col-sm-9">
						<div class="about_page_1_left clearfix">
							<h3>Welcome To Store</h3>
							<div class="about_page_1_left_inner clearfix">
								<div class="col-sm-4 space_left">
									<img src="img/anh.jpg" width="100%" height="300px">
								</div>
								<div class="col-sm-8">
									<p>Chào mừng bạn đến với LoveMyHouse - điểm đến lý tưởng
										cho mọi nhu cầu về nội thất để tạo nên không gian sống hoàn
										hảo và ấm cúng! Tại LoveMyHouse, chúng tôi không chỉ cung cấp
										các sản phẩm nội thất chất lượng cao mà còn mang đến cho bạn
										trải nghiệm mua sắm đầy tinh tế và tiện lợi.</p>
									<p>Với một đội ngũ nhân viên tận tâm và giàu kinh nghiệm,
										chúng tôi cam kết mang đến cho bạn sự phục vụ tận tình và
										chuyên nghiệp nhất từ khi bạn bước vào cửa hàng cho đến khi
										bạn hoàn tất việc lựa chọn sản phẩm phù hợp.</p>
									<p>Tại LoveMyHouse, chúng tôi tự hào là địa chỉ tin cậy để
										bạn thực hiện những ý tưởng thiết kế nội thất của mình. Với sự
										đa dạng về kiểu dáng, chất liệu và mẫu mã, chúng tôi tin rằng
										bạn sẽ tìm thấy những sản phẩm phản ánh phong cách và cá tính
										riêng của bạn.</p>
									<p>Hãy đến với LoveMyHouse để khám phá không gian mua sắm
										nội thất đẳng cấp và tận hưởng trải nghiệm mua sắm độc đáo mà
										chúng tôi mang đến!</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="about_page_1_right clearfix">
							<h3>Our Quality</h3>
							<ul>
								<li><i class="fa fa-check"></i> <a href="#">Shopping &
										Delivery</a></li>
								<li><i class="fa fa-check"></i> <a href="#">Safe
										Booking</a></li>
								<li><i class="fa fa-check"></i> <a href="#">Worldwide
										Booking</a></li>
								<li><i class="fa fa-check"></i> <a href="#">Associate</a></li>
								<li class="border_none_1"><i class="fa fa-check"></i> <a
									href="#">Our Staff</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="about_page_2 text-center clearfix">
					<h2>Our Team</h2>
					<p>""Đôi lời gửi đến quý khách hàng thân yêu của cửa hàng chúng
						tôi. Cảm ơn bạn vì đã lựa chọn và tin tưởng chúng tôi giữa vô vàng
						cửa hàng nội thất ngoài kia. Hy vọng chúng tôi đã đem lại trải
						nghiệm tốt đẹp và mong được hợp tác nhiều lần nữa vì sự phát triển
						của chúng tôi và vì sự sang trọng của ngôi nhà của bạn. Cảm ơn rất
						nhiều <3""</p>
				</div>
				<div class="about_page_3 text-center clearfix">
					<div class="col-sm-3 profile">
						<div class="img-box">
							<img src="img/team/hang.png" width="100%" class="img-responsive">
							<ul class="text-center">
								<a href="#"><li><i class="fa fa-facebook"></i></li></a>
								<a href="#"><li><i class="fa fa-twitter"></i></li></a>
								<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
							</ul>
						</div>
						<h1>
							<a href="#">Dang Hang</a>
						</h1>
						<h2>Developer</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
					</div>
					<div class="col-sm-3 profile">
						<div class="img-box">
							<img src="img/team/luat.png" width="100%" class="img-responsive">
							<ul class="text-center">
								<a href="#"><li><i class="fa fa-facebook"></i></li></a>
								<a href="#"><li><i class="fa fa-twitter"></i></li></a>
								<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
							</ul>
						</div>
						<h1>
							<a href="#">Dinh Luat</a>
						</h1>
						<h2>Designer</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
					</div>
					<div class="col-sm-3 profile">
						<div class="img-box">
							<img src="img/42.jpg" width="100%" class="img-responsive">
							<ul class="text-center">
								<a href="#"><li><i class="fa fa-facebook"></i></li></a>
								<a href="#"><li><i class="fa fa-twitter"></i></li></a>
								<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
							</ul>
						</div>
						<h1>
							<a href="#">Semper Porta</a>
						</h1>
						<h2>Manager</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
					</div>
					<div class="col-sm-3 profile">
						<div class="img-box">
							<img src="img/43.jpg" width="100%" class="img-responsive">
							<ul class="text-center">
								<a href="#"><li><i class="fa fa-facebook"></i></li></a>
								<a href="#"><li><i class="fa fa-twitter"></i></li></a>
								<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
							</ul>
						</div>
						<h1>
							<a href="#">Conubia Nostra</a>
						</h1>
						<h2>Director</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
					</div>
				</div>
				<div class="about_page_4 clearfix">
					<h3>Our customer Review</h3>
					<p>
						<i class="fa fa-quote-left"></i> "Tôi rất hài lòng với trải nghiệm
						mua sắm tại LoveMyHouse! Nhân viên thân thiện và am hiểu về nhu
						cầu của khách hàng, họ đã giúp tôi chọn lựa những món đồ nội thất
						phản ánh phong cách của gia đình mình một cách hoàn hảo. Sản phẩm
						chất lượng và đa dạng, giúp tôi dễ dàng tạo nên không gian sống ấm
						cúng và đẳng cấp. Tôi chắc chắn sẽ quay lại LoveMyHouse cho những
						dự án nội thất tiếp theo của mình!"
					</p>
					<h4>
						- Per Inceptos - <span>Promoter</span>
					</h4>
				</div>
			</div>
		</div>
	</section>
</body>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>