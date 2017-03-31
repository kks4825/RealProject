<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
div{
	border: 0px solid red;
	padding: 0px;
	margin: 0px;
}
table tr,th,td{
	padding:10px;
	margin:5px;
}
h2{
	font-size:20px;
	padding-bottom:20px;
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
function maxLengthCheck(object){
  if (object.value.length > object.maxLength){
   object.value = object.value.slice(0, object.maxLength);
  }    
 }
function maxLengthCheck2(object){
 if (object.value.length > object.maxLength){
  object.value = object.value.slice(0, object.maxLength);
 }    
}
function creditCheck(){
	var totalNumber=($('#1').val().length+$('#2').val().length+$('#3').val().length+$('#4').val().length);
	var cvcNumber=$('#cvc').val().length;
	var cardPassword=$('#cardPassword').val().length;
	if(totalNumber!=16){
		alert("카드번호를 정확히 입력해주세요");
	}else if(cvcNumber!=3){
		alert("카드번호cvc 번호를 정확히 입력해주세요");
	}else if(cardPassword!=4){
		alert("카드비밀번호를 정확히 입력해주세요");
	}else{
		alert("결제가 완료되었습니다. 마이페이지(예약내역)로 이동합니다.");
		document.creditForm.submit();
	}
}

/* 카드번호 16자리가 안되면 에러 $().val().length;
cvc번호 3자리 안되면 에러
카드비밀번호 4자리 안되면 에러 */

</script>
<div id="content_sub">
	<div class="sub_container">
		<div class="sub_cont">
			<div class="pay" style="margin:0 auto; width:100%; margin-top:0px;border: 0px solid #ddd;">
				<div class="sub_tit" style="margin:0 auto; width:100%; margin-top:-20px;">
					<h3>결제 정보</h3>
				</div><!--sub_tit-->
				<form name="creditForm" method="post" action="/TravelAgency/purchaseComplete.do">
				<div class="pay_category">카드 입력 정보</div>
				<div class="pay">
					<div>
						
						
						  <input type="hidden" name="pack_no" value="${pack_no }">
						  <input type="hidden" name="adults" value="${adults }">
						  <input type="hidden" name="kids" value="${kids }">
						  <input type="hidden" name="paymethod" value="${card }+${monthly}">
						  <input type="hidden" name="totalPay" value="${totalPay }">
						  <input type="hidden" name="paymentState" value="결제완료(신용카드)">
						  
						  <table class="table table-striped">
						  	<tr>
						  		<th>카드종류</th>
						  		<td>${card }</td>
						  	</tr>
						  	<tr>
						  		<th>할부정보</th>
						  		<td>${monthly }</td>
						  	</tr>
						  	<tr>
						  		<th>결제금액</th>
						  		<td>${totalPay }</td>
						  	</tr>
						  	<tr>
						  		<th>카드번호</th>
						  		<td>
						  		 <input type="number" maxlength="4" max="9999" oninput="maxLengthCheck(this)" id="1">
						  		 -<input type="password" maxlength="4" id="2">
						  		 -<input type="number" maxlength="4" max="9999" oninput="maxLengthCheck(this)" id="3">
						  		 -<input type="password" maxlength="4" id="4">
						  		</td>
						  	</tr>
						  	<tr>
						  		<th>유효일자</th>
						  		<td>
						  			<select name="valid_month">
						  				<option value="1월">1월</option>
						  				<option value="2월">2월</option>
						  				<option value="3월">3월</option>
						  				<option value="4월">4월</option>
						  				<option value="5월">5월</option>
						  				<option value="6월">6월</option>
						  				<option value="7월">7월</option>
						  				<option value="8월">8월</option>
						  				<option value="9월">9월</option>
						  				<option value="10월">10월</option>
						  				<option value="11월">11월</option>
						  				<option value="12월">12월</option>
						  			</select>/
						  			<select name="valid_year">
						  				<option value="18년">18년</option>
						  				<option value="19년">19년</option>
						  				<option value="20년">20년</option>
						  				<option value="21년">21년</option>
						  				<option value="22년">22년</option>
						  				<option value="23년">23년</option>
						  			</select>
						  		</td>
						  	</tr>
						  	<tr>
						  		<th>CVC번호</th>
						  		<td><input type="number" maxlength="3" max="999" oninput="maxLengthCheck2(this)" id="cvc"></td>
						  	</tr>
						  	<tr>
						  		<th>카드비밀번호</th>
						  		<td><input type="password" maxlength="4" id="cardPassword"></td>
						  	</tr>
						  </table>
						 
					</div>
				</div>
				<br><br>
				 <input type="button" style="font-size: 17px; float: right;  height: 30px; width: 120px; " value="결제방법변경" onclick="history.back(-1)">
				 <input type="button" style="font-size: 17px; float: right;  height: 30px; width: 120px; " value="최종결제" onclick="javascript:creditCheck()">
				</form>
				<br><br>
			</div>
		</div>
	</div>
</div>