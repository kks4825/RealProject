<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<h2>&nbsp;회원가입</h2>
<div class="member_title_step"
	style="font-weight: bold; font-size: 20px;">
	<span class="step_off">&nbsp;1&nbsp;약관동의</span> <span class="step_on"
		style="background-color: #FFB2D9;">2&nbsp;정보입력</span>&nbsp; <span
		class="step_off">3&nbsp;가입완료</span>
</div>
<br>

<font color="red">&nbsp;&nbsp;*</font>
<font id="s">&nbsp;표시 항목은 필수 입력 항목입니다.</font>
<br>
<br>

<table cellspacing="5"
	style="border-style: solid; border-color: #0100FF;">
	<tr>
		<td align="center" width="100px" bgcolor="#D4F4FA"
			style="font-weight: bold">아 이 디</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*&nbsp;</font></td>
		<td width="600"><input type="text" name="memId" size="16">&nbsp;&nbsp;
			<input type="button" value="ID중복검사"
			style="border: none; width: 70pt; height: 20pt; background-color: #36589C; color: #FFFFFF;"
			onClick="idCheck()"><br> <font id="s"
			style="font-weight: bold">아이디는 영문,숫자 조합으로 하셔야 합니다.<br>
				아이디는 <font color="red">소문자</font>로 저장 됩니다.
		</font></td>
		<!-- 중복검사 -->
	</tr>

	<tr height="45">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">비
			밀 번 호</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="password" name="memPwd" size="16"><br>
			<font id="s" style="font-weight: bold">비밀번호는 4자리이상 12자리이하로
				입력해주세요.</font></td>
		<!-- 비밀번호 문자와 숫자 혼합사용 체크 -->
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">비
			번 확 인</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="password" name="memPwdChk" size="16"></td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">이
			름</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memName" size="16" maxlength="20">
		</td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">생
			년 월 일</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memBirth01" size="4" maxlength="4">
			년 <input type="text" name="memBirth02" size="3" maxlength="2">
			월 <input type="text" name="memBirth03" size="3" maxlength="2">
			일</td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">성
			&nbsp;별</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td style="font-weight: bold"><input type="radio"
			name="memGender" value="man">&nbsp;남자&nbsp; <input
			type="radio" name="memGender" value="woman">&nbsp;여자
	</tr>
	<!-- 주민번호 입력에 따른 남녀 성별 체크 -->

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">E
			- mail&nbsp;</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memEmail" size="28"></td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">메
			일 수 신</td>
		<td></td>
		<td style="font-weight: bold"><input type="radio"
			name="memEmailYes" value="mailYes" checked>&nbsp;수신동의&nbsp; <input
			type="radio" name="memEmailNo" value="mailNo">&nbsp;수신거부</td>
		<!-- 이메일 검사 -->
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">우
			편 번 호</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memZipCode01" size="4" maxlength="3">-
			<input type="text" name="memZipCode02" size="4" maxlength="3">&nbsp;
			<input type="button" value="검색"
			style="border: none; width: 40pt; height: 18pt; background-color: #36589C; color: #FFFFFF;"
			onclick="zipcodeSearch()"></td>
		<!-- 우편번호 검색  -->
	</tr>

	<tr>
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">주
			&nbsp;소</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><input type="text" name="memAddr1" size="50"><br>
			<input type="text" name="memAddr2" size="30"></td>
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">핸
			드 폰</td>
		<td valign="top">&nbsp;&nbsp;<font color="red">*</font></td>
		<td><select name="memMobile01">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
				<option value="018">018</option>
		</select>- <input type="text" name="memMobile02" size="5" maxlength="4">
			- <input type="text" name="memMobile03" size="5" maxlength="4">
		</td>
		<!-- 숫자만 입력가능 -->
	</tr>

	<tr height="30">
		<td align="center" bgcolor="#D4F4FA" style="font-weight: bold">관
			심 나 라&nbsp;</td>
		<td></td>
		<td style="font-weight: bold"><input type="radio" name="contry"
			value="Europe">&nbsp;유럽&nbsp; <input type="radio"
			name="contry" value="Southeast Asia">&nbsp;동남아&nbsp; <input
			type="radio" name="contry" value="Asia">&nbsp;아시아&nbsp; <input
			type="radio" name="contry" value="America">&nbsp;미주&nbsp; <input
			type="radio" name="contry" value="China">&nbsp;중국/홍콩&nbsp; <input
			type="radio" name="contry" value="Indo">&nbsp;인도&nbsp;</td>
		<!-- 나라 2개 이상 선택 하도록  -->
	</tr>

	<tr align="center">
		<td colspan="3"><input type="button"
			style="border: none; width: 40pt; height: 20pt; background-color: #36589C; color: #FFFFFF;"
			value="등록" onclick="javascript:memChk()">&nbsp;&nbsp; <input
			type="reset"
			style="border: none; width: 40pt; height: 20pt; background-color: #36589C; color: #FFFFFF;"
			value="취소"></td>
	</tr>
</table>
