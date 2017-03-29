<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/myPage/memberLeave.css">

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
				<font size=5 style="line-height:40px;">&nbsp;&nbsp;<b><u>회원탈퇴</u></b></font>
				<div class="tcb1a1b">
					<div class="reasonInput" style="font-size:12pt">
						탈퇴사유 : <input id="reason" name="reason" type="text" style="width:30%; height:1.8em; vertical-align:bottom;"><br>
						<br>
						개선사항<br>
						<textarea id="requirement" name="requirement" cols="80" rows="5" style="resize:none;"></textarea>
						<div style="text-align: center; margin-top:20px;">
							<input id="okBtn" type="button" value="회원탈퇴" style="width:8em; height:4em;">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>