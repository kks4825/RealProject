<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/myPage/myPwdChange.css?ver=1">

<script>
	$(document).ready(function() {
		$("#pwdChg").click(function() {
			var newPwd = $('#newPwd').val();
			var newPwdChk = $('#newPwdChk').val();

			if (newPwd != newPwdChk)
				alert("비밀번호를 다시 확인해주세요");
			else if(newPwd == newPwdChk)
				$('#pwdChgForm').submit();
		});
	});
</script>

<form id="pwdChgForm" action="/TravelAgency/pwdChange.do" method="post">
	<div class="t-wrap">
		<div class="tu">
			<jsp:include page="sideMenuBar.jsp" />
			<div class="tbc">
			
				 <div class="sub_join">
						<div></div>
						<h2 style="font-size:25px; color:#333333; font-weight:600; padding-bottom:10px;">비밀번호	변경</h2>
						<table class="board_css">
							<tr height=30%>
								<td width=30%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·새
									비밀번호</td>
								<td width=70%><input id="newPwd" name="newPwd" type="password" 
									placeholder="새로운 비밀번호를 입력하세요" size="35"> 비밀번호 입력
								</td>
							</tr>
							<tr height=40%>
								<td width=30%></td>
								<td width=70%>
<pre>- 8~16자의 영문대소문자, 숫자의 조합으로 사용하시기 바랍니다. 예)hanatour2011
- 아이디와 유사하거나 유추하기 쉬운 비밀번호는 유출의 위험이 많습니다.
- 주기적인 비밀번호 변경으로 고객님의 소중한 개인정보를 보호해주세요.
- 비밀번호 변경시 우측 보안등급을 참고하여 안전한 비밀번호로 변경하시기 바랍니다.
</pre></td>
							</tr>
							<tr height=30%>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·비밀번호 확인</td>
								<td><input id="newPwdChk" type="password" placeholder="새로운 비밀번호를 다시 입력하세요" size="35">새로운 비밀번호 재입력</td>
							</tr>
						</table><!--board_css-->
					
					
						<!-- 회원가입시 자동가입 방지 captcha -->
						
							<div class="btn_center">
							<input type="button" id="pwdChg"
								style="border: none; font-size:15px; font-weight:bold; width: 100pt; height: 30pt; background-color: #1e70dd; color: #FFFFFF;"
								value="비밀번호 변경"> 
							
							</div><!--btn_center-->
						</div><!--sub_join-->	 

				<!-- <div class="tcb1">
					<font size=5 style="line-height: 40px;">&nbsp;&nbsp;<b><u>비밀번호	변경</u></b></font>
					<div class="tcb1a1b">
						<table width=100% height=100% style="text-align: left">
							<tr height=30%>
								<td width=30%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·새
									비밀번호</td>
								<td width=70%><input id="newPwd" name="newPwd" type="password" 
									placeholder="새로운 비밀번호를 입력하세요" size="35"> 비밀번호 입력
								</td>
							</tr>
							<tr height=40%>
								<td width=30%></td>
								<td width=70%>
<pre>- 8~16자의 영문대소문자, 숫자의 조합으로 사용하시기 바랍니다. 예)hanatour2011
- 아이디와 유사하거나 유추하기 쉬운 비밀번호는 유출의 위험이 많습니다.
- 주기적인 비밀번호 변경으로 고객님의 소중한 개인정보를 보호해주세요.
- 비밀번호 변경시 우측 보안등급을 참고하여 안전한 비밀번호로 변경하시기 바랍니다.
</pre></td>
							</tr>
							<tr height=30%>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·비밀번호 확인</td>
								<td><input id="newPwdChk" type="password" placeholder="새로운 비밀번호를 다시 입력하세요" size="35">새로운 비밀번호 재입력</td>
							</tr>
						</table>
					</div>
					<div class="tcb1a1c">
						<input id="pwdChg" type="button" value="비밀번호 변경" style="width: 120px; height: 40px;">
					</div>
				</div>  -->
			</div>
		</div>
	</div>
</form>