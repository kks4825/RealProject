<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
$(document).ready(function(){
	var emailExist = '${emailExist}';
	if(emailExist==1) {
		alert("�̹� ���Ե� �����Դϴ�.");
		window.close();
	}else if(emailExist==0){
		alert("������ ���� �̸����� �߼۵Ǿ����ϴ�.");
		location.href="http://localhost:8080/TravelAgency/sendMail/auth.do?email=${memEmail}";
	}
});
function emailCheck(){
	var form = document.emailChk;
	var joinCode = ${sessionScope.joinCode};
	
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
<form method="get" name="emailChk" >
	<input type="text" name="joincodeChk"><br/><br/>
	<input type="button" value="����" onclick="javascript:emailCheck()">
</form>