<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | Digital Routines</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 80px;
	background-color: #f5f5f5;
}

.footer p {
	margin-top: 10px;
}

.container {
	height: 80vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.form-group {
	width: 100%;
	font-size: 20px;
	border-radius: 5px;
	border: 1px solid;
	height: 40px;
}
</style>
</head>

<body>
	<nav class="navbar navbar-default">
		<a href="/" class="navbar-brand">Digital Routine</a>
		<ul class="nav navbar-nav">
			<li class="active"><a href="/login">Home</a></li>
			<li><a href="/routines">Routines</a></li>
			<li><a href="https://www.github.com/khatri09" target="_blank">Github
					Codes</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
			<li><a href="/login">Login</a></li>
		</ul>
	</nav>

	<div class="container">
		<div class="form-container">
			<form action="/login" method="post">
				<div class="row">
					<input class="form-group" type="text" placeholder="username"
						name="username" />
				</div>
				<div class="row">
					<input class="form-group" type="password" name="password" />
				</div>
				<p><font color="red">${errorMsg}</font></p>
				<div class="row">
					<input class="btn btn-info form-group" type="submit" value="Login" />
				</div>
			</form>
		</div>
	</div>

	<%@ include file="../fragments/footer.jspf"%>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>
