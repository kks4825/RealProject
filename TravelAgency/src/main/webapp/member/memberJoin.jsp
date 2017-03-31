<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	var memId = document.getElementById('memId').value;
	if(memId=="")
		alert("먼저 아이디를 입력하세요");
	else
		window.open("/TravelAgency/idCheck.do?memId="+memId,"","width=320 height=100");	
}

function checkEmail(){
	var sEmail = document.memberJoin.memEmail.value;
	if(sEmail==""){
		alert("먼저 이메일을 입력하세요");
	}else{
		window.open("/TravelAgency/emailChk.do?memEmail="+sEmail,"","width=320 height=100");
	}
}
</script>

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
				<input type="text" name="memAddr2" id="address2" size="50"><br>
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
		<input type="submit"
			style="border: none; font-size:15px; font-weight:bold; width: 70pt; height: 30pt; background-color: #1e70dd; color: #FFFFFF;"
			value="확인">&nbsp;&nbsp; <input
			type="reset" onclick="history.back();"
			style="border: none; font-size:15px; font-weight:bold; border:1px solid #d3d3d3; padding-botton:100px;width: 70pt; height: 30pt; background-color: #fff; color: #404040;"
			value="취소">
		</div><!--btn_center-->
	</div><!--sub_join-->	
	</form>
	</div>
	</div>
	</div>
</div>
