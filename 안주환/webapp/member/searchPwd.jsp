<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script>

function check(){
	var id = document.searchPwd.memId;
	var email = document.searchPwd.memEmail;
		
	if(id.value==""){
		alert("아이디를 입력하세요");
	}else if(email.value==""){
		alert("이메일을 입력하세요");
	}else{
		document.searchPwd.submit();
	}
} 
</script>
<body>
<form method="post" name="searchPwd" action="/TravelAgency/sendMail/password.do">
<div class="header" style="text-align:center;">
	<font size=6 face="Comic Sans MS" style="background-color:#DBDBDB;"><strong>비밀번호 찾기</strong></font><br><br>
	<font size=3 face="Comic Sans MS" color="#5D5D5D"><b>비밀번호가 기억나지 않으세요?  아이디와 이메일 확인과정을 통해 임시비밀번호를 발급받으실 수 있습니다.</b></font>
</div><br><br>

<div class="title" style="background-color:#F6F6F6; border-top:2px solid black; text-align:center;"><br>
	<font size=3 face="Comic Sans MS"><b>회원정보에 등록된 아이디와  이메일을 입력해주세요. <br><br> 임시비밀번호가 해당 이메일로 전송됩니다. </b></font><br><br><br>
</div>

<div class="member_find" style="background-color:#F6F6F6; text-align:center;">
	<span class="input_id">
		<input type="text" name="memId" size="40" maxlength="30" 
					placeholder=" 아이디를 입력해주세요." style="height:30px; border:1px solid blue;">
	</span><br><br><br>
	
	<span class="input_email">
		<input type="text" name="memEmail" size="40" maxlength="30" 
					placeholder=" 이메일을 입력해주세요." style="height:30px; border:1px solid blue;">
	</span><br><br><br>
	
	<input type="button" style="border:none; width:120pt;height:45pt; font-size:20px; background-color:#36589C; color:#FFFFFF;" 
		value="비밀번호 찾기" onclick="javascript:check()"><br><br><br>
</div>
</form>
</body>
</html>