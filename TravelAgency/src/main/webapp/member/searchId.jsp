<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script>

function idCheck(){
	var memEmail = document.getElementById('memEmail').value;
	if(memEmail==""){
		alert("이메일을 입력하세요");
	}else{
		window.open("/TravelAgency/emailExist.do?memEmail="+memEmail,"","top=200,left=300,width=10,height=10,resizable=no,scrollbars=no");
		//document.searchId.submit();
	}
}
function pwdCheck(){
	window.open("/TravelAgency/pwdFind.do","","top=200,left=300,width=850,height=550,resizable=no,scrollbars=no,resizable=no");
}
</script>
<body>
<form method="post" name="searchId" action="/TravelAgency/sendMail/id.do">
<div class="header" style="text-align:center; padding-top:50px; padding-bottom:30px;">
	<font size=6 face="Comic Sans MS" ><strong>아이디/비밀번호 찾기</strong></font><br><br>
	<font size=3 face="Comic Sans MS" color="#5D5D5D"><b>아이디가 기억나지 않으세요?  이메일 입력을 통해 아이디를 확인하실수 있습니다.</b></font>
</div><br><br>

<div class="title" style="background-color:#F6F6F6; border-top:2px solid black; text-align:center;"><br>
	<font size=3 face="Comic Sans MS"><b>회원정보에 등록된 이메일을 입력해주세요. <br><br> 아이디 정보가 해당 이메일로 전송됩니다. </b></font><br><br><br>
</div>

<div class="member_find" style="background-color:#F6F6F6; text-align:center;">
	
	<span class="input_email">
		<input type="text" name="memEmail" size="40" maxlength="30" id="memEmail"
					placeholder=" 이메일을 입력해주세요." style="height:30px; border:1px solid blue;">
	</span><br><br><br>
	
	<input type="button" style="border:none; width:100pt;height:45pt; font-size:20px; background-color:#36589C; color:#FFFFFF; cursor:pointer" 
		value="아이디 찾기" onclick="javascript:idCheck()">
	<input type="button" style="border:none; width:100pt;height:45pt; font-size:20px; background-color:#36589C; color:#FFFFFF; cursor:pointer" 
	value="비밀번호 찾기" onclick="pwdCheck()"/>
		<br><br><br>
</div>
</form>
</body>
</html>