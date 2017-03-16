<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-비밀번호 변경</title>

<link rel="stylesheet" href="css/myPage/myPwdChange.css"5>

</head>
<body>
	<div class="t-wrap">
		<div class="tu">
			<jsp:include page="sideMenuBar.jsp" />
			<div class="tbc">
				<div class="tcb1"><font size=5 style="line-height:40px;">&nbsp &nbsp <b><u>비밀번호 변경</u></b></font></table>
					<div class="tcb1a">
						<div class="tcb1a1">
							<div class="tcb1a1a">
								<table width=100% height=100% style="text-align:left">
									<tr>
										<td  width=30% >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp·기존 사용 비밀번호
										</td>
										<td  width=70%><input type="text" placeholder="기존의 비밀번호를 입력하세요"  size="35"><font size=2>&nbsp&nbsp&nbsp(임시비밀번호 발급 후에는 임시비밀번호를 기입해주세요)</font>
										</td>
									</tr>
								</table>
	 						</div>
	 					</div>
						<div class="tcb1a1b">
							<table width=100% height=100% style="text-align:left">
								<tr height=30%>
									<td width=30% >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·새 비밀번호
									</td>
									<td width=70%><input type="text" placeholder="새로운 비밀번호를 입력하세요"  size="35"><!-- 비밀번호 입력 -->
									</td>
								</tr>
								<tr height=40%>
									<td  width=30% >
									</td>
									<td  width=70%>
<pre>- 8~16자의 영문대소문자, 숫자의 조합으로 사용하시기 바랍니다. 예)hanatour2011
- 아이디와 유사하거나 유추하기 쉬운 비밀번호는 유출의 위험이 많습니다.
- 주기적인 비밀번호 변경으로 고객님의 소중한 개인정보를 보호해주세요.
- 비밀번호 변경시 우측 보안등급을 참고하여 안전한 비밀번호로 변경하시기 바랍니다.
</pre>
									</td>
								</tr>
								<tr height=30%>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·비밀번호 확인
									</td>
									<td><input type="text" placeholder="새로운 비밀번호를 다시 입력하세요"  size="35"><!-- 새로운 비밀번호 재입력 -->
									</td>
								</tr>
							</table>
						</div>
						<div class="tcb1a1c">
							<input type="button" value="비밀번호 변경" onclick="" style="width:120px;height:40px;">
						</div>
					</div> 
				</div>
			</div>
		</div>
	</div>
</body>
</html>