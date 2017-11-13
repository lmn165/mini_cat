<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>고양이 천국</title>

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
<div class="container">
    <div class="top">
        <h1 id="title" class="hidden"><span id="logo">고양이 <span>천국</span></span></h1>
    </div>
    
    <form method="post">
    <div class="login-box animated fadeInUp">
        <div class="box-header">
            <h2>Log In</h2>
        </div>
        <label for="id">Email</label>
        <br/>
        <input type="text" id="id">
        <br/>
        <label for="pw">Password</label>
        <br/>
        <input type="password" id="pw">
        <br/>
        <button type="submit">Login</button>
        <a href="${pageContext.request.contextPath}/member/memberReg">Sign In</a>
        <br/>
    </div>
    </form>
</div>
</body>

<script>
    $(document).ready(function () {
        $('#logo').addClass('animated fadeInDown');
        $("input:text:visible:first").focus();
    });
    $('#username').focus(function() {
        $('label[for="username"]').addClass('selected');
    });
    $('#username').blur(function() {
        $('label[for="username"]').removeClass('selected');
    });
    $('#password').focus(function() {
        $('label[for="password"]').addClass('selected');
    });
    $('#password').blur(function() {
        $('label[for="password"]').removeClass('selected');
    });
</script>

</html>
