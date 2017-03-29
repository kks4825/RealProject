<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>황제투어</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv='imagetoolbar' content='no' >
<link rel="stylesheet" type="text/css" href="css/board/ext-all.css">
<link rel="stylesheet" type="text/css" href="css/board/common.css">
<script type="text/javascript" src="js/board/jquery.min.js"></script>
<script type="text/javascript" src="js/board/ext-jquery-adapter.js"></script>
<script type="text/javascript" src="js/board/ext-all-3.js"></script>
<script type="text/javascript" src="js/board/lang.js"></script>
<script type="text/javascript" src="js/board/common.js"></script>
<!-- 제이쿼리 버전 충돌로 인해 재설정 -->
<script type="text/javascript" src="js/board/jquery-1.11.3.min.js"></script>
<script>
	var jb = jQuery.noConflict();
</script>
<script type="text/javascript" src="js/board/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="js/board/project_ui.js"></script>
<script type="text/javascript" src="js/board/nav.js"></script>
<script type="text/javascript" src="js/board/keydown.js"></script>
<script type="text/javascript" src="js/board/bookmark.js"></script>
<!-- // -->
<script>
window.fbAsyncInit = function() {
    FB.init({
      appId : '969677883167671',
      cookie : true, // 서버가 액세스 할 수 있도록 쿠키를 활성화합니다.
      xfbml : true,
      version : 'v2.8',
    });
    FB.AppEvents.logPageView();
  };
/* ====================== */

