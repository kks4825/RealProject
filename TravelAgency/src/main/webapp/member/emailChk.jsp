<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
$(document).ready(function(){
	var emailExist = '${emailExist}';
	if(emailExist==1) {
		alert("이미 가입된 메일입니다.");
		window.close();
	}else if(emailExist==0){
		alert("인증을 위한 이메일이 발송되었습니다.");
		location.href="http://localhost:8080/TravelAgency/sendMail/auth.do?email=${memEmail}";
	}
});
function emailCheck(){
	var form = document.emailChk;
	var joinCode = ${sessionScope.joinCode};
	
	if(!form.joincodeChk.value){
		alert("인증번호를 입력하세요");
	}else if(form.joincodeChk.value!=joinCode){
		alert("틀린 인증번호입니다. 인증번호를 다시 입력해주세요");
		form.authnum.value="";
		return;
	}else if(form.joincodeChk.value==joinCode){
		alert("인증완료");
		opener.document.memberJoin.mailCheck.value="인증완료";
		self.close();
	}
} 
</script>
<form method="get" name="emailChk" >
	<input type="text" name="joincodeChk"><br/><br/>
	<input type="button" value="인증" onclick="javascript:emailCheck()">
</form>