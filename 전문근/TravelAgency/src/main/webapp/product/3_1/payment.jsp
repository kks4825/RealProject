<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/product/payment.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
		$(".payMethod").click(
			function() {
				if ($(this).val() == 'credit_card') {
					$('#payMethodWindow').attr("src",
							"/TravelAgency/product/3_5/creditCard.jsp");
				} else if ($(this).val() == 'account_depo') {
					$('#payMethodWindow').attr("src",
							"/TravelAgency/product/3_5/accountDeposit.jsp");
				}
			});
	});
window.onload =function(){
    var totalPay = '${adults}'*'${productDTO.pack_price_adult }'+'${kids}'*'${productDTO.pack_price_kid }';
    $("#totalPay").append(new Intl.NumberFormat("ko-KR").format(totalPay)+"원");
    $('#totalPayHidden').val(new Intl.NumberFormat("ko-KR").format(totalPay)+"원");
  }
function paymentCheck(){
	document.paymentForm.submit();
}
</script>
<style media="screen">
	div {
		margin: 10px;
		border: 1px solid red;
		padding: 10px;
	}
	
	#info_table td {
		padding: 10px;
		width: 200px;
		height: 20px;
	}
	
	#info_table th {
		padding: 10px;
		width: 200px;
	}
	
	#info_table td, th {
		border-collapse: collapse;
		border: 1px solid #ddd;
		padding: 10px;
	}
	
	select {
		height: 25px;
	}
	.payMethod {
		text-align: center;
	}
	div.tab_content {
		display: none;
		margin-top: 10px;
		height: auto;
		border: 1px solid green;
	}
</style>

