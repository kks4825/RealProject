<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/myPage/myPageInputPwd.css">

<form action="/TravelAgency/pwdCheck.do" method="post">
<div class="t-wrap">
	<div class="tu">
		<jsp:include page="sideMenuBar.jsp" />
		<div class="tbc">
			<div class="tcb1">
				<font size=5 color=blue style="line-height: 50px;">&nbsp; &nbsp; <b>비밀번호 재확인</b></font>
				<div class="tcb1a">
					<div class="tcb1a1">
						<div class="tcb1a1a">
							<font size=3 style="line-height: 40px;">
								<b>회원님의 정보를 안전하게 보호하기 위하여 비밀번호를 다시 한번 확인합니다.</b>
							</font>
						</div>
						<div class="tcb1a1b">
							<table class="board_css">
								<tr>
									<th>아이디</th>
									<td style="font-weight: bold" width="200">&nbsp;&nbsp;${sessionScope.memId}
									</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td style="font-weight: bold">&nbsp;
										<input name="id" type="hidden" value="${sessionScope.memId }">
										<input name="pwd" type="password" placeholder="비밀번호를 입력하세요" size="35">
									</td>
								</tr>
							</table>
						</div>
						<div class="tcb1a1c">
							<div class="tcb1a1c1">
								<input type="submit" value="확인" style="width:60px; height:30px">&nbsp;&nbsp; 
								<input type="reset" value="취소" style="width:60px; height:30px">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>