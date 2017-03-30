<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.3.2.min.js" ></script>
<script>
$(document).ready(function(){
	var emailExist='${emailExist}';
	var memEmail = '${memEmail}'
	if(emailExist=='0'){
		alert("등록되지 않은 이메일입니다.다시 확인하고 입력해주세요.");
		window.close();
	}else if(emailExist=='1'){
		alert("해당 이메일로 등록된 아이디를 보내드렸습니다. 다시 로그인하세요.");
		opener.location.href="/TravelAgency/sendMailId.do?memEmail="+memEmail;
		window.close();
	}
});
</script>