<div style="margin:0 auto; width:70%; margin-top:-80px;">
	<h1>결제하기</h1>
	<form name="paymentForm" method="post" action="/TravelAgency/paymentChecking.do">
	<input type="hidden" name="pack_no" value="${productDTO.pack_no }">
	<input type="hidden" id="totalPayHidden" name="totalPay" value="">
	<!-- 회원id가져갈 hidden 인풋 있어야함. -->
	<div class="perchase_info">
		<h2>구매정보</h2>
		<div>
			<table id="info_table">
				<tr>
					<th>여행지</th>
					<th>상세정보</th>
					<th>날짜</th>
					<th>인원</th>
					<th>금액</th>
				</tr>
				<tr>
					<td>${productDTO.pack_city }</td>
					<td>${productDTO.pack_desc }</td>
					<td>출발 : ${productDTO.pack_depart }<br>도착 : ${productDTO.pack_arriv }</td>
					<td>성인 : ${adults }명<br>아동 : ${kids }명</td>
					<td id="totalPay"></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="perchase_method">
		<h2>결제방법</h2>
		<div>
			<table id="info_table">
				<tr>
					<th><input type="radio" name="paymethod" value="credit_card"
						class="payMethod" id="credit_card">신용카드</th>
					<th><input type="radio" name="paymethod" value="account_depo"
						class="payMethod" id="account_depo">계좌입금</th>
				</tr>
			</table>

		</div>
		<div class="">
			<!-- <iframe src="about:blank" width="100%" height="300px"
				id="payMethodWindow" frameborder="0"></iframe> -->
			<div id="content1" class="tab_content">
				<div class="well" style="height: 115px;">
					<table class="table table-hover">
						<tr>
							<td>카드 종류</td>
							<td><select name="card" id="card">
									<option selected="selected" value="1">카드 종류를 선택해 주세요</option>
									<option value="우리카드">우리카드</option>
									<option value="신한카드">신한카드</option>
									<option value="하나카드">하나카드</option>
									<option value="국민카드">국민카드</option>
									<option value="삼성카드">삼성카드</option>
									<option value="비씨카드">비씨카드</option>
									<option value="씨티은행카드">씨티은행카드</option>
							</select></td>
						</tr>
						<tr>
							<td>할부 선택</td>
							<td><select name="monthly" id="monthly">
									<option selected="selected" value="2">할부 기간 선택</option>
									<option value="일시불">일시불</option>
									<option value="1개월">1개월</option>
									<option value="2개월">2개월</option>
									<option value="3개월">3개월</option>
									<option value="4개월">4개월</option>
									<option value="5개월">5개월</option>
									<option value="6개월">6개월</option>
							</select></td>
						</tr>
					</table>
				</div>
				
				<div class="">
					<a href="#pointPayment" class="btn btn-info" data-toggle="collapse">신용카드
						포인트결제</a>
					<div id="pointPayment" class="collapse">
						<table class="table table-bordered">
							<tr>
								<th><img
									src="https://pics.auction.co.kr/common/card/16_card.gif" alt="KB카드"></th>
								<td>1포인트 이상 보유 시 사용, 구매금액의 100% 까지 사용가능</td>
							</tr>
				
							<tr>
								<th><img
									src="https://pics.auction.co.kr/pc/common/card_hana_03.gif"
									alt="하나(외환)카드"></th>
								<td>1포인트 이상 보유 시 사용, 구매금액의 100% 까지 사용가능</td>
							</tr>
				
							<tr>
								<th><img
									src="https://pics.auction.co.kr/common/card/31_card.gif" alt="삼성카드"></th>
								<td>1포인트 이상 보유 시 사용, 구매금액의 50% 까지 사용가능</td>
							</tr>
				
							<tr>
								<th><img
									src="https://pics.auction.co.kr/common/card/29_card.gif" alt="신한카드"></th>
								<td>1포인트 이상 보유 시 사용, 구매금액의 100% 까지 사용가능</td>
							</tr>
				
							<tr>
								<th><img
									src="https://pics.auction.co.kr/common/card/img_card_wr_card.gif"
									alt="우리카드"></th>
								<td>1포인트 이상 보유 시 사용, 구매금액의 100% 까지 사용가능</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="">
					<a href="#personalInfo" class="btn btn-warning" data-toggle="collapse">개인정보</a>
					<div id="personalInfo" class="collapse">
						<table class="table table-striped">
							<tr>
								<td>목적</td>
								<td>상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및
									전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</td>
							</tr>
				
							<tr>
								<td>항목</td>
								<td>ID, 성명, 전화번호, 휴대전화번호, 배송지 주소, 이메일주소(선택시), 통관고유부호(선택시)</td>
							</tr>
				
							<tr>
								<td>보유기간</td>
								<td>구매 서비스 종료 후 1개월</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div id="content2" class="tab_content">
				<div class="well">
					<p class="sel_option_tit">
						<strong>입금 은행</strong> <select name="bank" id="bank">
							<option selected="selected" value="">은행을 선택해 주세요</option>
							<option value="우리은행">우리은행</option>
							<option value="신한은행">신한은행</option>
							<option value="하나은행">하나은행</option>
							<option value="국민은행">국민은행</option>
							<option value="기업은행">기업은행</option>
							<option value="농협은행">농협은행</option>
							<option value="부산은행">부산은행</option>
						</select>
					</p>
				</div>
				<ul class="notice">
					<li>입금하실 은행을 선택하신 후, 오른쪽 <strong>&lt;결제하기&gt;</strong> 버튼을 클릭합니다.
					</li>
					<li>다음 화면에 나타나는 <strong>&lt;계좌번호로 입금&gt;</strong>하시면 결제가 완료됩니다.
					</li>
				</ul>
				<div class="">
					<a href="#personalInfo1" class="btn btn-warning" data-toggle="collapse">개인정보</a>
					<div id="personalInfo1" class="collapse">
						<table class="table table-striped">
							<tr>
								<td>목적</td>
								<td>상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및
									전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</td>
							</tr>
				
							<tr>
								<td>항목</td>
								<td>ID, 성명, 전화번호, 휴대전화번호, 배송지 주소, 이메일주소(선택시), 통관고유부호(선택시)</td>
							</tr>
				
							<tr>
								<td>보유기간</td>
								<td>구매 서비스 종료 후 1개월</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<input type="button" value="결제" onclick="javascript:paymentCheck()"
			style="font-size: 22px; float: right; width: 120px;">
		<input type="button" value="이전" onclick="history.back(-1)"
			style="font-size: 22px; float: right; width: 120px;">
		</form>
	</div>
</div>

