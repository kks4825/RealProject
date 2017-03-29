<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="../js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".payMethod").click(
						function() {
							if ($(this).val() == 'credit_card') {
								$('#payMethodWindow').attr("src",
										"/TravelAgency/product/3_5/creditCard.jsp");
							} else if ($(this).val() == 'account_depo') {
								$('#payMethodWindow').attr("src",
										"/TravelAgency/product/3_5/accountDeposit.jsp");
							} else if ($(this).val() == 'without_bank') {
								$('#payMethodWindow').attr("src",
										"/TravelAgency/product/3_5/disAccountDeposit.jsp");
							}
						});
			});
</script>
<style media="screen">
	div {
		margin: 10px;
		border: 1px solid red;
		padding: 10px;
	}
	
	td {
		padding: 10px;
		width: 200px;
		height: 20px;
	}
	
	th {
		padding: 10px;
		width: 200px;
	}
	
	table, td, th {
		border-collapse: collapse;
		border: 1px solid #ddd;
		padding: 10px;
	}
	
	.payMethod {
		text-align: center;
	}
</style>

<div style="margin:0 auto; width:70%; margin-top:-80px;">
	<h1>결제하기</h1>
	<div class="perchase_info">
		<h2>구매정보</h2>
		<div>
			<table id="info_table">
				<tr>
					<th>여행지</th>
					<th>상세정보</th>
					<th>날짜</th>
					<th>인원</th>
					<th>할인</th>
					<th>금액</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="perchase_method">
		<h2>결제방법</h2>
		<div>
			<table>
				<tr>
					<th><input type="radio" name="paymethod" value="credit_card"
						class="payMethod">신용카드</th>
					<th><input type="radio" name="paymethod" value="account_depo"
						class="payMethod">계좌입금</th>
					<th><input type="radio" name="paymethod" value="without_bank"
						class="payMethod">무통장입금</th>
				</tr>
			</table>

		</div>
		<div class="">
			<iframe src="about:blank" width="100%" height="300px"
				id="payMethodWindow" frameborder="0"></iframe>
		</div>
		<input type="button" value="결제"
			style="font-size: 22px; float: right; width: 120px;">
	</div>
</div>

