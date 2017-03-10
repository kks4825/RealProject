<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보입력</title>
</head>
<body>
<form name="" method="" action="">
<h2>회원가입</h2>
<div class="member_title_step" style="border:1px solid red;">
	 <span class="step_off">1&nbsp;약관동의</span>
	 <span class="step_on" b style="background-color:#FFC6FF;">2&nbsp;정보입력</span>&nbsp;
	 <span class="step_off">3&nbsp;가입완료</span> 
</div><br>

<font color="red">&nbsp;&nbsp;*</font><font id="s">표시 항목은 필수 입력 항목입니다.</font>
<br><br>

<table style="border-style:solid; border-color:#0100FF;"> 
 <tr>
	<td align="center" width="100px" bgcolor="#D4F4FA">아 이 디</td>
	<td valign="top">&nbsp;&nbsp;<font color="red">*&nbsp;</font></td>
  	<td width="600">  
   		<input type="text" name="memId" size="16">&nbsp;&nbsp;
   		<input type="button" value="ID중복검사" onClick="idCheck()"><br>  
   	<font id="s">아이디는 영문,숫자 조합으로 하셔야 합니다.[4자리이상 12자리이하]<br>
   	아이디는 <font color="red">소문자</font>로 저장 됩니다.</font>
  	</td> <!-- 중복검사 -->
</tr> 

<tr height="45">
  <td align="center" bgcolor="#D4F4FA">비 밀 번 호</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
   <input type="password" name="memPwd" size="16"><br>
   <font id="s">비밀번호는 4자리이상 12자리이하로 입력해주세요.</font>
  </td> <!-- 비밀번호 문자와 숫자 혼합사용 체크 -->
</tr>

<tr height="30">
  <td align="center" bgcolor="#D4F4FA">비 번 확 인</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
   <input type="password" name="memPwdChk" size="16">
  </td>
 </tr> 
 
 <tr height="30">
 	<td align="center" bgcolor="#D4F4FA">이  름</td>
 	<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
 	<td>
 	 <input type="text" name="memName" size="16" maxlength="20">
 	</td>
 </tr>

<tr height="30">
  <td align="center" bgcolor="#D4F4FA">생 년 월 일</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
   <input type="text" name="memBirth01" size="4" maxlength="4"> 년
   <input type="text" name="memBirth02" size="3" maxlength="2"> 월
   <input type="text" name="memBirth03" size="3" maxlength="2"> 일
  </td>
 </tr> 
 
 <tr height="30">
  <td align="center" bgcolor="#D4F4FA">성 &nbsp;별</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
  <input type="radio" name="memGender" value="man">남자&nbsp;
  <input type="radio" name="memGender" value="woman">여자
 </tr> <!-- 주민번호 입력에 따른 남녀 성별 체크 -->
 
 <tr height="30">
  <td align="center" bgcolor="#D4F4FA">E - mail&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
   <input type="text" name="memEmail" size="28">
  </td>
 </tr>
 
 <tr height="30">
  <td align="center" bgcolor="#D4F4FA">메 일 수 신</td>
  <td></td>
  <td>
   <input type="radio" name="memEmailYes" value="mailYes" checked>수신동의&nbsp;
   <input type="radio" name="memEmailNo" value="mailNo">수신거부
  </td> <!-- 이메일 검사 -->
 </tr>
 
 <tr height="30">
  <td align="center" bgcolor="#D4F4FA">우 편 번 호</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
  <input type="text" name="memZipCode01" size="4" maxlength="3">-
  <input type="text" name="memZipCode02" size="4" maxlength="3">
  <input type="button" value="검색" onClick="zipcodeSearch()">
  </td> <!-- 우편번호 검색  -->
 </tr>

<tr>
  <td align="center" bgcolor="#D4F4FA">주 &nbsp;소</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
   <input type="text" name="memAddr1" size="50"><br>
   <input type="text" name="memAddr2" size="30">
  </td>
 </tr>
 
 <tr height="30">
  <td align="center" bgcolor="#D4F4FA">핸 드 폰</td>
  <td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
  <td>
   <select name="memMobile01">
   <option value="010">010</option>
   <option value="011">011</option>
   <option value="017">017</option>
   <option value="018">018</option>
   </select>-
   <input type="text" name="memMobile02" size="5" maxlength="4">
   -
   <input type="text" name="memMobile03" size="5" maxlength="4"> 
  </td> <!-- 숫자만 입력가능 -->
 </tr>
 
  <tr height="30">
  <td align="center" bgcolor="#D4F4FA">관 심 나 라&nbsp;</td>
  <td></td>
  <td>
  <input type="radio" name="contry" value="Europe">유럽&nbsp;
   <input type="radio" name="contry" value="Southeast Asia">동남아&nbsp;
   <input type="radio" name="contry" value="Asia">아시아&nbsp;
   <input type="radio" name="contry" value="America">미주&nbsp;
   <input type="radio" name="contry" value="China">중국/홍콩&nbsp;
   <input type="radio" name="contry" value="Indo">인도&nbsp;
  </td> <!-- 나라 2개 이상 선택 하도록  -->
 </tr> 
 
 <tr align="center">
  <td colspan="3">
   <input type="submit" value="등록" onClick="memChk()">&nbsp;&nbsp;
   <input type="reset" value="취소">
  </td>
 </tr>
 </table> 
</form>
</body>
</html>