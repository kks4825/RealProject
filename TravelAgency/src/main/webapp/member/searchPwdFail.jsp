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
	var id = document.searchPwdFail.memId;
	var email = document.searchPwdFail.memEmail;
		
	if(id.value==""){
		alert("���̵� �Է��ϼ���");
	}else if(email.value==""){
		alert("�̸����� �Է��ϼ���");
	}else{
		document.searchPwdFail.submit();
	}
} 
</script>
<body>
<form method="post" name="searchPwdFail" action="/TravelAgency/sendMail/password.do">
<div class="header" style="text-align:center;">
	<font size=6 face="Comic Sans MS" style="background-color:#DBDBDB;"><strong>��й�ȣ ã��</strong></font><br><br>
	<font size=3 face="Comic Sans MS" color="#5D5D5D"><b>��й�ȣ�� ��ﳪ�� ��������?  ���̵�� �̸��� Ȯ�ΰ����� ���� �ӽú�й�ȣ�� �߱޹����� �� �ֽ��ϴ�.</b></font>
</div><br><br>

<div class="title" style="background-color:#F6F6F6; border-top:2px solid black; text-align:center;"><br>
	<font size=3 face="Comic Sans MS"><b>${resultMsg}<br><br>ȸ�������� ��ϵ� ���̵��  �̸����� �ٽ� �Է����ּ���. <br><br> �ӽú�й�ȣ�� �ش� �̸��Ϸ� ���۵˴ϴ�. </b></font><br><br><br>
</div>

<div class="member_find" style="background-color:#F6F6F6; text-align:center;">
	<span class="input_id">
		<input type="text" name="memId" size="40" maxlength="30" 
					placeholder=" ���̵� �Է����ּ���." style="height:30px; border:1px solid blue;">
	</span><br><br><br>
	
	<span class="input_email">
		<input type="text" name="memEmail" size="40" maxlength="30" 
					placeholder=" �̸����� �Է����ּ���." style="height:30px; border:1px solid blue;">
	</span><br><br><br>
	
	<input type="button" style="border:none; width:120pt;height:45pt; font-size:20px; background-color:#36589C; color:#FFFFFF;" 
		value="��й�ȣ ã��" onclick="javascript:check()"><br><br><br>
</div>
</form>
</body>
</html>