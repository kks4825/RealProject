<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.3.2.min.js" ></script>
<script>
$(document).ready(function(){
	var emailExist='${emailExist}';
	var memEmail = '${memEmail}'
	if(emailExist=='0'){
		alert("��ϵ��� ���� �̸����Դϴ�.�ٽ� Ȯ���ϰ� �Է����ּ���.");
		window.close();
	}else if(emailExist=='1'){
		alert("�ش� �̸��Ϸ� ��ϵ� ���̵� ������Ƚ��ϴ�. �ٽ� �α����ϼ���.");
		opener.location.href="/TravelAgency/sendMailId.do?memEmail="+memEmail;
		window.close();
	}
});
</script>