<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/myPage/myPageInputPwd.css?ver=1">

<form action="/TravelAgency/pwdCheck.do" method="post">
<div class="t-wrap">
	<div class="tu">
		<jsp:include page="sideMenuBar.jsp" />
		<div class="tbc">
			<div class="tcb1">
				<font size=5 style="line-height: 40px;">&nbsp; &nbsp; <b><u>비밀번호 재확인</u></b></font>
				<div class="tcb1a">
					<div class="tcb1a1">
						<div class="tcb1a1a">
							<font size=3 style="line-height: 40px;">
								<b>회원님의 정보를 안전하게 보호하기 위하여 비밀번호를 다시 한번 확인합니다.</b>
							</font>
						</div>
						<div class="tcb1a1b">
							<table width="100%" height="100%" style="text-align: left">
								<tr>
									<td width=30%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·아이디
									</td>
									<td width=70%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.memId}
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·비밀번호
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;
										<input name="id" type="hidden" value="${sessionScope.memId }">
										<input name="pwd" type="password" placeholder="비밀번호를 입력하세요" size="35">
									</td>
								</tr>
							</table>
						</div>
						<div class="tcb1a1c">
							<div class="tcb1a1c1">
								<input type="submit" value="확인">&nbsp;&nbsp; 
								<input type="reset" value="취소">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>