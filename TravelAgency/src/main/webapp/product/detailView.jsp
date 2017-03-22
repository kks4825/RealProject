<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="css/product/detail.css" type="text/css" media="screen">
<script src="js/product/detail.js" type="text/javascript"></script>
<script>
window.onload =function(){
    var adultCount = $('#adults option:selected').val();
    var kidsCount = $('#kids option:selected').val();
    var totalPay = adultCount*'${productDTO.pack_price_adult }'+kidsCount*'${productDTO.pack_price_kid }';
    $("#payment").append(new Intl.NumberFormat("ko-KR").format(totalPay)+"원");
  }
    $(document).ready(function(){
      $('#adults').change(function(){
        var adultCount = $('#adults option:selected').val();
        var kidsCount = $('#kids option:selected').val();
        var totalPay = adultCount*'${productDTO.pack_price_adult }'+kidsCount*'${productDTO.pack_price_kid }';
        $("#payment").empty();
        $("#payment").append(new Intl.NumberFormat("ko-KR").format(totalPay)+"원");
      });
      $('#kids').change(function(){
        var adultCount = $('#adults option:selected').val();
        var kidsCount = $('#kids option:selected').val();
        var totalPay = adultCount*'${productDTO.pack_price_adult }'+kidsCount*'${productDTO.pack_price_kid }';
        $("#payment").empty();
        $("#payment").append(new Intl.NumberFormat("ko-KR").format(totalPay)+"원");
      })
    });
</script>
<div id="all">
	<!-- 전체 -->
	<form name="detailViewForm" method="post" action="/TravelAgency/payment.do">
	<input type="hidden" name="pack_no" value="${productDTO.pack_no }">
	<div id="deco">
		<br><img src="image/product/product.jpg" style="width: 80px; height: 20px;">
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
		<div id="table">
			<!-- 정보 테이블-->
			<table>
				<tr>
					<td width="100px">상품가격</td>
					<td>성인:<fmt:formatNumber pattern="#,##0원" value="${productDTO.pack_price_adult }"/>,
					        아동:<fmt:formatNumber pattern="#,##0원" value="${productDTO.pack_price_kid }"/></td>
				</tr>
				<tr>
					<td width="100px">여행기간</td>
					<td>출발:${productDTO.pack_depart }, 도착:${productDTO.pack_arriv }</td>
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
					<td>성인: <select class="adults" name="adults" id="adults">
							<option value="0">0</option>
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
					</select>
					</td>
					<td>아동: <select class="kids" name="kids" id="kids">
							<option value="0">0</option>
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
					</select>
					</td>
				</tr>					
			</table>
				<div style="display: inline-block; float: right; height: 40px;">
					<b>금액
						<p id="payment" name="payment"></p>
					</b>
				</div>
			</form>
			<br> <input type="submit" value="예약하기" width="500px">
			
			</div>
			</div>
		</div>
	<div id="detailInfo">
		<div id="tabs">
			<!-- 탭정보 -->
			<ul class="tabs_item">
				<li class="items"><a href="#" id="schedule"><span>일정표</span></a></li>
				<li class="items"><a href="#" id="core_info"><span>핵심정보</span></a></li>
				<li class="items"><a href="#" id="tour_info"><span>관광정보</span></a></li>
				<li class="items"><a href="#" id="tour_ref"><span>여행 참고사항</span></a></li>
				<li class="items"><a href="#" id="safe_info"><span>해외여행 안전정보</span></a></li>
			</ul>
		</div>
		<div id="content1" class="tab_content">
			<table class="table table-striped">
				<c:forEach var="scheduleList" items="${scheduleList }">
					<tr>
						<td width="100px">
							${scheduleList.schedules_no }일차
						</td>
						<td>		
							${productDTO.image1 }<br>
							${scheduleList.schedules_content }
									
						</td>
					</tr>
				</c:forEach>				
			</table>
		</div>
		<div id="content2" class="tab_content">${productDTO.pack_detail }</div>
		<div id="content3" class="tab_content">${productDTO.tour_info }</div>
		<div id="content4" class="tab_content">${productDTO.tour_ref }</div>
		<div id="content5" class="tab_content">해외여행 안전정보</div>
	</div>
	<div id="postscript">
		<img src="image/product/post.jpg" style="width: 100px; height: 40px;">
		<table>
			<tr>
				<td colspan="5" bgcolor="777777"></td>
			</tr>
			<tr>
				<th width="100px">글번호</th>
				<th width="450px">제목</th>
				<th width="100px">이름</th>
				<th width="150px">작성일</th>
				<th width="100px">평점</th>
			</tr>
			<tr>
				<td colspan="5" bgcolor="777777"></td>
			</tr>
			<tr>
				<th width="100px">1</th>
				<th width="450px">짱이었어요</th>
				<th width="100px">이주현</th>
				<th width="150px">2017.03.01</th>
				<th width="100px">8.7</th>
			</tr>
			<tr>
				<td colspan="5" bgcolor="777777"></td>
			</tr>
			<tr>
				<td colspan="5" align="right">
					<input type="button" value="작성하기">
				</td>
			</tr>
			<tr>
				<th colspan="5">| 1 | 2 | 3 | 4 | 5 | ></th>
			</tr>
		</table>
	</div>
</div>