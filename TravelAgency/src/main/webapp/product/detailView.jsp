<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<link rel="stylesheet" href="css/product/detail.css?ver=1" type="text/css" media="screen">
<script src="js/product/detail.js?ver=1" type="text/javascript"></script>
<style>
	a:HOVER {
		cursor: pointer;
		text-decoration: none;
	}
	
	table tr td {
		font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	}
</style>

<div id="all">
	<!-- 전체 -->
	<div id="deco">
		<br><img src="image/product/product.jpg" style="width: 80px; height: 20px;">
	</div>
	<div id="productInfo">
		<!-- 상품간단정보 -->
		<div id="img">
			<!-- 이미지 -->
			<img src="image/product/borakai.jpg" style="width: 400px; height: 250px;">
		</div>
		<div id="info">
			<!-- 간단한 정보 -->
			<dl>
				<dt style="height: 30px; font-size: 14px">
					<strong>[보라카이★스테디셀러] [리젠시 비치] 보라카이직항 4일, 5일</strong>
				</dt>
				<dt style="font-size: 13px;">우리 소중한 아이들의 첫 해외 여행~ 어디갈지 망설여지시죠?
					최고의 안전, 산교육, 편안한 여행을 위하여 모두투어에서 출시한 아동 스페셜 케어&가족전용 패키지 상품!</dt>
			</dl>
		</div>
		<div id="table">
			<!-- 정보 테이블-->
			<table>
				<tr>
					<td style="width: 7em;">상품가격</td>
					<td>500,000~1,000,000원</td>
				</tr>
				<tr>
					<td>여행기간</td>
					<td>3박 5일</td>
				</tr>
				<tr>
					<td>여행도시</td>
					<td>필리핀(보라카이)</td>
				</tr>
				<tr>
					<td>항공사</td>
					<td>세부퍼시픽,에어아시아</td>
				</tr>
			</table>
			<br> <input type="button" value="예약하기" width="500px"
				onclick="location.href='/TravelAgency/reservation.do'">
		</div>
	</div>
	<div id="detailInfo">
		<div id="tabs">
			<!-- 탭정보 -->
			<ul class="tabs_item">
				<li class="items" id="item0" style="background-color:#353535"><a id="schedule"><span>일정표</span></a></li>
				<li class="items" id="item1"><a id="core_info"><span>핵심정보</span></a></li>
				<li class="items" id="item2"><a id="tour_info"><span>관광지정보</span></a></li>
				<li class="items" id="item3"><a id="tour_ref"><span>여행 참고사항</span></a></li>
				<li class="items" id="item4"><a id="safe_info"><span>해외여행 안전정보</span></a></li>
			</ul>
		</div>
		<div id="content1" class="tab_content">일정표</div>
		<div id="content2" class="tab_content">핵심정보</div>
		<div id="content3" class="tab_content">관광정보</div>
		<div id="content4" class="tab_content">여행 참고사항</div>
		<div id="content5" class="tab_content">해외여행 안전정보</div>
	</div>
	<div id="postscript">
		<img src="image/product/post.jpg" style="width: 100px; height: 40px;">
		<table>
			<tr>
				<td colspan="5" height="2px" bgcolor="777777"></td>
			</tr>
			<tr>
				<td width="100px" align="center">글번호</td>
				<td width="450px" align="center">제목</td>
				<td width="100px" align="center">이름</td>
				<td width="150px" align="center">작성일</td>
				<td width="100px" align="center">평점</td>
			</tr>
			<tr>
				<td colspan="5" height="2px" bgcolor="777777"></td>
			</tr>
			<tr>
				<td width="100px" align="center">1</td>
				<td width="450px" align="center">짱이었어요</td>
				<td width="100px" align="center">이주현</td>
				<td width="150px" align="center">2017.03.01</td>
				<td width="100px" align="center">8.7</td>
			</tr>
			<tr>
				<td colspan="5" height="2px" bgcolor="777777"></td>
			</tr>
			<tr>
				<td colspan="5" align="right">
					<input type="button" value="작성하기">
				</td>
			</tr>
			<tr>
				<td colspan="5" align="center">| 1 | 2 | 3 | 4 | 5 | ></td>
			</tr>
		</table>
	</div>
</div>