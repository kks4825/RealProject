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
	var memEmail = document.getElementById('memEmail').value;
	if(memEmail==""){
		alert("�̸����� �Է��ϼ���");
	}else{
		window.open("/TravelAgency/emailExist.do?memEmail="+memEmail,"","top=200,left=300,width=10,height=10,resizable=no,scrollbars=no");
		//document.searchId.submit();
	}
} 
</script>
<body>
<form method="post" name="searchId" action="/TravelAgency/sendMail/id.do">
<div class="header" style="text-align:center; padding-top:50px; padding-bottom:30px;">
	<font size=6 face="Comic Sans MS" ><strong>���̵� ã��</strong></font><br><br>
	<font size=3 face="Comic Sans MS" color="#5D5D5D"><b>���̵� ��ﳪ�� ��������?  �̸��� �Է��� ���� ���̵� Ȯ���ϽǼ� �ֽ��ϴ�.</b></font>
</div><br><br>

<div class="title" style="background-color:#F6F6F6; border-top:2px solid black; text-align:center;"><br>
	<font size=3 face="Comic Sans MS"><b>ȸ�������� ��ϵ� �̸����� �Է����ּ���. <br><br> ���̵� ������ �ش� �̸��Ϸ� ���۵˴ϴ�. </b></font><br><br><br>
</div>

<div class="member_find" style="background-color:#F6F6F6; text-align:center;">
	
	<span class="input_email">
		<input type="text" name="memEmail" size="40" maxlength="30" id="memEmail"
					placeholder=" �̸����� �Է����ּ���." style="height:30px; border:1px solid blue;">
	</span><br><br><br>
	
	<input type="button" style="border:none; width:100pt;height:45pt; font-size:20px; background-color:#36589C; color:#FFFFFF; cursor:pointer" 
		value="���̵� ã��" onclick="javascript:check()"><br><br><br>
</div>
</form>
</body>
</html>