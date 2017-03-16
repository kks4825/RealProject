<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-예약 확인</title>

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
</head>
<body>
	<div class="t-wrap">
		<div class="tu">
			<jsp:include page="sideMenuBar.jsp" />
			<form name="passport_visa" method="post">
				<div class="passport_visa">
					<div class="passport_infomation">
						<h3>여권 정보</h3>
						<table>
							<tr>
								<td colspan="5" width="700" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<th width="120">&nbsp;영문이름</th>
								<td bgcolor="cccccc"></td>
								<td>&nbsp;&nbsp;<input type="text" name="lastName"
									value="${memberDTO.lastName }">(성) <input type="text"
									name="firstName" value="${memberDTO.firstName }">(이름)
								</td>
							</tr>
							<tr>
								<td colspan="5" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<th width="120">&nbsp;여권번호</th>
								<td bgcolor="cccccc"></td>
								<td>&nbsp;&nbsp;<input type="text" name="passportNumber"
									value="${memberDTO.passportNumber }"></td>
							</tr>
							<tr>
								<td colspan="5" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<th width="120">&nbsp;여권발급일</th>
								<td bgcolor="cccccc"></td>
								<td>&nbsp;&nbsp;<input type="text" size="4"
									name="passportStartYear"
									value="${memberDTO.passportStartYear }">&nbsp;년&nbsp; <input
									type="text" size="2" name="passportStartMonth"
									value="${memberDTO.passportStartMonth }">&nbsp;월&nbsp;
									<input type="text" size="2" name="passportStartDay"
									value="${memberDTO.passportStartDay }">&nbsp;일
								</td>
							</tr>
							<tr>
								<td colspan="5" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<th width="120">&nbsp;여권만료일</th>
								<td bgcolor="cccccc"></td>
								<td>&nbsp;&nbsp;<input type="text" size="4"
									name="passportEndYear" value="${memberDTO.passportEndYear }">&nbsp;년&nbsp;
									<input type="text" size="2" name="passportEndMonth"
									value="${memberDTO.passportEndMonth }">&nbsp;월&nbsp; <input
									type="text" size="2" name="passportEndDay"
									value="${memberDTO.passportEndDay }">&nbsp;일
								</td>
							</tr>
							<tr>
								<td colspan="5" bgcolor="cccccc"></td>
							</tr>
						</table>
						<div class="passport_infomation_save">
							<input type="button" value="저장" onclick="javascript:mySubmit(1)"
								style="width: 80px; height: 30px;">
						</div>
					</div>

					<div class="visa_infomation">
						<h3>비자 정보</h3>
						<table>
							<tr>
								<td colspan="5" width="700" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<th width="120">&nbsp;영문이름</th>
								<td bgcolor="cccccc" />
								<td>&nbsp;&nbsp;
							</tr>
							<tr>
								<td colspan="5" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<th width="120">&nbsp;비자국가</th>
								<td bgcolor="cccccc" />
								<td>&nbsp; <select name="visaContry">
										<option value="">국가선택</option>
										<option value="가나">가나</option>
										<option value="가봉">가봉</option>
										<option value="감비아">감비아</option>
										<option value="기니">기니</option>
										<option value="기니비사우">기니 비사우</option>
										<option value="나미비아">나미비아</option>
										<option value="나아지리아">나이지리아</option>
								</select>
								</td>
							</tr>
							<tr>
								<td colspan="5" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<th width="120">&nbsp;유효기간</th>
								<td bgcolor="cccccc" />
								<td>&nbsp;&nbsp;<input type="text" size="4"
									name="visaStartYear" value="${memberDTO.visaStartYear }">&nbsp;년&nbsp;
									<input type="text" size="2" name="visaStartMonth"
									value="${memberDTO.visaStartMonth }">&nbsp;월&nbsp; <input
									type="text" size="2" name="visaStartDay"
									value="${memberDTO.visaStartDay }">&nbsp;일~ <input
									type="text" size="4" name="visaEndYear"
									value="${memberDTO.visaEndYear }">&nbsp;년&nbsp; <input
									type="text" size="2" name="visaEndMonth"
									value="${memberDTO.visaEndMonth }">&nbsp;월&nbsp; <input
									type="text" size="2" name="visaEndDay"
									value="${memberDTO.visaEndDay }">&nbsp;일
								</td>
							</tr>
							<tr>
								<td colspan="5" bgcolor="cccccc"></td>
							</tr>
						</table>
						<div class="visa_infomation_save">
							<input type="button" value="저장" onclick="javascript:mySubmit(2)"
								style="width: 80px; height: 30px;">
						</div>
					</div>
				</div>
			</form>

		</div>
	</div>

</body>
</html>