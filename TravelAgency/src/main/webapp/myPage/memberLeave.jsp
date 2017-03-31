<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/myPage/memberLeave.css?ver=1">

<script>
$(document).ready(function(){
	$('#okBtn').click(function(){
		var reason = $('#reason').val();
		var requirement = $('#requirement').val();
		
		if(reason=="" && requirement=="")
			alert("사유와 개선사항을 입력해주세요");
		else if(reason=="")
			alert("탈퇴사유를 입력해주세요");
		else if(requirement=="")
			alert("개선사항을 입력해주세요");
		else
			$('#leaveSuccess').submit();
	});
});
</script>

<form id="leaveSuccess" action="/TravelAgency/leaveSuccess.do" method="POST">
<div class="t-wrap">
	<div class="tu">
		<jsp:include page="sideMenuBar.jsp"/>
		<div class="tbc">
			<div class="tcb1">
				<h2 align="center" style="font-size:25px; color:#333333; font-weight:600; padding-bottom:10px;">회원 탈퇴</h2>
				<div class="tcb1a1b" style="padding-left:100px;">
					<div class="reasonInput" style="font-size:12pt;">
						<table class="board_css" style="width:80%;">
							<tr>
								<th>탈퇴사유</th>
								<td><input id="reason" name="reason" type="text" style="width:30%; height:1.8em; vertical-align:bottom;"><br></td>
							</tr>
							<tr>
								<th>개선사항</th>
								<td><textarea id="requirement" name="requirement" cols="80" rows="5" style="resize:none;"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input id="okBtn" type="button" value="회원탈퇴" style="width:8em; height:4em;"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>