<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/myPage/myPassport_visa.css">


<script type="text/javascript"> 	
	function mySubmit(index) {
		if (index == 1) {
			document.passport_visa.action = '/TravelAgency/passport_information.do';
		}
		if (index == 2) {
			document.passport_visa.action = '/TravelAgency/visa_information.do';
		}
		document.passport_visa.submit();
	}

	window.onload = function() {
		document.passport_visa.visaContry.value = '${memberDTO.visaContry}';
	}
</script>
<div class="t-wrap">
	<div class="tu">
		<jsp:include page="sideMenuBar.jsp" />
		<form name="passport_visa" method="post">
			<div class="passport_visa">
				<div class="passport_infomation">
					<h2 style="font-size:25px; color:#333333; font-weight:600; padding-bottom:10px; text-align: center;">여권 정보</h2>
					<table class="board_css" style="text-box:50;">
						<tr>
							<td width="120" style="text-align: center;">&nbsp;영문이름</td>
							
							<td >&nbsp;&nbsp; <input type="text" name="lastName"
								value="${memberDTO.lastName  }">&nbsp;(성) &nbsp; <input
								type="text" name="firstName" value="${memberDTO.firstName }">&nbsp;(이름)&nbsp;
							</td>
						</tr>
						
						<tr >
							<td width="120" style="text-align: center;">&nbsp;여권번호</td>
							
							<td>&nbsp;&nbsp; <input type="text" name="passportNumber"
								value="${memberDTO.passportNumber }">
							</td>
						</tr>
						
						<tr>
							<td width="120" style="text-align: center;">&nbsp;여권발급일</td>
							
							<td>&nbsp;&nbsp; <input type="text" size="4"
								name="passportStartYear" value="${memberDTO.passportStartYear }">&nbsp;년&nbsp;
								<input type="text" size="2" name="passportStartMonth"
								value="${memberDTO.passportStartMonth }">&nbsp;월&nbsp; <input
								type="text" size="2" name="passportStartDay"
								value="${memberDTO.passportStartDay }">&nbsp;일
							</td>
						</tr>
					
						<tr>
							<td width="120" style="text-align: center;">&nbsp;여권만료일</td>
						
							<td>&nbsp;&nbsp; <input type="text" size="4"
								name="passportEndYear" value="${memberDTO.passportEndYear }">&nbsp;년&nbsp;
								<input type="text" size="2" name="passportEndMonth"
								value="${memberDTO.passportEndMonth }">&nbsp;월&nbsp; <input
								type="text" size="2" name="passportEndDay"
								value="${memberDTO.passportEndDay }">&nbsp;일
							</td>
						</tr>
			
					</table>
					<div class="btn_center">
						<input type="button" value="저장" onclick="javascript:mySubmit(1)"
							style="border: none; font-size:15px; font-weight:bold; width: 100pt; height: 30pt; background-color: #1e70dd; color: #FFFFFF;">
					</div>
				</div>
		</form>
	</div>
</div>