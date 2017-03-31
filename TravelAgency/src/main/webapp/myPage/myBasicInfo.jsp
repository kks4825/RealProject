<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/myPage/myBasicInfo.css">

<script type="text/javascript">
	function zipcodeSearch() {
		window.open("/TravelAgency/checkPost.do", "", "width=450 height=400 scrollbars=yes");
	}

	window.onload = function() {

		document.myBasicInfo.memGender['${memberDTO.getMemGender()}'].checked = true;

		document.myBasicInfo.memEmail0['${memberDTO.getMemEmail0()}'].checked = true;

		document.myBasicInfo.memMobile01.value = "${memberDTO.getMemMobile01()}";

		document.myBasicInfo.contry['${memberDTO.getContry()}'].checked = true;
	}

	function checkModify() {
		document.myBasicInfo.submit();
	}
</script>

<form name="myBasicInfo" method="post" action="/TravelAgency/myBasicInfoConfirm.do">
	<div id="body">
		<div class="t-wrap">
			<div class="tu">
				<jsp:include page="sideMenuBar.jsp" />
				<div class="member_infomation">
					
					
					<div class="sub_join">
						<div></div><div></div><div></div>
						<h2 style="font-size:25px; color:#333333; font-weight:600; padding-bottom:10px;">기본 정보 입력</h2>
						<table class="board_css">
							<tr>
								<th>아 이 디</th>
								<td style="font-weight: bold" width="600";>&nbsp;&nbsp;${memberDTO.getMemId()} 
									<Input type="hidden" name="memId" value="${memberDTO.getMemId()}">
								</td>
							</tr>
							
							
							<tr>
								<th>이 름</th>
								<td style="font-weight: bold">&nbsp;&nbsp;${memberDTO.getMemName()}
									<Input type="hidden" name="memName" value="${memberDTO.getMemName()}">
								</td>
							</tr>
							
							
							
							<tr>
								<th>생 년 월 일</th>
								<td>&nbsp;&nbsp;
									<input type="text" name="memBirth01" value="${memberDTO.getMemBirth01()}">
									년 
									<input type="text" name="memBirth02" value="${memberDTO.getMemBirth02()}">
									월 
									<input type="text" name="memBirth03" value="${memberDTO.getMemBirth03()}">
									일 
								</td>
							</tr>
							
							
							
							<tr>
								<th>성 별</th>
								<td>&nbsp;&nbsp;
									<input type="radio" name="memGender" value="0">&nbsp;남자&nbsp;
									<input type="radio" name="memGender" value="1">&nbsp;여자
								</td>
							</tr>
							
							
							
							<tr>
								<th>E-mail</th>
								<td>&nbsp;&nbsp;
									<input type="text" name="memEmail" value="${memberDTO.getMemEmail()}">
								</td>
							</tr>
							
							
							
							<tr>
								<th>메 일 수 신</th>
								<td>&nbsp;&nbsp;
									<input type="radio" name="memEmail0" value="0" checked>수신동의&nbsp; 
									<input type="radio" name="memEmail0" value="1">수신거부
								</td>
								<!-- 이메일 검사 -->
							</tr>
							
							
							
							<tr>
								<th>우 편 번 호</th>
								<td>&nbsp;&nbsp;&nbsp;
									<input type="text" name="memZipCode" id="zip" value="${memberDTO.memZipCode}" size="7" readonly>
									<input type="button" value="우편번호검색" style="border: none; width: 85pt; height: 18pt; background-color: #404040; color: #FFFFFF;"
									onclick="javascript:zipcodeSearch()">
								</td>
								<!-- 우편번호 검색  -->
							</tr>
							
							
							
							<tr>
								<th>주 소</th>
								<td>&nbsp;&nbsp;
									<input type="text" name="memAddr1" id="address1" value="${memberDTO.memAddr1}" size="50" readonly><br>&nbsp;&nbsp;
									<input type="text" name="memAddr2" id="address2" value="${memberDTO.memAddr2}" size="30">
								</td>
							</tr>
							
							
							
							<tr>
								<th>핸 드 폰</th>
								<td>&nbsp;&nbsp; 
									<select name="memMobile01">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="017">017</option>
											<option value="018">018</option>
									</select>- 
									<input type="text" name="memMobile02" value="${memberDTO.memMobile02}" size="5" maxlength="4">-
									<input type="text" name="memMobile03" value="${memberDTO.memMobile03}" size="5" maxlength="4">&nbsp;&nbsp;
								</td>
								<!-- 숫자만 입력가능 -->
							</tr>
							
							
							
							<tr>
								<th>관 심 나 라</th>
									<td>&nbsp; 
										<input type="radio" name="contry" value="0">유럽&nbsp;
										<input type="radio" name="contry" value="1">동남아&nbsp; 
										<input type="radio" name="contry" value="2">아시아&nbsp;
										<input type="radio" name="contry" value="3">미주&nbsp;
										<input type="radio" name="contry" value="4">중국/홍콩&nbsp; 
										<input type="radio" name="contry" value="5">인도&nbsp;
									</td>
									<!-- 나라 2개 이상 선택 하도록  -->
								</tr>
						</table><!--board_css-->
					
					
						<!-- 회원가입시 자동가입 방지 captcha -->
						
							<div class="btn_center">
							<input type="button" onclick="javascript:checkModify()"
								style="border: none; font-size:15px; font-weight:bold; width: 100pt; height: 30pt; background-color: #1e70dd; color: #FFFFFF;"
								value="기본정보 변경"> 
							
							</div><!--btn_center-->
						</div><!--sub_join-->	
				
				
				
				
				
				
				
				
				
				
				
				
				
					<%-- <div class="member_infomation_basis">
						<h3>기본 정보 입력</h3>
						<table cellspadding="0" cellspacing="0">
							<tr>
								<td colspan="5" width="700" height="2px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30px">
								<td align="center" width="100px" bgcolor="#EAEAEA">아 이 디&nbsp;<font color="red">*</font>
								</td>
								<td width="600">&nbsp;&nbsp;${memberDTO.getMemId()} 
									<Input type="hidden" name="memId" value="${memberDTO.getMemId()}">
								</td>
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">이 름&nbsp;<font
									color="red">*</font></td>
								<td>&nbsp;&nbsp;
									${memberDTO.getMemName()}
									<Input type="hidden" name="memName" value="${memberDTO.getMemName()}">	
								</td>
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">생년월일&nbsp;<font color="red">*</font></td>
								<td>&nbsp;&nbsp;
									<input type="text" name="memBirth01" value="${memberDTO.getMemBirth01()}" size="4" maxlength="4">
									년 
									<input type="text" name="memBirth02" size="3" value="${memberDTO.getMemBirth02()}" maxlength="2">
									월 
									<input type="text" name="memBirth03" size="3" value="${memberDTO.getMemBirth03()}" maxlength="2">
									일 
								</td>
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">성 별&nbsp;<font color="red">*</font></td>
								<td>&nbsp;&nbsp;
									<input type="radio" name="memGender" value="0">&nbsp;남자&nbsp;
									<input type="radio" name="memGender" value="1">&nbsp;여자
								</td>
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">E - mail&nbsp;<font color="red">*</font></td>
								<td>&nbsp;&nbsp;
									<input type="text" name="memEmail" value="${memberDTO.getMemEmail()}">
								</td>
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">메 일 수 신&nbsp;<font color="red">*</font></td>
								<td>&nbsp;&nbsp;
									<input type="radio" name="memEmail0" value="0" checked>수신동의&nbsp; 
									<input type="radio" name="memEmail0" value="1">수신거부
								</td>
								<!-- 이메일 검사 -->
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">우 편 번 호&nbsp;<font color="red">*</font></td>
								<td>&nbsp;&nbsp;&nbsp;
									<input type="text" name="memZipCode" id="zip" value="${memberDTO.memZipCode}" size="7" readonly>
									<input type="button" value="우편번호검색"
									onclick="javascript:zipcodeSearch()">
								</td>
								<!-- 우편번호 검색  -->
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr>
								<td align="center" bgcolor="#EAEAEA">주 &nbsp;소&nbsp;<font color="red">*</font></td>
								<td>&nbsp;&nbsp;
									<input type="text" name="memAddr1" id="address1" value="${memberDTO.memAddr1}" size="50" readonly><br>&nbsp;&nbsp;
									<input type="text" name="memAddr2" id="address2" value="${memberDTO.memAddr2}" size="30">
								</td>
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">핸 드 폰&nbsp;<font color="red">*</font></td>
								<td>&nbsp;&nbsp; 
									<select name="memMobile01">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="017">017</option>
											<option value="018">018</option>
									</select>- 
									<input type="text" name="memMobile02" value="${memberDTO.memMobile02}" size="5" maxlength="4">-
									<input type="text" name="memMobile03" value="${memberDTO.memMobile03}" size="5" maxlength="4">&nbsp;&nbsp;
								</td>
								<!-- 숫자만 입력가능 -->
							</tr>
							<tr>
								<td colspan="5" height="1px" bgcolor="cccccc"></td>
							</tr>
							<tr height="30">
								<td align="center" bgcolor="#EAEAEA">관 심 나 라&nbsp;</td>
								<td>&nbsp; 
									<input type="radio" name="contry" value="0">유럽&nbsp;
									<input type="radio" name="contry" value="1">동남아&nbsp; 
									<input type="radio" name="contry" value="2">아시아&nbsp;
									<input type="radio" name="contry" value="3">미주&nbsp;
									<input type="radio" name="contry" value="4">중국/홍콩&nbsp; 
									<input type="radio" name="contry" value="5">인도&nbsp;
								</td>
								<!-- 나라 2개 이상 선택 하도록  -->
							</tr>
							<tr>
								<td colspan="5" height="2px" bgcolor="cccccc"></td>
							</tr>
						</table>
					</div> --%>
					<!-- <div class="tcb1a1c">
						<input type="button" value="기본정보 변경" onclick="javascript:checkModify()" style="width: 120px; height: 40px;">
					</div> -->
				</div>
			</div>
		</div>
	</div>
</form>