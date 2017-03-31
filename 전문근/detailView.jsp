<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="css/product/detail.css?ver=1" type="text/css" media="screen">

<script src="js/product/detail.js" type="text/javascript"></script>
<script>
	window.onload = function() {
		var adultCount = $('#adults option:selected').val();
		var kidsCount = $('#kids option:selected').val();
		var totalPay = adultCount * '${productDTO.pack_price_adult }'
				+ kidsCount * '${productDTO.pack_price_kid }';
		$("#payment").append(
				new Intl.NumberFormat("ko-KR").format(totalPay) + "원");
	}
	$(document).ready(function() {
		$('#adults').change(function() {
			var adultCount = $('#adults option:selected').val();
			var kidsCount = $('#kids option:selected').val();
			var totalPay = adultCount * '${productDTO.pack_price_adult }' + kidsCount * '${productDTO.pack_price_kid }';
			$("#payment").empty();
			$("#payment").append(new Intl.NumberFormat("ko-KR").format(totalPay)+ "원");
		});
		
		$('#kids').change(function() {
			var adultCount = $('#adults option:selected').val();
			var kidsCount = $('#kids option:selected').val();
			var totalPay = adultCount * '${productDTO.pack_price_adult }' + kidsCount * '${productDTO.pack_price_kid }';
			
			$("#payment").empty();
			$("#payment").append(new Intl.NumberFormat("ko-KR").format(totalPay)+ "원");
		});
	});
	
	function reviewPaging(pg){
		location.href="/TravelAgency/detailView.do?pg="+pg+"&seq="+${productDTO.pack_no };
	}
</script>

