<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
div{
	border: 1px solid red;
	padding: 10px;
	margin: 10px;
}
#bankInfo tr,th,td{
	padding:10px;
	margin:10px;
}
</style>
<div>
	<div>
		<table id="bankInfo" class="table table-striped">
			<tr>
				<th>은행명</th>
				<td>${bankDTO.bank_name }</td>
			</tr>
			
			<tr>
				<th>계좌번호</th>
				<td><fmt:formatNumber pattern="####################" value="${bankDTO.bank_account }"/></td>
			</tr>
			
			<tr>
		  		<th>결제금액</th>
		  		<td>${totalPay }</td>
		  	</tr>			
		</table>
		<p>입금할 <strong>금액을 확인</strong> 후, 은행에 입금하여 주세요.
		   입금확인 완료 후 예약이 확정됩니다. 이용해 주셔서 감사합니다.<br>
		   입금 완료 후 ‘결제완료’ 확인까지 <strong>최대 10분</strong>이 소요됩니다. 입금기한 내에 미입금시 주문이 자동취소 됩니다. 
		</p>
		<input type="button" value="결제방법변경" onclick="history.back(-1)">
		<input type="button" value="마이페이지" onclick="href='/TravelAgency/index.do'"> <!-- 마이페이지에서 결제 완료하면 "/TravelAgency/purchaseComplete.do"로 가기 --> 
	</div>
</div>