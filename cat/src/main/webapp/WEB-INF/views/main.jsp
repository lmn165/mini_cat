<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/nav.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.vide.js"></script>
<title>Insert title here</title>
<style>

html, body {
	margin: 0;
	width: 100%;
	height: 100%;
}

/*###### 이부분이 이미지에대한 CSS옵션입니다. ######*/
.image {
	height: 726px;
	background: url("darkcat.jpg") no-repeat center center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-position: center;
}
/*###### 여기까지 ######*/
.btn-primary {
	color: white;
	background-color: inherit;
	border-color: transparent;
}

.btn-primary:hover {
	color: bisque;
	background-color: black;
	border-color: #0f0f0f;
}

.navbar-inverse {
	background-color: transparent;
	border-color: transparent;
}

.navbar-inverse:hover {
	background-color: #0f0f0f;
}

.navbar-inverse .navbar-nav>.active>a {
	color: white;
	background-color: transparent;
}
.navbar-inverse .navbar-nav>.active>a:hover {
	color: bisque;
}

.navbar-inverse .navbar-nav>li>a {
	color: white;
}
.navbar-inverse .navbar-nav>li>a:hover {
	color: bisque;
}

.navbar-inverse .navbar-brand {
    color: white;
}
.navbar-inverse .navbar-brand:hover {
    color: bisque;
}

.navbar-brand {
	position: absolute;
	left: 45%;
	margin-left: -45px !important; /* 50% of your logo width */
	display: block;
	font-size: 40px;
}

a {
    color: white;
    text-decoration: none;
}
a:hover {
    color: bisque;
    text-decoration: none;
}

</style>
</head>
<body
	data-vide-bg="${pageContext.request.contextPath}/resources/video/blackCat">
	<!--<script>window.jQuery || document.write('<script src="../libs/jquery/dist/jquery.min.js"><\/script>')</script>-->

</body>
</html>