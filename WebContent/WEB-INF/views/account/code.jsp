<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link
	href="<c:url value='/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />"
	rel="stylesheet">
<!--===============================================================================================-->
<link href="<c:url value='/resources/login/css/util.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/login/css/style.css' />"
	rel="stylesheet">
<%@include file="/WEB-INF/views/include/header.jsp"%>
<!--===============================================================================================-->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/hamburgers/1.2.1/hamburgers.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css">
<link
	href="<c:url value='/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/animate.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/styles/main_styles.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/styles/responsive.css' />"
	rel="stylesheet">

<head>
<meta charset="UTF-8">
<title>Xác nhận code</title>
<base href="${pageContext.servletContext.contextPath}/">
<link href="<c:url value='/resources/login/forgot.css' />" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Ubuntu:500'
	rel='stylesheet' type='text/css'>
</head>
<body>
        <div class="forgot-header">
			<h6 style="color: red; font-style: italic; padding-top: 15px;">${message}</h6>
		</div>	
<form:form action="account/code.htm" method="post" >
<div class="limiter">
		<div class="container-login100">	
						<div class="login100-pic js-tilt" data-tilt data-tilt-max="20" data-tilt-speed="100" data-tilt-perspective="500">
				<img src="<c:url value="/resources/login/images/img-01.png"/>"alt="IMG">
			</div>	
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title">
						<h1>Xác nhận code</h1>
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="email" name="email" placeholder="Nhập Email" value="${email}"/> 
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>			

                    <div class="wrap-input100 validate-input" data-validate = "Code is required">
						<input class="input100" type="password" name="code" placeholder="Nhập code"/> 
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

                    <div class="container-login100-form-btn">
						<button class="login100-form-btn">
						<input type="submit" value ="" class="forgot-button" />
						Xác nhận
						</button>
					</div>									
				</form>
			</div>
		</div>
	</div>
	</form:form>
	<%@include file="/WEB-INF/views/include/footer.jsp"%>
<!--===============================================================================================-->	

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--===============================================================================================-->
<script src="<c:url value='/resources/styles/bootstrap4/popper.js' />" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script src="<c:url value='/resources/login/js/main.js' />" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.2/vanilla-tilt.min.js"></script>
<script type="text/javascript" src="resources/js/forgot.js"></script>
</body>
</html>




