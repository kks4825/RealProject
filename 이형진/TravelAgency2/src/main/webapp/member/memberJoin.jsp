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


<link rel="stylesheet" type="text/css" href="css/board/reset.css" />
<link rel="stylesheet" type="text/css" href="css/board/skin.css" />

<!-- banner slider-->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="js/board/jquery.bxslider.min.js"></script>
<link href="css/board/jquery.bxslider.css" rel="stylesheet" />

<script src="http://code.jquery.com/jquery-1.3.2.min.js" ></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js" ></script>

<script type="text/javascript">
 $(document).ready(function () {          
	  $('.memberjoin').validate({
		  rules: {
	          memId:{required:true, minlength:3},
	          memPwd:{required:true},
	          memPwdChk: {required:true, equalTo:'#memPwd'}, 
	          memName: {required:true},    
	          memEmail: {email:true},
	          memAddr2: {required:true},
	          mailCheck:{equalTo:'#mailReCheck'}
	      },
	      messages: {
	    	  memId: {
	               required:"아이디를 입력해주세요.",
	               minlength: jQuery.format("아이디는 {0}자 이상 입력해주세요!")
	          },
	          memPwd:"암호를 입력해주세요.",
	          memPwdChk: {
	              required: "암호를 다시 한번 입력해주세요.",
	              equalTo:"암호가 일치하지 않습니다." },
	   	      memName:"이름을 입력해주세요.",
	   	      memEmail: {
	              email:"이메일 형식이 틀립니다."
	   	      },
	   	      memAddr2:"주소를 입력해주세요.",
	   	      mailCheck:{
	   	    	  equalTo:"이메일 인증이 필요합니다."
	   	      }
	      }, errorPlacement: function(error, element) {
	            // do nothing
	      }, invalidHandler: function(form, validator) {
	             var errors = validator.numberOfInvalids();
	             if (errors) {
	                 alert(validator.errorList[0].message);
	                 validator.errorList[0].element.focus();
	             }
	      }, submitHandler: function(form) {
	            form.submit();
	      }
	  });
	}); 
	
function zipcodeSearch(){
	window.open("/TravelAgency/checkPost.do","","width=450 height=400 scrollbars=yes");
}

function idCheck(){
	var memId = document.memberJoin.memId.value;
	if(memId=="")
		alert("먼저 아이디를 입력하세요");
	else
		window.open("/TravelAgency/idCheck.do?memId="+memId,"","width=320 height=100");	
}

function checkEmail(){
	var sEmail = document.memberJoin.memEmail.value;
	if(sEmail=="")
		alert("먼저 이메일을 입력하세요");
	else
		window.open("/TravelAgency/sendMail/emailChk.do?memEmail="+sEmail,"","width=320 height=100");
	
}
</script>
</head>


	<div id="content_sub">
	
		<div class="sub_container">
		



			<div class="sub_cont">
				<div class="sub_tit">
					<h3>JOIN</h3>
					<p><span class="home">HOME</span><span>마이페이지</span><span class="bold">회원가입</span></p>
				</div><!--sub_tit-->
				<!-- 회원가입폼 -->
<div id="module_joinform" class="him_module">
<form class="memberjoin" id="memberJoin" name="memberJoin" method="post" action="/TravelAgency/signUp.do">
<input type="hidden" name="cmd" value="join" /><input type="hidden" name="act" value="register" /><input type="hidden" name="PHPSESSID" value="e6c323afdbef5396094baba900a6a291" /><input type="hidden" name="checked_id" value="" /><input type="hidden" name="checked_email" value="" /><input type="hidden" name="callback_type" value="iframe" /><input type="hidden" name="callback_func" value="parent.join.callbackSubmit" /><input type="hidden" name="callback" value="http://skin4.dartplus.kr/lib/common/callback.php" />

