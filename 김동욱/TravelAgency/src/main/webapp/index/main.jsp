<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="css/main/jquery.bxslider.css" rel="stylesheet" />
<link href="css/product/thumbnail.css?ver=1" rel="stylesheet" />

<script src="http://code.jquery.com/jquery-1.3.2.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js"></script>
<script src="js/main/jquery.bxslider.min.js"></script>

<script>
	$(document).ready(function() {
		$('#mainSlideBnr').bxSlider({
			auto : true,
			mode : 'fade',
			captions : true
		});
	});
</script>

<div id="content">
	<div class="main_visual blind">
		<div style="text-align: center;"></div>
	</div>
	<div class="main_banner">
		<div id="main_banner_slide">
			<h2 class="blind">메인 슬라이드 배너</h2>
			<ul id="mainSlideBnr">
				<li><img src="images/main/TravelAgency3.png" /></li>
				<li><img src="images/main/TravelAgency.png" /></li>
				<li><img src="images/main/TravelAgency4.png" /></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<c:forEach var="rankList" items="${rankList}">
			<div class="column">
				<a href="/TravelAgency/detailView.do?seq=${rankList.pack_no }">
					<!-- Post-->
					<div class="post-module">
						<!-- Thumbnail-->
						<div class="thumbnail">
							<img src="product_img/${rankList.image1 }" />
						</div>
						<!-- Post Content-->
						<div class="post-content">
							<div class="category">Photos</div>
							<h1 class="title">${rankList.pack_title }</h1>
							<h2 class="sub_title">
								출발날짜:${rankList.pack_depart }<br>
								도착날짜:${rankList.pack_arriv }<br>
							</h2>
							<p class="description">${rankList.pack_city }<br>
								가격(성인기준)
								<fmt:formatNumber pattern="#,##0원"
									value="${productDTO.pack_price_adult }" />
							</p>
						</div>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
</div>

