<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<!DOCTYPE html>
<html>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/global.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />


<head>
<meta charset="UTF-8">
<title>Đăng Nhập</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<form:form action="account/signin.htm" method="post"
		modelAttribute="user">
		<section id="center" class="center_login clearfix">
			<div class="center_product_main clearfix">
				<div class="container">
					<div class="row">
						<div class="center_login_1 clearfix">
							<h3>USER SIGN IN</h3>
							<hr>
							<div class="forgot-header">
								<h6 style="color: red; font-style: italic; padding-top: 15px;">${message}</h6>
							</div>
						</div>
						<div class="center_login_2 clearfix">
							<div class="col-sm-6 space_left">
								<div class="center_login_2_left">
									<h4>REGISTERED USERS</h4>
									<hr>
									<p>If you are a registered user, sign in with your email
										address.</p>
									
									<div class="wrap-input100 validate-input"
										data-validate="Valid email is required: ex@abc.xyz">
										<h5>
											Email <span>*</span>
										</h5>
										<input class="form-control" type="text" name="email"
											placeholder="Email" value="${email}" /> </span>
									</div>
									<div class="wrap-input100 validate-input"
										data-validate="Password is required">
										<h5>
											Password <span>*</span>
										</h5>
										<input class="form-control" type="password" name="pw"
											placeholder="Password" value="${pwd}" />
									</div>
									<span style="color: #001100; font-style: italic;"> <input
										type="checkbox" name="rm" /> Nhớ tài khoản
									</span>
									<!-- <h5>Password <span>*</span></h5>
			<input class="form-control" type="text"> -->
									<div class="center_login_2_left_inner clearfix">
										<div class="col-sm-6 space_left">
											<button type="submit" class="login100-form-btn">LOG
												IN</button>
										</div>
										<div class="col-sm-6">
											<h5>
												<span class="txt1"> Bạn quên </span> <a class="txt2"
													href="account/forgot.htm">Email/ Mật khẩu? </a>
											</h5>
										</div>
									</div>
									<h2>* Required Terms</h2>
								</div>
							</div>
							<div class="col-sm-6 space_left">
								<div class="center_login_2_left">
									<h4>NEW USERS</h4>
									<hr>
									<p>Chưa có tài khoản thì tạo ngay nào</p>
									<div class="center_login_2_left_inner clearfix">
										<div class="col-sm-12 space_left">
											<h6>
												<a href="account/register.htm">SIGN UP</a>
											</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form:form>


	<%@include file="/WEB-INF/views/include/footer.jsp"%>
	<!--===============================================================================================-->

	<%-- <script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!--===============================================================================================-->
	<script src="<c:url value='/resources/styles/bootstrap4/popper.js' />"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
	<script src="<c:url value='/resources/login/js/main.js' />"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.2/vanilla-tilt.min.js"></script> --%>
</body>
</html>