<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>nav</title>
</head>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
        <li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/ecotype/gallery">Cats<span class="caret"></span></a>
        </li>
        <li><a href="${pageContext.request.contextPath}/cafemap/cafemap">Cats Cafe</a></li>
        </ul>
        <div class="navbar-header">
            <a class="navbar-brand">고양이 천국</a>
        </div>
        <div>
        <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/member/login">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/member/memberReg">Sign up</a></li>
            <form id="signin" class="navbar-form navbar-right" role="form">
                <!-- <button type="submit" class="btn btn-primary">Login</button> -->
            </form>
        </ul>
        </div>
    </div>
</nav>


</body>
</html>