<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/nav.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="갤러리 화면" />

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

<!-- Supersized -->
<link href="/resources/css/supersized.css" rel="stylesheet">
<!-- UserDefine -->
<link href="/resources/css/userdefine.css" rel="stylesheet">

<!-- Modernizr -->
<script src="/resources/js/modernizr.js"></script>
<!-- Analytics -->
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'Insert Your Code' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
</head>
<body>
	<div id="work" class="page">
		<div class="container">
			<div class="grid">



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

	<script
		src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
	<script src="/resources/js/masonry.pkgd.js"></script>
	<!-- Default JS -->
	
	
	<script>
		$(document).ready(function imgLoding() {
			var $grid = $(".grid");
			
			
			
			var imgCon ="";
			for(var i = 0; i < 15 ; i++){
				imgCon += '<div class="item-thumbs span3 photography grid-item grid-item--width">' + 
				'<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Cat" href="/resources/img/1.jpg">'+
				'<span class="overlay-img"></span>'+
				'<span class="overlay-img-thumb font-icon-plus"></span></a>'+
				'<img src="/resources/img/1.jpg" alt="So much cute kitty!"></div>';
			}
			
			$grid.html(imgCon);
			
// 			for(var i = 0; i < 20; i++){
// 				imgCon += '<div class="item-thumbs span3 photography grid-item">' + 
// 				'<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Cat" href="/resources/img/1.jpg">'+
// 				'<span class="overlay-img"></span>'+
// 				'<span class="overlay-img-thumb font-icon-plus"></span></a>'+
// 				'<img src="/resources/img/1.jpg" alt="So much cute kitty!"></div>';
// 			}
			
		});
	
	</script>
	<!-- End Js -->
</body>
</html>