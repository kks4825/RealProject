<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/TravelAgency/css_bt/bootstrap.min.css" type="text/css">
<script src="/TravelAgency/js/jquery.min.js" type="text/javascript"></script>
<script src="/TravelAgency/js_bt/bootstrap.min.js" type="text/javascript"></script>
<style>
div {
	margin: 10px;
}
select {
	height: 25px;
}
</style>

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