<div id="all">
	<!-- 전체 -->
	<form name="detailViewForm" method="post" action="/TravelAgency/payment.do">
		<input type="hidden" name="pack_no" value="${productDTO.pack_no }">
		<div id="deco" align="center">
			<br> <img src="image/product/product.jpg" style="width: 80px; height: 20px;">
		</div>
		<div id="productInfo">
			<!-- 상품간단정보 -->
			<div id="img">
				<!-- 이미지 -->
				<img src="product_img/${productDTO.image1 }" style="width: 400px; height: 250px;">
			</div>
			<div id="info">
				<!-- 간단한 정보 -->
				<dl>
					<dt style="height: 30px; font-size: 13px">
						<strong>${productDTO.pack_title }</strong>
					</dt>
					<dt style="font-size: 12px;">${productDTO.pack_desc }</dt>
				</dl>
			</div>
			<div id="table" cellpadding="10px">
				<!-- 정보 테이블-->
				<table>
					<tr>
						<td width="100px">상품가격</td>
						<td>성인:<fmt:formatNumber pattern="#,##0원" value="${productDTO.pack_price_adult }" />, 
							아동:<fmt:formatNumber pattern="#,##0원" value="${productDTO.pack_price_kid }" /></td>
					</tr>
					<tr>
						<td width="100px">여행기간</td>
						<td>출발:${productDTO.pack_depart }, 도착:${productDTO.pack_arriv }</td>
						<input type="hidden" id="depart_day" value="${productDTO.pack_depart }"/>
					</tr>
					<tr>
						<td width="100px">여행도시</td>
						<td>${productDTO.pack_city }</td>
					</tr>
					<tr>
						<td width="100px">항공사</td>
						<td>${productDTO.pack_air }</td>
					</tr>
					<tr>
						<td>성인:<select class="adults" name="adults" id="adults">
									<option value="0">0</option>
									<option value="1" selected>1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
						</td>
						<td>아동:<select class="kids" name="kids" id="kids">
									<option value="0">0</option>
									<option value="1" selected>1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
						</td>
					</tr>
					<tr>
						<td><br><input type="button" id="reserveBtn" value="예약하기" width="500px" style="width:80px; height:30px;"></td>
					</tr>
				</table>
			</div>
			<div style="display: inline-block; float: right; height: 40px; margin-top:-3em;">
				<b>금액
					<p id="payment" name="payment"></p>
				</b>
			</div>
		</div>
	</form>

	<div id="detailInfo">
		<div id="tabs">
			<!-- 탭정보 -->
			<ul class="tabs_item">
				<li id="item0" class="items"><a href="#" id="schedule"><span>일정표</span></a></li>
				<li id="item1" class="items"><a href="#" id="core_info"><span>핵심정보</span></a></li>
				<li id="item2" class="items"><a href="#" id="tour_info"><span>관광정보</span></a></li>
				<li id="item3" class="items"><a href="#" id="tour_ref"><span>여행
							참고사항</span></a></li>
				<li id="item4" class="items"><a href="#" id="safe_info"><span>해외여행
							안전정보</span></a></li>
			</ul>
		</div>
		<div id="content1" class="tab_content">
			<table class="table table-striped">
				<c:forEach var="scheduleList" items="${scheduleList }">
					<tr>
						<td width="100px">${scheduleList.schedules_date }</td>
						<td><pre style="word-wrap: break-word; white-space: pre-wrap; white-space: -moz-pre-wrap; 
			white-space: -pre-wrap; white-space: -o-pre-wrap; word-break:break-all;">${scheduleList.schedules_content }</pre></td>
					</tr>
					<tr>
						<td colspan="2" bgcolor="#607d8b" style="height:1px;"></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="content2" class="tab_content">
			<pre>${productDTO.pack_detail }</pre>
			<br>
				<div style="margin:auto; height:auto; width:100%;">
					<img src="product_img/${productDTO.image2 }" style="width: 400px; height: 250px;">
					<img src="product_img/${productDTO.image3 }" style="width: 400px; height: 250px;"><br>
					<img src="product_img/${productDTO.image4 }" style="width: 400px; height: 250px;">
					<img src="product_img/${productDTO.image5 }" style="width: 400px; height: 250px;"><br> 
					<img src="product_img/${productDTO.image6 }" style="width: 400px; height: 250px;">
					<c:if test="${productDTO.image7 != null }">
						<img src="product_img/${productDTO.image7 }" style="width: 400px; height: 250px;"><br>
					</c:if>
					<c:if test="${productDTO.image8 != null }"> 
						<img src="product_img/${productDTO.image8 }" style="width: 400px; height: 250px;">
					</c:if>
					<c:if test="${productDTO.image9 != null }"> 
						<img src="product_img/${productDTO.image9 }" style="width: 400px; height: 250px;"><br>
					</c:if>
				</div>
		</div>
		<div id="content3" class="tab_content">
			<pre style="word-wrap: break-word; white-space: pre-wrap; white-space: -moz-pre-wrap; 
			white-space: -pre-wrap; white-space: -o-pre-wrap; word-break:break-all;">${productDTO.tour_info }
			</pre>
		</div>
		<div id="content4" class="tab_content">
			<pre style="word-wrap: break-word; white-space: pre-wrap; white-space: -moz-pre-wrap; 
			white-space: -pre-wrap; white-space: -o-pre-wrap; word-break:break-all;">${productDTO.tour_ref }
			</pre>
		</div>
		<div id="content5" class="tab_content">
			<pre style="word-wrap: break-word; white-space: pre-wrap; white-space: -moz-pre-wrap; 
			white-space: -pre-wrap; white-space: -o-pre-wrap; word-break:break-all;">${safeinfo }</pre>
		</div>
	</div>
	<div id="postscript">
		<img src="image/product/post.jpg" style="width: 100px; height: 40px;">
		<table border="1" height="300px">
			<tr>
				<td colspan="5" bgcolor="#607d8b" style="height:1px;"></td>
			</tr>
			<tr>
				<th width="100px" height="40px" style="font-size:11pt; text-align: center;">글번호</th>
				<th width="450px" height="40px" style="font-size:11pt; text-align: center;">제목</th>
				<th width="100px" height="40px" style="font-size:11pt; text-align: center;">아이디</th>
				<th width="150px" height="40px" style="font-size:11pt; text-align: center;">작성일</th>
				<th width="100px" height="40px" style="font-size:11pt; text-align: center;">평점</th>
			</tr>
			<tr>
				<td colspan="5" bgcolor="#607d8b" style="height:1px;"></td>
			</tr>
			<c:if test="${reviewList != null }">
				<c:forEach var="TravelReviewDTO" items="${reviewList }">
					<tr>
						<td width="100px" style="text-align: center;">${TravelReviewDTO.seq }</td>
						<td width="450px" style="text-align: center;">${TravelReviewDTO.subject }</td>
						<td width="100px" style="text-align: center;">${TravelReviewDTO.memId }</td>
						<td width="150px" style="text-align: center;">
							<fmt:formatDate	value="${TravelReviewDTO.reviewDate}" pattern="yyyy.MM.dd" /></td>
						<td width="100px" style="text-align: center;">${TravelReviewDTO.starScore }</td>
					</tr>
					<tr>
						<td colspan="5" bgcolor="#607d8b" style="height:1px;"></td>
					</tr>
				</c:forEach>
			</c:if>
			<tr>
				<td colspan="5" bgcolor="#607d8b" style="height:1px;"></td>
			</tr>
			<tr>
				<td colspan="5">&nbsp; </td>
			</tr>
		</table>		
		<div class="pagination">
			${reviewPaging.pagingHTML}
		</div>
	</div>
</div>