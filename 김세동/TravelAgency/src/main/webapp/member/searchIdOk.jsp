<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
<div class="header" style="text-align:center;">
	<font size=6 face="Comic Sans MS" style="background-color:#DBDBDB;"><strong>아이디 찾기</strong></font><br><br>
	<font size=3 face="Comic Sans MS" color="#5D5D5D"><b>아이디가 기억나지 않으세요?  간편찾기를 통해 아이디를 확인하실수 있습니다.</b></font>
</div><br><br>

<div class="title" style="background-color:#F6F6F6; border-top:2px solid black; text-align:center;"><br>
	<font size=3 face="Comic Sans MS"><b>${resultMsg} </b></font><br><br><br>
</div>

<div class="member_find" style="background-color:#F6F6F6; text-align:center;">
	
		
	<input type="button" style="border:none; width:100pt;height:45pt; font-size:20px; background-color:#36589C; color:#FFFFFF;" 
		value="로그인" onclick="location.href='../loginForm.do'"><br><br><br>
		
</div>
</body>
</html>