<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
window.onload = function() {
<<<<<<< HEAD
	var emailExist = '${emailExist}';
	if(emailExist=='1'){
		alert("이미 가입된 메일입니다.");
		window.close();
	}else if(emailExist=='0'){
		alert("인증을 위한 이메일이 발송되었습니다.");
		location.href="http://localhost:8080/TravelAgency/sendMail/auth.do?email=${memEmail}";
	}
=======
	/* location.href="http://localhost:8080/TravelAgency/sendMail/auth.do?email=${memEmail}"; */
	alert("인증을 위한 이메일이 발송되었습니다.");
>>>>>>> 5dcad2b66008f5a2fc520e28bfeaafdc3a3733f8
}

function emailCheck(){
	var form = document.emailChk;
	var joinCode=${sessionScope.joinCode};
	
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
</head>
<body>
<form method="" name="emailChk" >
	<input type="text" name="joincodeChk"><br/><br/>
	<input type="button" value="인증" onclick="javascript:emailCheck()">
</form>
</body>
</html>