<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link href="/TravelAgency/css/login-box.css" rel="stylesheet" type="text/css" />

<body>			
			
<script>
/* ====================== */

function getUserData() {
    /* FB.api('/me', function(response) {
        document.getElementById('response').innerHTML = 'Hello ' + response.name;
        console.log(response);
    }); */
    FB.api('/me', {fields: 'name,email,gender,birthday'}, function(response) {
        console.log(JSON.stringify(response));
        $("#name").text("이름 : "+response.name);
        $("#email").text("이메일 : "+response.email);
        $("#gender").text("성별 : "+response.gender);
        $("#birthday").text("생년월일 : "+response.birthday);
        $("#id").text("아이디 : "+response.id);
        alert("aa");
    });
}
/* ======================= */


 


  window.fbAsyncInit = function() {
    FB.init({
      appId      : '758376737660632',
      cookie : true, // 서버가 액세스 할 수 있도록 쿠키를 활성화합니다.
      xfbml      : true,
      version    : 'v2.8',
    });
    FB.AppEvents.logPageView();
  };
  
  /* ============================ */
  //check user session and refresh it
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            //user is authorized
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();            
        } else {
            //user is not authorized
        }
  /* =============================== */

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/ko_KR/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=758376737660632";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>

	  
<div id="aa"style="background-image: URL(/TravelAgency/image/member/login-box-back.jpg); background-repeat: repeat; position: absolute;
    width:100%; 
    top: 0px;
    left: 0px;">

<div id="login-box">


<div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>


<H2>Login</H2>
Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br/><br/>

<div id="login-box-name" style="margin-top:20px;">Email:

</div>
<div id="login-box-field" style="margin-top:20px;">
	<input name="q" class="form-login" title="Username" value="" size="30" maxlength="2048" />
</div>
<div id="login-box-name">Password:
</div>
<div id="login-box-field">

	<input name="q" type="password" class="form-login" title="Password" value="" size="30" maxlength="2048" />
</div><br/>
	<span class="login-box-options"><input type="checkbox" name="1" value="1"> Remember Me <a href="#" style="margin-left:30px;">Forgot password?</a></span>
<br/><br/>
<a href="#"><img src="/TravelAgency/image/member/login-btn.png" style="margin-left:90px; width:103px; height:42px;" /></a>
<div class="fb-login-button" data-max-rows="1" data-size="large" data-show-faces="true" data-auto-logout-link="true"></div>

	<div id="access_token"></div>
            <div id="user_id"></div>
            <div id="name"></div>
            <div id="email"></div>
            <div id="gender"></div>
            <div id="birthday"></div>
            <div id="id"></div>



</div>
</div>


</body>

