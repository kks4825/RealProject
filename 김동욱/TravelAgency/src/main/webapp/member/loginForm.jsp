<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="/TravelAgency/css/member/login-box.css" rel="stylesheet"
	type="text/css" />

<div id="fb-root"></div>
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=758376737660632";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	$(document).ready(function() {
		$('#login').click(function() {
			if ($('#id').val() == "" && $('#pwd').val() == "")
				alert("아이디와 비밀번호를 입력하세요");
			else if ($('#pwd').val() == "")
				alert("비밀번호를 입력하세요");
			else if ($('#id').val() == "")
				alert("아이디를 입력하세요");
			else
				$('#loginSubmit').submit();
		});
	})
</script>

<div id="content_sub">
	<div class="sub_container">

		<div class="sub_menu">
			<!--leftmenu영역시작-->

			<!--로그인 안했을떄-->


			<!--leftmenu영역끝-->
		</div>
		<!--sub_menu-->
		<div class="sub_cont">
			<div class="sub_tit">
				<h3>LOGIN</h3>
				<p>
					<span class="home">HOME</span><span>마이페이지</span><span class="bold">로그인</span>
				</p>
			</div>
			<!--sub_tit-->
			<div class="sub_login">
				<div class="login_box">
					<h2 style="font-family: serif; font-size: 15px;">로그인을 하시면 더욱
						편리하게 사이트를 이용하실수 있습니다.</h2>
					<div id="module_loginform" class="him_module">
						<form id="loginSubmit" action="/TravelAgency/login.do"
							method="post">
							<div>
								<input type="text" id="memId" placeholder="아이디" name="memId"
									value="" tabindex="1" allowBlank=false label="아이디"
									class="login_input mb10"> <input type="password"
									id="memPwd" placeholder="비밀번호" name="memPwd"
									class="login_input" value="" tabindex="2" allowBlank=false
									label="비밀번호">
								<h3 onclick="login.submit();">
									<a href="#" id="login"> <img
										src="images/member/login_button.png"
										style="width: 300px; height: 50px;" />
									</a>
								</h3>
							</div>

							<iframe id="hiddenframe" name="hiddenframe" frameborder=0
								style="width: 0px; height: 0px;"></iframe>
						</form>
					</div>
					<div class="login_btn">
						<div class="btn_idfind">
							<a href="/TravelAgency/idFind.do">
								<p>아이디/비밀번호를 잊으셨나요?</p>
								<h2>아이디/비밀번호 찾기</h2>
							</a>
						</div>
						<div class="btn_join">
							<a href="/TravelAgency/joinAgree.do">
								<p>아직 회원이 아니신가요?</p>
								<h2>회원가입</h2>
							</a>
						</div>
					</div>
					<!--login_btn-->
				</div>
				<!--login_box-->
			</div>
			<!--sub_login-->
		</div>
		<!--sub_cont-->

	</div>
	<!--sub_container-->
</div>
<!--content_sub-->

<div style="height: 50px;"></div>
