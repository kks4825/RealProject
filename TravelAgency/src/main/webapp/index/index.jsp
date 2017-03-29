<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>

<html>
<head>
<title>TravelAgency</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#package_list_table th{
	width:100px;
}
#package_list_table td{
	width:500px;
}
</style>
<link rel="stylesheet" href="css/product/thumbnail.css?ver=1" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script src="http://code.jquery.com/jquery-1.3.2.min.js" ></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" ></script> 
<!-- <script src="http://codepen.io/andytran/pen/vLmRVp.js" ></script> -->
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js" ></script>
<!-- <script src="//use.typekit.net/xyl8bgh.js"></script> -->
</head>
<body>
	<!-- Header -->
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/TravelAgency/index.do">TravelAgency</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="">
						Packages
					</a>
					<ul class="dropdown-menu">
						<li><a href="/TravelAgency/packageThumbView.do?category=eu">유럽</a></li>
						<li><a href="/TravelAgency/packageThumbView.do?category=ea">동남아</a></li>
						<li><a href="/TravelAgency/packageThumbView.do?category=am">미주</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="">
						Contact Us
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">공지사항</a></li>
						<li><a href="#">회원게시판</a></li>
						<li><a href="#">FnA</a></li>
					</ul>
				</li>
			</ul>
			<c:if test="${sessionScope.memId == null }">
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="/TravelAgency/joinAgree.do">
							<span class="glyphicon glyphicon-user"></span> 
							Sign Up
						</a>
					</li>
					<li>
						<a href="/TravelAgency/loginForm.do"><span class="glyphicon glyphicon-log-in"></span>
							Login
						</a>
					</li>
				</ul>
			</c:if>
			<c:if test="${sessionScope.memId != null }">
				<ul class="nav navbar-nav navbar-right">
					<li>
						<c:if test="${sessionScope.memId != 'admin'}">
							<a href="/TravelAgency/myPage1.do?pg=1">
								<span class="glyphicon glyphicon-home"></span> 
								myPage
							</a>
						</c:if>
						<c:if test="${sessionScope.memId == 'admin' }">
							<li class="tca">
								<a href="/TravelAgency/payCheck.do">
									<span class="glyphicon glyphicon-home"></span> 
									admin
								</a>
							</li>
						</c:if>
					</li>
					<li>
						<a href="/TravelAgency/logout.do"><span class="glyphicon glyphicon-log-out"></span>
							Logout
						</a>
					</li>
				</ul>
			</c:if>
		</div>
	</nav>

	<!-- Main -->
	<div id="main">
		<jsp:include page="${display}" />
	</div>
</body>
</html>