<div class="sub_join">
	<h2 class="join_tit">기본정보</h2>
	<table class="board_css">
		<tr>
			<th>이름</th>
			<td><input type="text" name="memName" id="memName" allowblank=false style='' label='이름' class=''> </td>
		</tr>
		<tr>
			<th>성별</th>
			<td style="font-weight: bold"><input type="radio"
				name="memGender" value="0" checked>&nbsp;남자&nbsp; <input
				type="radio" name="memGender" value="1">&nbsp;여자
		</tr>
		<tr>
			<th>아이디</th>
		<td width="600"><input type="text" name="memId" size="16" id="memId">&nbsp;&nbsp;
			<input type="button" value="ID중복검사"
			style="border: none; width: 85pt; height: 18pt; background-color: #404040; color: #FFFFFF;"
			onclick="idCheck()"><br><input type="hidden" name="check" value="0">
	 		<font id="s" style="font-weight: bold">아이디는 영문,숫자 조합으로 하셔야 합니다.<br>
				아이디는 <font color="red">소문자</font>로 저장 됩니다.
		</font></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="memPwd" id="memPwd" allowblank=false label='비밀번호' class='' style=''/ > <span class="guide">비밀번호는 대소문자 구분하여 영문+숫자 6~16자로 입력하세요.</span></td>
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td><input type="password" name="memPwdChk" id="memPwdChk" allowblank=false label='비밀번호 확인' class='' sync='mpasswd' style='' syncText='비밀번호 확인-항목이일치하지않습니다'> </td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><input type="text" name="memBirth01" id="memBirth01" size="4" maxlength="4">
			년 <input type="text" name="memBirth02" id="memBirth02" size="3" maxlength="2">
			월 <input type="text" name="memBirth03" id="memBirth03" size="3" maxlength="2">
			일</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="memEmail" id="memEmail" size="28">
			&nbsp;<input type="button" name="mailCheck" id="mailCheck" value="이메일 인증" 
			style="border: none; width: 85pt; height: 18pt; background-color: #404040; color: #FFFFFF;"
			onclick="checkEmail()">
			<input type="hidden" name="mailReCheck" id="mailReCheck" value="인증완료">
		</td>
		</tr>
		<tr>
			<th>우편번호</th>
			<td><input type="text" name="memZipCode" id="zip" size="7" readonly>
			<input type="button" value="우편번호검색" 
			style="border: none; width: 85pt; height: 18pt; background-color: #404040; color: #FFFFFF;"
			onclick="javascript:zipcodeSearch()"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="memAddr1" id="address1" size="50" readonly><br>
				<input type="text" name="memAddr2" id="address2" size="30"><br>
				<label for="memAddr2" class="error"></label></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><select name="memMobile01">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="017">017</option>
					<option value="018">018</option>
			</select>- <input type="text" name="memMobile02" size="5" maxlength="4">
				- <input type="text" name="memMobile03" size="5" maxlength="4">
			</td>
			</tr>
	</table><!--board_css-->


	<!-- 회원가입시 자동가입 방지 captcha -->
	
		<div class="btn_center">
		<td colspan="3"><input type="submit"
			style="border: none; font-size:15px; font-weight:bold; width: 70pt; height: 30pt; background-color: #1e70dd; color: #FFFFFF;"
			value="확인">&nbsp;&nbsp; <input
			type="reset" onclick="history.back();"
			style="border: none; font-size:15px; font-weight:bold; border:1px solid #d3d3d3; width: 70pt; height: 30pt; background-color: #fff; color: #404040;"
			value="취소"></td>
	</div><!--btn_center-->

</div><!--sub_join-->

<div style="height:50px;"></div>


</form>

<script>
</script>

</div>

			</div><!--sub_cont-->

		</div><!--sub_container-->
	</div><!--content_sub-->

	<div id="footer">
<div class="footer_cont blind">
			<h2 class="blind">하단 네비게비게이션</h2>
			<ul class="footer_nav">
				<li class="first"><a href="/about/about">회사소개</a></li>
				<li><a href="/member/agreement">이용약관</a></li>
				<li><a href="/member/policy">개인정보취급방침</a></li>
				<li><a href="/about/location">오시는길</a></li>
			</ul><!--footer_nav-->
			<address>㈜가비아 &#124; 대표이사: 김홍국 &#124; 소재지: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층<br/>사업자등록번호: 214-86-39239 &#124; 통신판매업 신고번호: 제2012-경기성남-1188호 </address>
			<p>&copy;Gabia Inc. All Rights Reserved.</p>
			<h2 class="blind">하단 SNS 버튼</h2>
			<ul class="footer_sns">
				<li><a href="https://www.facebook.com/" target="_blank"><img src="/skin/default/images/common/sns_facebook.gif" alt=""></a></li>
				<li><a href="http://section.blog.naver.com/" target="_blank"><img src="/skin/default/images/common/sns_blog.gif" alt=""></a></li>
				<li><a href="https://www.google.co.kr/" target="_blank"><img src="/skin/default/images/common/sns_google.gif" alt=""></a></li>
			</ul><!--footer_sns-->
		</div><!--footer_cont-->
		

		<address>
			<p>(주)가비아&nbsp;&nbsp;|&nbsp;&nbsp;대표이사: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층&nbsp;&nbsp;|&nbsp;&nbsp;소재지: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층</p>
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
