<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.3.2.min.js" ></script>
<script>
$(document).ready(function(){
	var emailExist='${emailExist}';
	alert(emailExist);
	if(emailExist=='0'){
		alert("��ϵ��� ���� �̸����Դϴ�.�ٽ� Ȯ���ϰ� �Է����ּ���.");
		//window.close();
	}else if(emailExist=='1'){
		opener.location.href="/TravelAgency/index.do";
	}
});
</script>