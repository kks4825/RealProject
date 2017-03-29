<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>황제투어</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv='imagetoolbar' content='no' >
<link rel="stylesheet" type="text/css" href="css/board/ext-all.css">
<link rel="stylesheet" type="text/css" href="css/board/common.css">
<script type="text/javascript" src="js/board/jquery.min.js"></script>
<script type="text/javascript" src="js/board/ext-jquery-adapter.js"></script>
<script type="text/javascript" src="js/board/ext-all-3.js"></script>
<script type="text/javascript" src="js/board/lang.js"></script>
<script type="text/javascript" src="js/board/common.js"></script>
<!-- 제이쿼리 버전 충돌로 인해 재설정 -->
<script type="text/javascript" src="js/board/jquery-1.11.3.min.js"></script>
<script>
	var jb = jQuery.noConflict();
</script>
<script type="text/javascript" src="js/board/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="js/board/project_ui.js"></script>
<script type="text/javascript" src="js/board/nav.js"></script>
<script type="text/javascript" src="js/board/keydown.js"></script>
<script type="text/javascript" src="js/board/bookmark.js"></script>
<!-- // -->


<link rel="stylesheet" type="text/css" href="css/board/reset.css" />
<link rel="stylesheet" type="text/css" href="css/board/skin.css" />

<!-- banner slider-->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="js/board/jquery.bxslider.min.js"></script>
<link href="css/board/jquery.bxslider.css" rel="stylesheet" />

</head>


<body oncontextmenu="return false;" onselectstart="return false;" class="kr">

<div id="wrap">
	<div id="header">
<div id="gnb">
	<div class="head_inner">
	<c:if test="${sessionScope.memId == null }">
		<ul class="gnb_right">
			<li><a href="/TravelAgency/loginForm.do">Login</a></li>
			<li><a href="/TravelAgency/joinAgree.do">join</a></li>
			<li><a href="#" id="favorite" title="즐겨찾기 등록">bookmark</a></li>
			<li><a href="#">contact us</a></li>
		</ul>
	</c:if>
	<c:if test="${sessionScope.memId != null }">
		<ul class="gnb_right">
			<li><a href="/TravelAgency/logout.do">Logout</a></li>
			<li><a href="/TravelAgency/myPage1.do?pg=1"><span class="glyphicon glyphicon-home"></span> mypage</a></li>
			<li><a href="#" id="favorite" title="즐겨찾기 등록">bookmark</a></li>
			<li><a href="#">contact us</a></li>
		</ul>
	</c:if>
</div>
</div><!--gnb-->
<div id="lnb" >
	<div class="head_inner">
		<h1 style="width:200px;"><a href="/TravelAgency/index.do"><img src="images/main/EmperorTour.png" alt="로고"></a></h1>
		<ul class="lnb_nav">
			<li><a href="#">company</a></li>
			<li><a href="#">packages</a></li>
			<li><a href="#">information </a></li>
			<li><a href="#">customer&nbsp;center</a></li>
			<li><a href="#">inquiry</a></li>
		</ul>
	</div>
	<div class="drop_menu_wrap">
		<h1 style="width:500px; height:350px;"><a href="#"><!-- <img src="" alt="드롭다운"> --></a></h1>
		<ul class="drop_list">
			<li>
				<ul class="drop_child">
					<li><a href="/about/about">인사말</a></li>
					<li><a href="/about/history">연혁</a></li>
					<li><a href="/about/location">오시는길</a></li>
				</ul>
			</li>
			<li>
				<ul class="drop_child">
					<li><a href="/product/product1">동남아</a></li>
					<li><a href="/product/prize">아시아</a></li>
					<li><a href="/product/e-service">유럽</a></li>
				</ul>
			</li>
			<li style="width:148px;">
				<ul class="drop_child">
					<li><a href="/business/business1">여행 상품</a></li>
					<li><a href="/business/business2">이달의 여행 추천</a></li>
				</ul>
			</li>
			<li style="width:206px;">
				<ul class="drop_child">
					<li><a href="/TravelAgency/boardNotice.do?pg=1">공지사항</a></li>
					<li><a href="/TravelAgency/boardNotice.do?pg=1">이벤트</a></li>
				</ul>
			</li>
			<li>
				<ul class="drop_child">
					<li><a href="/TravelAgency/boardNoticeQna.do?pg=1">질문과답변</a></li>
					<li><a href="/TravelAgency/boardNoticeQna.do?pg=1">1:1문의</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div><!--lnb-->
	</div><!--header-->
	<!-- Main -->
	<div id="main">
		<jsp:include page="${display}" />
	</div>
</body>
</html>

	

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
						Contact Us
					</a>
					<ul class="dropdown-menu">
						<li><a href="/TravelAgency/boardNotice.do?pg=1">공지사항</a></li>
						<li><a href="#">회원게시판</a></li>
						<li><a href="/TravelAgency/boardNoticeQna.do?pg=1">FnA</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="">
						Packages <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/TravelAgency/packageView.do">유럽</a></li>
						<li><a href="#">동남아</a></li>
						<li><a href="#">미주</a></li>
					</ul></li>
				<li><a href="#">Page 2</a></li>
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
						<a href="/TravelAgency/mypage1AfterInfoChange.do">
							<span class="glyphicon glyphicon-home"></span> 
							myPage
						</a>
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
</html> --%>