function getUserData() {
    FB.api('/me', {fields: 'name,email,gender,birthday'}, function(response) {
        console.log(JSON.stringify(response));
        $("#name").text("이름 : "+response.name);
        $("#email").text("이메일 : "+response.email);
        $("#gender").text("성별 : "+response.gender);
        $("#birthday").text("생년월일 : "+response.birthday);
        $("#id").text("아이디 : " + response.id);
    });
  
    function statusChangeCallback(response) {
    	console.log('statusChangeCallback');
    	console.log(response);
    	// response 객체는 현재 로그인 상태를 나타내는 정보를 보여준다. 
    	// 앱에서 현재의 로그인 상태에 따라 동작하면 된다.
    	// FB.getLoginStatus().의 레퍼런스에서 더 자세한 내용이 참조 가능하다.
    	
    	FB.getLoginStatus(function(response) {
        	if (response.status === 'connected') {
            	//user is authorized
            	//document.getElementById('loginBtn').style.display = 'none';
            	getUserData();
        	} else {
            	alert("아이디 또는 비밀번호가 일치하지 않습니다");
        	}
    	});
    }
  /* ============================ */
  //check user session and refresh it
    function checkLoginState() { 
	  FB.getLoginStatus(function(response) { 
		  statusChangeCallback(response);
		  
		  $(location).attr('href','/TravelAgency/login.do');
	  }); 
	}
  }

  /* =============================== */

  (function(d, s, id) {
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/ko_KR/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>


<script> 
	(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=758376737660632";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	
	$(document).ready(function(){
		$('#login').click(function(){
			if($('#memId').val()=="" && $('#memPwd').val()=="")
				alert("아이디와 비밀번호를 입력하세요");
			else if($('#memPwd').val()=="")
				alert("비밀번호를 입력하세요");
			else if($('#memId').val()=="")
				alert("아이디를 입력하세요");
			else
				$('#loginSubmit').submit();
		});
	})
</script>
<!-- // -->


<link rel="stylesheet" type="text/css" href="css/board/reset.css" />
<link rel="stylesheet" type="text/css" href="css/board/skin.css" />

<!-- banner slider-->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="js/board/jquery.bxslider.min.js"></script>
<link href="css/board/jquery.bxslider.css" rel="stylesheet" />

</head>

	<div id="content_sub">
		<div class="sub_container">

<div class="sub_menu">
				<!--leftmenu영역시작-->
				
			<!--로그인 안했을떄-->


				<!--leftmenu영역끝-->
			</div><!--sub_menu-->
			<div class="sub_cont">
				<div class="sub_tit">
					<h3>LOGIN</h3>
					<p><span class="home">HOME</span><span>마이페이지</span><span class="bold">로그인</span></p>
				</div><!--sub_tit-->
				<div class="sub_login">
					<div class="login_box">
						<h2 style="font-family:serif; font-size:15px;">로그인을  하시면  더욱  편리하게  사이트를  이용하실수 있습니다.</h2>
<div id="module_loginform" class="him_module">
<form id="loginSubmit" action="/TravelAgency/login.do" method="post">


<div>
	<input type="text" id="memId" placeholder="아이디" name="memId" value="" tabindex="1" allowBlank=false label="아이디" class="login_input mb10">
	<input type="password" id="memPwd" placeholder="비밀번호" name="memPwd" class="login_input" value="" tabindex="2" allowBlank=false label="비밀번호">
	<h3 onclick="login.submit();">
		<a href="#" id="login"> 
				<img src="images/member/login_button.png"	style=" width: 300px; height: 50px;" />
			</a>
	</h3>
</div>
<p><input type="checkbox" name="save_member_id" value="1" > 아이디저장</p>

<iframe id="hiddenframe" name="hiddenframe" frameborder=0 style="width:0px;height:0px;"></iframe>
</div>
						<div class="login_btn">
							<div class="btn_idfind">
								<a href="/TravelAgency/idFind.do">
									<p>아이디를 잊으셨나요?</p>
									<h2>아이디 찾기</h2> 
								</a>
							</div>
							<div class="btn_join">
								<a href="/TravelAgency/joinAgree.do">
									<p>아직 회원이 아니신가요?</p>
									<h2>회원가입</h2>
								</a>
							</div>
						</div><!--login_btn-->
					</div><!--login_box-->
				</div><!--sub_login-->
			</div><!--sub_cont-->

		</div><!--sub_container-->
	</div><!--content_sub-->
	
	<div style="height:50px;"></div>
</form>


	<div id="footer">
<div class="footer_cont blind">
			<h2 class="blind">하단 네비게비게이션</h2>
			<ul class="footer_nav">
				<li class="first"><a href="/about/about">회사소개</a></li>
				<li><a href="/member/agreement">이용약관</a></li>
				<li><a href="/member/policy">개인정보취급방침</a></li>
				<li><a href="/about/location">오시는길</a></li>
			</ul><!--footer_nav-->
			
			<p>&copy;Gabia Inc. All Rights Reserved.</p>
			<h2 class="blind">하단 SNS 버튼</h2>
			<ul class="footer_sns">
				
			</ul><!--footer_sns-->
		</div><!--footer_cont-->
		

		<address>
			<p>(주)황제투어&nbsp;&nbsp;|&nbsp;&nbsp;대표이사: 김동욱 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층&nbsp;&nbsp;|&nbsp;&nbsp;소재지: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층</p>
			<p>사업자등록번호: 214-86-39239&nbsp;&nbsp;|&nbsp;&nbsp;통신판매업 신고번호: 제2012-경기성남-1188호 </p>
			<p class="copy">Copyright@Gabia All rights Reserved</p>
		</address>
	</div><!--footer-->

</div><!--wrap-->


<!-- 하단 공통 footer 생성영역 -->

<script type="text/javascript">
var sidebarurl = "http://skin14.dartplus.kr/"; // Change as required 
var sidebartitle = "가비아"; // Change as required 
var url = this.location; 
var title = document.title; 

function bookmarksite() { 
if (window.sidebar && window.sidebar.addPanel){ // Firefox 
window.sidebar.addPanel(sidebartitle, sidebarurl,""); 
} 
else if ( document.all ) { // IE Favorite 
window.external.AddFavorite(url, title); 
} 
else if (window.opera && window.print) { 
// do nothing 
 } 
else if (navigator.appName=="Netscape") { 
alert("확인을 클릭하신 후 주소창에서 <Ctrl-D>를 누르시면 즐겨찾기에 등록됩니다."); 
} 
 } 

 if (window.sidebar && window.sidebar.addPanel) { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
  } 
 else if (document.all) { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
 } 
 else if (window.opera && window.print) { 
document.write('<a href = "'+sidebarurl+'" title="'+sidebartitle+'" rel="sidebar"></a>'); 
 } 
 else if (navigator.appName=="Netscape") { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
} 
</script>

  <!--각종처리를 위한 히든 템플릿변수입니다. 삭제하시면 절대! 안됩니다.-->
  <!--업데이트를 위한 히든 템플릿변수입니다. 삭제하시면 절대! 안됩니다.-->

</body>
</html>

