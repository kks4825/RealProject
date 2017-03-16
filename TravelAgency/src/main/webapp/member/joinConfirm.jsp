<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
$(document).keydown(function(e){   
    if(e.target.nodeName != "INPUT" && e.target.nodeName != "TEXTAREA"){       
        if(e.keyCode === 8){   
        	return false;
       	}
    }
});

window.history.forward(0);
</script>

<div style="margin: 0 auto; width: 60%;">
	<div class="member_join" style="border: 1px solid blue;">
		<h2>&nbsp;회원가입완료</h2>
		<div class="member_title_step"
			style="font-weight: bold; font-size: 20px;">
			<span class="step_off">&nbsp;1.&nbsp;약관동의</span>&nbsp; <span
				class="step_off">2.&nbsp;정보입력</span>&nbsp; <span class="step_on"
				style="background-color: #FFB2D9;">3.&nbsp;가입완료</span>&nbsp;
		</div>
		<br>

		<div class="join" style="text-align: center;">
			<img src="image/member/main.jpg" style="width: 700px; height: 350px;">
			<h4>${sessionScope.id }고객님의 회원가입을 환영합니다!</h4>
			<h4>이제부터 투어의 다양한 서비스를 이용해 보세요.</h4>
			<br> <input type="button" style="border: none; width: 40pt; height: 25pt; 
				background-color: #36589C; color: #FFFFFF;"	value="로그인"
				onclick="location.href='/TravelAgency/loginForm.do'">&nbsp;&nbsp; 
				<input type="button" style="border: none; width: 60pt; height: 25pt; 
				background-color: #36589C; color: #FFFFFF;"	value="메인으로"
				onclick="location.href='/TravelAgency/index.do'">
		</div>
		<br>
	</div>
</div>
