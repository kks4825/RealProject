<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/TravelAgency/css_bt/bootstrap.min.css">
<script src="/TravelAgency/js/jquery.min.js"></script>
<script src="/TravelAgency/js_bt/bootstrap.min.js"></script>
<style>
div {
	margin: 10px;
}
select {
	height: 25px;
}
</style>

<div class="well" style="height: 115px;">
	<table class="table table-hover">
		<tr>
			<th>카드 종류</th>
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
			<th>할부 선택</th>
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
				<th>목적</th>
				<td>상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및
					전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</td>
			</tr>

			<tr>
				<th>항목</th>
				<td>ID, 성명, 전화번호, 휴대전화번호, 배송지 주소, 이메일주소(선택시), 통관고유부호(선택시)</td>
			</tr>

			<tr>
				<th>보유기간</th>
				<td>구매 서비스 종료 후 1개월</td>
			</tr>
		</table>
	</div>
</div>
