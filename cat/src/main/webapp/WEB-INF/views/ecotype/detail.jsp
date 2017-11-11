<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/nav.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="상세정보" />
<style>
#email, #password {
	height: 30px;
	padding-top: 6px;
	padding-bottom: 6px;
	padding-left: 12px;
	padding-right: 12px;
	margin-top: 0px;
	border-bottom-width: 0px;
}
#work {
    padding-top: 0px;
    padding-bottom: 50px;
}
</style>
<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true" />
<meta name="MobileOptimized" content="320" />

<!-- Mobile Internet Explorer ClearType Technology -->
<!--[if IEMobile]>
    <meta http-equiv="cleartype" content="on">  <![endif]-->

<!-- Bootstrap -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Main Style -->
<link href="/resources/css/main.css" rel="stylesheet">

<!-- FancyBox -->
<link href="/resources/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">

<!-- Font Icons -->
<link href="/resources/css/fonts.css" rel="stylesheet">


<!-- Responsive -->
<link href="/resources/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<!--<link href="/resources/css/responsive.css" rel="stylesheet">-->

<!-- Supersized -->
<link href="/resources/css/supersized.css" rel="stylesheet">
<!--<link href="/resources/css/supersized.shutter.css" rel="stylesheet">-->


<!-- Fav Icon -->
<link rel="shortcut icon" href="#">

<link rel="apple-touch-icon" href="#">

<style>
.title-page {
	margin-bottom: 50px;
}

.origin {
	width: 700px;
	height: 600px;
	margin: 0 auto;
}

.imgbox {
	margin: 0px auto;
	max-width: 500px;
	max-height: 400px;
	padding: 3px;
}

.imgbox>img {
	width: 100%;
	height: 100%;
}

.explain {
	margin-top: 15px;
	display: inline-block;
	width: 700px;
	height: 600px;
	color: #ccc;
/* 	border: solid 1px cornflowerblue; */
}
</style>
<!-- Modernizr -->
<script src="/resources/js/modernizr.js"></script>

</head>
</head>
<body>
	<div id="work" class="page">
		<div class="container">
			<!-- Title Page -->
			<div class="title-page">
				<h2 class="title">${info.ename}</h2>
			</div>
			<!-- End Title Page -->
			<div class="origin">
				<div class="imgbox">
					<img src="/resources/img/cat-img/${info.epath}">
				</div>

				<span class="explain">${info.econtent}</span>

			</div>



		</div>
		<!-- End Portfolio Projects -->
	</div>
	<!-- End Our Work Section -->


	<!-- Js -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<!-- jQuery Core -->
	<script src="/resources/js/bootstrap.min.js"></script>
	<!-- Bootstrap -->
	<script src="/resources/js/supersized.3.2.7.min.js"></script>
	<!-- Slider -->
	<script src="/resources/js/waypoints.js"></script>
	<!-- WayPoints -->
	<script src="/resources/js/waypoints-sticky.js"></script>
	<!-- Waypoints for Header -->
	<script src="/resources/js/jquery.isotope.js"></script>
	<!-- Isotope Filter -->
	<script src="/resources/js/jquery.fancybox.pack.js"></script>
	<!-- Fancybox -->
	<script src="/resources/js/jquery.fancybox-media.js"></script>
	<!-- Fancybox for Media -->
	<script src="/resources/js/plugins.js"></script>
	<!-- Contains: jPreloader, jQuery Easing, jQuery ScrollTo, jQuery One Page Navi -->
	<script src="/resources/js/main.js"></script>
	<!-- Default JS -->
	<script>
		console.log('${info}');
	</script>
	
	<!-- End Js -->

</body>
</html>