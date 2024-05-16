<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Store</title>
<link href="css/contact.css" rel="stylesheet">
</head>
<body>
	<section id="center" class="center_contact clearfix">
		<div class="center_product_main clearfix" style="background-image: url('img/team/contact.png');">
			<div class="container">
				<div class="row">
					<div class="center_product_1 clearfix" >
						<div class="col-sm-6">
							<div class="center_product_1_left clearfix">
								<h4>CONTACT US</h4>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="center_product_1_right text-right clearfix">
								<ul>
									<li><a href="#">Home <i class="fa fa-caret-right"></i></a></li>
									<li>Contact Us <i class="fa fa-caret-right"></i></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="contact_page">
		<div class="container">
			<div class="row">
				<div class="contact_page_1 clearfix">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125404.23327005396!2d106.70744812003548!3d10.820319193426988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d85e042bf04b%3A0xbb26baec1664394d!2zVGjhu6cgxJDhu6ljLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1714498727498!5m2!1svi!2s"
						width="100%" height="350px" frameborder="0" style="border: 0"
						allowfullscreen=""></iframe>
				</div>
				<div class="contact_page_2 clearfix">
					<div class="col-sm-6">
						<div class="contact_page_2_inner clearfix">
							<h3>CONTACT US</h3>
							<p>Để liên hệ với chúng tôi tại LoveMyHouse và biết thêm
								thông tin về sản phẩm, dịch vụ hoặc bất kỳ câu hỏi nào khác, vui
								lòng sử dụng thông tin liên hệ sau:</p>
							<ul>
								<li><i class="fa fa-map-marker"></i> 97 Man Thiện, phường
									Hiệp Phú, thành phố Thủ Đức.</li>
								<li><i class="fa fa-envelope"></i> Email: <a href="#">info@gmail.com</a></li>
								<li><i class="fa fa-phone"></i> Phone: <a href="#">0123456XYZ</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div id="menu2" class="tab-pane fade clearfix active in">
							<div class="click clearfix">
								<h3>ADD YOUR REVIEWS</h3>
								<h6>
									Name <span>*</span>
								</h6>
								<input class="form-control" type="text">
								<h6>
									Email <span>*</span>
								</h6>
								<input class="form-control" type="text">
								<h6>
									Phone <span>*</span>
								</h6>
								<input class="form-control" type="text">
								<h6>
									Comment <span>*</span>
								</h6>
								<textarea class="form-control form_1"></textarea>
								<button type="submit" class="login100-form-btn">SUBMIT
									COMMENT</button>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

</body>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>