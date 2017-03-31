<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="js/board/jquery.bxslider.min.js"></script>
<link href="css/board/jquery.bxslider.css" rel="stylesheet" />
<script>
$(document).ready(function(){ 
  $('#mainSlideBnr').bxSlider({
	  auto: true,
	  mode: 'fade',
	  captions: true
	});
});
</script>

<div id="content">
	<div class="main_visual blind">
		<div style="text-align: center;">
		</div>
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
		<ul id="subBnrWrap">
			<li><a href="/about/history"><img
					src="images/main/main_sub_bnr_01.png" alt="회사연혁"></a></li>
			<li><a href="/about/about"><img
					src="images/main/main_sub_bnr_02.png" alt="기업이념"></a></li>
			<li><a href="/business/business1"><img
					src="images/main/main_sub_bnr_03.png" alt="서비스소개"></a></li>
			<li><a href="/about/location"><img
					src="images/main/main_sub_bnr_04.png" alt="오시는길"></a></li>
		</ul>
	</div>
</div>

