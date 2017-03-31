<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/product/payment.js?ver=1" type="text/javascript"></script>
<script type="text/javascript">
window.onload =function(){
    var totalPay = '${adults}'*'${productDTO.pack_price_adult }'+'${kids}'*'${productDTO.pack_price_kid }';
    $("#totalPay").append(new Intl.NumberFormat("ko-KR").format(totalPay)+"원");
    $('#totalPayHidden').val(new Intl.NumberFormat("ko-KR").format(totalPay)+"원");
  }

</script>
<style media="screen">
	.pay{
		margin: 30px;
		border: 1px solid #ddd;
		padding: 30px;
	}
	.pay_category{
		  top: -34px;
		  left: 0;
		  background: #1e70dd;
		  padding: 10px 15px;
		  color: #FFFFFF;
		  font-size: 14px;
		  font-weight: 600;
		  text-transform: uppercase;
		  margin-bottom:10px;
	}
	
	#info_table td {
		padding: 30px;
		width: 250px;
		height: 30px;
	}
	
	#info_table th {
		text-align : center;
		padding: 10px;
		width: 250px;
	}
		
	#info_table td, th {
		border-collapse: collapse;
		border: 1px solid #ddd;
		padding: 10px;
		vetical-align:center;
	}
	
	select {
		height: 25px;
	}
	.payMethod {
		margin: 10px;
		padding: 10px;
		text-align: center;
	}
	div.tab_content {
		margin: 0px;
		padding: 30px;
		display: none;
		margin-top: 10px;
		height: auto;
		border: 1px solid #ddd;
	}
	#ref_tab td,tr{
		border-collapse: collapse;
		border: 1px solid #ddd;
		padding: 10px;
	}
	
</style>
<div id="content_sub">
	<div class="sub_container">
		<div class="sub_cont">
			<div class="pay" style="margin:0 auto; width:100%; margin-top:0px;border: 0px solid #ddd;">
				<div class="sub_tit" style="margin:0 auto; width:100%; margin-top:-20px;">
					<h3>결제하기</h3>
				</div><!--sub_tit-->
				<form name="paymentForm" method="post" action="/TravelAgency/paymentChecking.do">
				<input type="hidden" name="pack_no" value="${productDTO.pack_no }">
				<input type="hidden" name="adults" value="${adults }">
				<input type="hidden" name="kids" value="${kids }">
				<input type="hidden" id="totalPayHidden" name="totalPay" value="">
				<!-- 회원id가져갈 hidden 인풋 있어야함. -->
				<div class="perchase_info">
					<div class="pay_category">구매정보</div>
					<div style="margin-bottom : 30px;">
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
					<div class="pay_category">결제방법</div>
					<div>
						<table id="info_table">
							<tr>
								<th><input type="radio" name="paymethod" value="credit_card"
									class="payMethod" id="credit_card" checked="checked">신용카드</th>
								<th><input type="radio" name="paymethod" value="account_depo"
									class="payMethod" id="account_depo">계좌입금</th>
							</tr>
						</table>
			
					</div>
					<div class="" style="margin:0px; padding:0px">
						<div id="content1" class="tab_content" style="display:block; border: 1px solid #ddd;">
							<div class="well" style="height: 50px;">
								<table class="table table-hover">
									<tr style="border: 0px solid #ddd;">
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카드 종류</td>
										<td><select name="card" id="card">
												<option selected="selected" value="0">카드 종류를 선택해 주세요</option>
												<option value="우리카드">우리카드</option>
												<option value="신한카드">신한카드</option>
												<option value="하나카드">하나카드</option>
												<option value="국민카드">국민카드</option>
												<option value="삼성카드">삼성카드</option>
												<option value="비씨카드">비씨카드</option>
												<option value="씨티은행카드">씨티은행카드</option>
										</select></td>
									</tr>
									<tr style="border: 0px solid #ddd;">
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;할부 선택</td>
										<td><select name="monthly" id="monthly">
												<option selected="selected" value="0">할부 기간 선택</option>
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
							
							<div class="pay" style="marging-top:0px;" >
								<div id="pointPayment" class="collapse" >
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
							<div class="pay" style="border: 1px solid #ddd;">
								<table class="table table-striped" id="ref_tab">
										<tr >
											<td style="text-align : center; width:15%;">목적</td>
											<td>상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및
												전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</td>
										</tr>
							
										<tr>
											<td style="text-align : center;">항목</td>
											<td>ID, 성명, 전화번호, 휴대전화번호, 배송지 주소, 이메일주소(선택시), 통관고유부호(선택시)</td>
										</tr>
							
										<tr>
											<td style="text-align : center;">보유기간</td>
											<td>구매 서비스 종료 후 1개월</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div id="content2" class="tab_content">
							<div class="well">
								<p class="sel_option_tit">
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입금 은행</strong> <select name="bank" id="bank">
										<option selected="selected" value="0">은행을 선택해 주세요</option>
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
								<li><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입금하실 은행을 선택하신 후, 오른쪽 <strong>&lt;결제하기&gt;</strong> 버튼을 클릭합니다.
								</li>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다음 화면에 나타나는 <strong>&lt;계좌번호로 입금&gt;</strong>하시면 결제가 완료됩니다.
								</li>
							</ul>
							<div class="pay">
								<div id="personalInfo1" class="collapse">
									<table class="table table-striped" id="ref_tab">
										<tr>
											<td style="text-align : center; width:15%;">목적</td>
											<td>상품 및 경품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서비스제공계약 및
												전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</td>
										</tr>
							
										<tr>
											<td style="text-align : center;">항목</td>
											<td>ID, 성명, 전화번호, 휴대전화번호, 배송지 주소, 이메일주소(선택시), 통관고유부호(선택시)</td>
										</tr>
							
										<tr>
											<td style="text-align : center;">보유기간</td>
											<td>구매 서비스 종료 후 1개월</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<br><br><br>
					<input type="button" value="결제" id="paymentBtn"
						style="font-size: 17px; float: right;  height: 30px; width: 120px;">
					<input type="button" value="이전" onclick="history.back(-1)"
						style="font-size: 17px; float: right; height: 30px; width: 120px;"><br><br><br>
					</form>
				</div>
			</div>
		</div>
	</div>

