<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
window.onload = function() {
	/* location.href="http://localhost:8080/TravelAgency/sendMail/auth.do?email=${memEmail}"; */
	alert("������ ���� �̸����� �߼۵Ǿ����ϴ�.");
}

function emailCheck(){
	var form = document.emailChk;
	var joinCode=${sessionScope.joinCode};
	
	if(!form.joincodeChk.value){
		alert("������ȣ�� �Է��ϼ���");
	}else if(form.joincodeChk.value!=joinCode){
		alert("Ʋ�� ������ȣ�Դϴ�. ������ȣ�� �ٽ� �Է����ּ���");
		form.authnum.value="";
		return;
	}else if(form.joincodeChk.value==joinCode){
		alert("�����Ϸ�");
		opener.document.memberJoin.mailCheck.value="�����Ϸ�";
		self.close();
	}
} 
</script>
</head>
<body>
<form method="" name="emailChk" >
	<input type="text" name="joincodeChk"><br/><br/>
	<input type="button" value="����" onclick="javascript:emailCheck()">
</form>
</body>
</html>