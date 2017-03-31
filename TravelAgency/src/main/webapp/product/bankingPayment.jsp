<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
div{
	border: 0px solid red;
	padding: 0px;
	margin: 0px;
}
#bankInfo tr,th,td{
	padding:10px;
	margin:10px;
	border-collapse: collapse;
	border: 1px solid #ddd;
	padding: 10px;
}
#bankInfo th{
	width:200px;
}
.pay{
		margin: 0px;
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
</style>
<script>
$(document).ready(function(){
    var number=${bankDTO.bank_account};
    var num = number.toString();
    var account='';
    account+=num.substr(0,4);
    account+="-";
    account+=num.substr(4,4);
    account+="-";
    account+=num.substr(8,4);
    account+="-";
    account+=num.substr(12,4);
    //계좌번호는 최대 16자리임.    
    $('#account').append(account);
    $('#myPage1').click(function(){
    	document.bankingForm.submit();
    });
});

</script>
<div id="content_sub">
	<div class="sub_container">
		<div class="sub_cont">
			<div class="pay" style="margin:0 auto; width:100%; margin-top:0px;border: 0px solid #ddd;">
				<div class="sub_tit" style="margin:0 auto; width:100%; margin-top:-20px;">
					<h3>결제 정보</h3>
				</div><!--sub_tit-->
				<form name="bankingForm" method="post" action="/TravelAgency/purchaseComplete.do">
				<div class="pay_category">입금 계좌 정보</div>
				<div class="pay">
				
					<div>
						<input type="hidden" name="pack_no" value="${pack_no }">
						<input type="hidden" name="adults" value="${adults }">
						<input type="hidden" name="kids" value="${kids }">
						<input type="hidden" name="paymethod" value="${bankDTO.bank_name }">
						<input type="hidden" name="totalPay" value="${totalPay }">
						<input type="hidden" name="paymentState" value="결제대기(계좌입금)">
						
						<table id="bankInfo" class="table table-striped">
							<tr>
								<th>은행명</th>
								<td>${bankDTO.bank_name }</td>
							</tr>
							
							<tr>
								<th>계좌번호</th> <!-- fmt format말고 jquery로 format지정해서 넣기 -->
								<td id="account"></td>
							</tr>
							
							<tr>
						  		<th>결제금액</th>
						  		<td>${totalPay }</td>
						  	</tr>			
						</table><br>
						<p>입금할 <strong>금액을 확인</strong> 후, 은행에 입금하여 주세요.
						   입금확인 완료 후 예약이 확정됩니다. 이용해 주셔서 감사합니다.<br>
						   입금 완료 후 ‘결제완료’ 확인까지 <strong>최대 10분</strong>이 소요됩니다. 입금기한 내에 미입금시 주문이 자동취소 됩니다. 
						</p>
						
					</div>
				</div>
				<br><br>
						<input type="button" style="font-size: 17px; float: right;  height: 30px; width: 120px; " value="결제방법변경" onclick="history.back(-1)">
						<input type="button" style="font-size: 17px; float: right;  height: 30px; width: 120px;" value="마이페이지" id="myPage1"> <br><br><!-- 마이페이지에서 결제 완료하면 "/TravelAgency/purchaseComplete.do"로 가기 -->
						</form> 
			</div>
		</div>
	</div>
</div>