<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-1.3.2.min.js" ></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js" ></script>


<script type="text/javascript">
/* $(document).ready(function () {          
	  $('#memberJoin').validate({
	      rules: {
	          memId:{required:true, minlength:3, remote:"Validate"},
	          memPwd:{required:true},
	          memPwdChk: {required:true, equalTo:'#memPwd'}, 
	          memName: {required:true},    
	          memEmail: {email:true},
	          memAddr2: {required:true}
	      },
	      messages: {
	    	  memId: {
	               required:"아이디를 입력해주세요.",
	               minlength: jQuery.format("아이디는 {0}자 이상 입력해주세요!"),
	               remote : jQuery.format("입력하신 {0}는 이미존재하는 아이디입니다. ")
	          },
	          memPwd:"암호를 입력해주세요.",
	          memPwdChk: {
	              required: "암호를 다시 한번 입력해주세요.",
	              equalTo:"암호가 일치하지 않습니다." },
	   	      memName:"이름을 입력해주세요.",
	   	      memEmail: {
	              email:"이메일 형식이 틀립니다."
	   	      },
	   	      memAddr2:"주소를 입력해주세요."
	      },
	      submitHandler: function (frm){
	          frm.submit();
	      },
	      success: function(e){
	      }
	  });
	}); */
	
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
</script>
<h2>&nbsp;회원가입</h2>
<div class="member_title_step"
	style="font-weight: bold; font-size: 20px;">
	<span class="step_off">&nbsp;1&nbsp;약관동의</span> <span class="step_on"
		style="background-color: #FFB2D9;">2&nbsp;정보입력</span>&nbsp; <span
		class="step_off">3&nbsp;가입완료</span>
</div>
<br>
<form id="memberJoin" name="memberJoin" method="post" action="/TravelAgency/signUp.do">
<font color="red">&nbsp;&nbsp;*</font>
<font id="s">&nbsp;표시 항목은 필수 입력 항목입니다.</font>
<br>
<br>

<table cellspacing="5"
	style="border-style: solid; border-color: #0100FF;">
	<tr>
		<td align="center" width="100px" bgcolor="#D4F4FA"
			style="font-weight: bold">아 이 디</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*&nbsp;</font></td>
		<td width="600"><input type="text" name="memId" size="16" id="memId">&nbsp;&nbsp;
			<input type="button" value="ID중복검사"
			style="border: none; width: 70pt; height: 20pt; background-color: #36589C; color: #FFFFFF;"
			onClick="idCheck()"><br><input type="hidden" name="check" value="0">
	 		<font id="s" style="font-weight: bold">아이디는 영문,숫자 조합으로 하셔야 합니다.<br>
				아이디는 <font color="red">소문자</font>로 저장 됩니다.
		</font></td>
		<!-- 중복검사 -->
	</tr>

	<tr height="45">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">비
			밀 번 호</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="password" name="memPwd" id="memPwd" size="16"><br>
		<label for="memPwd" class="error"></label>
			<font id="s" style="font-weight: bold">비밀번호는 4자리이상 12자리이하로
				입력해주세요.</font>
				</td>
		<!-- 비밀번호 문자와 숫자 혼합사용 체크 -->
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">비
			번 확 인</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="password" name="memPwdChk" id="memPwdChk" size="16"><br>
			<label for="memPwdChk" class="error"></label></td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">이
			름</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memName" id="memName" size="16" maxlength="20">
		<br><label for="memName" class="error"></label>
		</td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">생
			년 월 일</td>
		<td valign="top"></td>
		<td><input type="text" name="memBirth01" id="memBirth01" size="4" maxlength="4">
			년 <input type="text" name="memBirth02" id="memBirth02" size="3" maxlength="2">
			월 <input type="text" name="memBirth03" id="memBirth03" size="3" maxlength="2">
			일</td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">성
			&nbsp;별</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td style="font-weight: bold"><input type="radio"
			name="memGender" value="0" checked>&nbsp;남자&nbsp; <input
			type="radio" name="memGender" value="1">&nbsp;여자
	</tr>
	<!-- 주민번호 입력에 따른 남녀 성별 체크 -->

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">E
			- mail&nbsp;</td>
		<td valign="top"></td>
		<td><input type="text" name="memEmail" id="memEmail" size="28"></td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">메
			일 수 신</td>
		<td></td>
		<td style="font-weight: bold"><input type="radio"
			name="memEmail0" value="0" checked>&nbsp;수신동의&nbsp; <input
			type="radio" name="memEmail0" value="1">&nbsp;수신거부</td>
		<!-- 이메일 검사 -->
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">우
			편 번 호</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memZipCode" id="zip" size="7" readonly>
			<input type="button" value="우편번호검색" 
			style="border: none; width: 73pt; height: 18pt; background-color: #36589C; color: #FFFFFF;"
			onclick="javascript:zipcodeSearch()"></td>
		<!-- 우편번호 검색  -->
	</tr>

	<tr>
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">주
			&nbsp;소</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memAddr1" id="address1" size="50" readonly><br>
			<input type="text" name="memAddr2" id="address2" size="30"><br>
			<label for="memAddr2" class="error"></label></td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">핸
			드 폰</td>
		<td valign="top"></td>
		<td><select name="memMobile01">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
				<option value="018">018</option>
		</select>- <input type="text" name="memMobile02" size="5" maxlength="4">
			- <input type="text" name="memMobile03" size="5" maxlength="4">
		</td>
		<!-- 숫자만 입력가능 -->
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">관
			심 나 라&nbsp;</td>
		<td></td>
		<td style="font-weight: bold">
			<input type="radio" name="contry" value="0">&nbsp;유럽&nbsp; 
			<input type="radio" name="contry" value="1">&nbsp;동남아&nbsp;
			<input type="radio" name="contry" value="2">&nbsp;아시아&nbsp; 
			<input type="radio" name="contry" value="3">&nbsp;미주&nbsp; 
			<input type="radio" name="contry" value="4">&nbsp;중국/홍콩&nbsp; 
			<input type="radio" name="contry" value="5">&nbsp;인도&nbsp;
		</td>
		<!-- 나라 2개 이상 선택 하도록  -->
	</tr>

	<tr align="center">
		<td colspan="3"><input type="submit"
			style="border: none; width: 40pt; height: 20pt; background-color: #36589C; color: #FFFFFF;"
			value="등록">&nbsp;&nbsp; <input
			type="reset"
			style="border: none; width: 40pt; height: 20pt; background-color: #36589C; color: #FFFFFF;"
			value="취소"></td>
	</tr>
</table>
</form>