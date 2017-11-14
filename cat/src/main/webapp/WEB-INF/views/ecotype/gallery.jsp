<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/nav.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gallery</title>
<meta name="description" content="갤러리 화면" />

<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true" />
<meta name="MobileOptimized" content="320" />

<!-- 합쳐지고 최소화된 최신 CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <!-- 부가적인 테마 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

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

<link rel="stylesheet" href="/resources/css/nav.css"> 

<!-- Modernizr -->
<script src="/resources/js/modernizr.js"></script>
<!-- Analytics -->

<!-- <style> -->
<!-- 	.navbar-inverse { -->
<!-- 	background-color: black; -->
<!-- 	border-color: black; -->
<!-- 	background: black; -->
<!-- 	height: 100px; -->
	
<!-- } -->
<!-- </style> -->
</head>
<body>
	<div id="work" class="page">
		<div class="container">
			<div class="grid">
				<!-- Item Project and Filter Name -->
				<c:forEach items="${list}" var="Glry">
					<div
						class="item-thumbs span3 photography grid-item grid-item--width${Glry.width}">
						<!-- Fancybox - Gallery Enabled - Title - Full Image -->
						<a class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="${Glry.ename}<a style='font-size: 14px; color: #02a5fd;' href='/ecotype/detail/${Glry.eno}'>상세보기</a>"
							href="/resources/img/cat-img/${Glry.epath}"> <span
							class="overlay-img"></span> <span
							class="overlay-img-thumb font-icon-plus"></span>
						</a>
						<!-- Thumb Image and Description -->
						<img src="/resources/img/cat-img/${Glry.epath}"
							alt="${Glry.summary}">
					</div>
				</c:forEach>
				<!-- End Item Project -->
			</div>
		</div>
		<!-- End Portfolio Projects -->
	</div>
	<!-- End Our Work Section -->
<%-- 	<input type="hidden" id="list" value="${list}" > --%>
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
	/*
		$(function (){
			var result = new Array();
			
			<c:forEach items="${list}" var="temp">
				var json = new Object();
				json.ename="${temp.ename}";
				json.epath="${temp.epath}";
				json.summary="${temp.summary}";
				json.econtent="${temp.econtent}";
				result.push(json);			
			</c:forEach>
// 			console.log("datas=" + JSON.stringify(result));
			
			
			for (var i = 0; i<5; i++){
				console.log(result[i].ename);
			}
		});
	*/
	
		// 		$(document).ready(function imgLoding() {
		// 			var $itemImg = $(".item-thumbs img");
		// 			var $itemA = $(".item-thumbs a");
		// 			console.log($itemA);
		// 			for (var i=0; i < $itemA.length; i++) {
		// 				console.log($itemA.attr("href"));
		// 				var temp = $itemA[i];
		// 				console.log(temp.attr("href"));
		// 			}
		// 		});
	</script>
	<!-- End Js -->
</body>
</html>