<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>TravelAgency</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv='imagetoolbar' content='no'>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="css/board/ext-all.css">
<link rel="stylesheet" type="text/css" href="css/board/common.css">
<link rel="stylesheet" type="text/css" href="css/board/reset.css" /> 
<link rel="stylesheet" type="text/css" href="css/board/skin.css" />

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
<script type="text/javascript" src="js/board/project_ui.js"></script>
<script type="text/javascript" src="js/board/nav.js"></script> 
<script type="text/javascript" src="js/board/keydown.js"></script>
<script type="text/javascript" src="js/board/bookmark.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.min.js"></script> 

<script>
$(document).ready(function() {
	$('#searchBtn').click(function() {
		var searchText = $('#searchBar').val();
		
		if (searchText.length < 2) {
			alert("도시 이름을 2자 이상 입력하세요.");
		} else {
			location.href = "/TravelAgency/packageSearch.do?search="+ searchText;
		}
	});
});
</script>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div id="gnb">
				<div class="head_inner">
					<c:if test="${sessionScope.memId == null }">
						<ul class="gnb_right">
							<li><a href="/TravelAgency/loginForm.do">Login</a></li>
							<li><a href="/TravelAgency/joinAgree.do"><span
									class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							<li><a href="#" id="favorite" title="즐겨찾기 등록">bookmark</a></li>
							<li><a href="#">contact us</a></li>
						</ul>
					</c:if>
					<c:if test="${sessionScope.memId != null }">

						<ul class="gnb_right">
							<li><c:if test="${sessionScope.memId != 'admin'}">
									<a href="/TravelAgency/myPage1.do?pg=1"> <span
										class="glyphicon glyphicon-home"></span> myPage
									</a>
								</c:if> <c:if test="${sessionScope.memId == 'admin' }">
									<li class="tca"><a href="/TravelAgency/payCheck.do"> <span
											class="glyphicon glyphicon-home"></span> admin
									</a></li>
								</c:if></li>
							<li><a href="/TravelAgency/logout.do">Logout</a></li>
						</ul>
					</c:if>
				</div>
			</div>
			<!--gnb-->
			<div id="lnb">
				<div class="head_inner">
					<h1 style="width: 200px;">
						<a href="/TravelAgency/index.do">
							<img src="images/main/EmperorTour.png" alt="로고">
						</a>
					</h1>
					<ul class="lnb_nav">
						<li><a href="#">PACKAGES</a></li>
						<li><a href="#">CUSTOMER&nbsp;CENTER</a></li>
						<li><input type="text" value="" id="searchBar" style="width:200pt; height:18pt;" /> 
							<input type="button" id="searchBtn" value="검색" style="width:40pt; height:20pt;"/>
						</li>
					</ul>
				</div>
				<div class="drop_menu_wrap">
					<h1 style="width: 500px; height: 350px;">
						<a href="#"> <!-- <img src="" alt="드롭다운"> -->
						</a>
					</h1>
					<ul class="drop_list">
						<li>
							<ul class="drop_child">
								<li><a href="/TravelAgency/packageThumbView.do?category=ea">동남아</a></li>
								<li><a href="/TravelAgency/packageThumbView.do?category=am">미주</a></li>
								<li><a href="/TravelAgency/packageThumbView.do?category=eu">유럽</a></li>
							</ul>
						</li>
						<li>
							<ul class="drop_child">
								<li><a href="/TravelAgency/boardNotice.do?pg=1">공지사항</a></li>
								<li><a href="/TravelAgency/boardNoticeQna.do?pg=1">1:1문의</a></li>
							</ul>
						</li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
			<!--lnb-->
		</div>
		<!--header-->
		<!-- Main -->
		<div id="main">
			<jsp:include page="${display}" />
		</div>
		<!-- bottom -->
		<div id="bottom">
			<jsp:include page="bottom.jsp" />
		</div>
	</div>
</body>
</html>
