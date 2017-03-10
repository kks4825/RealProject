<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Linear by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Linear by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="../main/js/jquery.min.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
		<script src="../main/js/skel.min.js"/></script>
		<script src="../main/js/skel-panels.min.js"></script>
		<script src="../main/js/init.js"></script>
		<noscript>
			<link href="<c:url value="../main/css/skel-noscript.css" />" rel="stylesheet">
			<link href="<c:url value="../main/css/style.css" />" rel="stylesheet">
			<link href="<c:url value="../main/css/style-desktop.css" />" rel="stylesheet">
		</noscript>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	   	<script src="../main/js_bt/bootstrap.min.js"></script>
		<style>

		img{
			height:300px;
		}
		</style>
	</head>
	<body class="homepage">

	<!-- Header -->
		<div id="header" class="cont" style="padding-bottom: 280px;">
			<div id="nav-wrapper">
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="active"><a href="index.html">Homepage</a></li>
						<li><a href="#">Log In</a></li>
						<li><a href="#">Packages</a></li>
						<li><a href="#">Search</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><!-- SearchBar -->
							<div style="display:inline-block;"><input type="text" class="form-control" placeholder="Search" style="width:410px;"></div>
							<div style="display:inline-block">
								<span class="glyphicon glyphicon-search" style="cursor: pointer;"></span>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Main -->
		<div id="main">
			<jsp:include page="${display }" />
		</div>

	<!-- Tweet -->
		<div id="tweet">
			<div class="container">
				<section>
					<blockquote>&ldquo;In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat.&rdquo;</blockquote>
				</section>
			</div>
		</div>
	</body>
</html>
