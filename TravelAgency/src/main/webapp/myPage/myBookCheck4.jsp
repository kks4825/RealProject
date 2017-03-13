<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-예약 확인</title>
<style type="text/css">
body{margin:0px; padding:0px;}/*상위 스타일에 대한 원점 처리를 해 줍니다.*/
h3{margin-bottom:10px; height:13px; padding-left:12px; font-size:14px; background:url('http://image1.hanatour.com/2010/images/mypage/ico_leave.gif') no-repeat 0 4px; color:#424242; letter-spacing:-1px;}

.t-wrap{width:1200px; height:1200px;border:1px solid red;}/*가상의 홈페이지 공간*/

.tu{width:1200px; height:1200px; margin:auto; border:1px solid red; position:relative;}/*가상의 바디*/

.tba,.tbb,.member_infomation,.tbd,.tca{border:1px solid red; text-align:center;layout:fixed;}

.member_infomation_basis{border:1px solid red; layout:fixed; }
.member_infomation_basis img{float:left; padding-left:10px;}

.tcb2,.tcb3{border:1px solid red; layout:fixed; text-align:left}
.tcb3 li{list-style:none; line-height:25px;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.member_infomation{background-color:none;width:996px; height:1000px; display:inline-block;}

.member_infomation_basis{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:996px; height:450px; padding-top:10px; layout:fixed; margin-bottom:20px;}

.additional_information{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:996px; height:450px; padding-top:0px; layout:fixed; margin-bottom:20px;}

.member_infomation_save{width:680px; height:30px; layout:fixed; text-align:center; border:1px solid gray; layout:fixed;position:relative; left : 23px; top:15px;}

</style>
</head>
<body>
<div class="t-wrap">
<div class="tu">
<div class="tbb">
<div class="tba" >
<br/>
<br/>
<input type="button" value= "  로그아웃  " onclick=""><br/>
<input type="button" value= "마이페이지" onclick="">
</div>
<ul>
<li class="tca"><a href="#">나의 예약보기</a>
</li><br/>
<li class="tca"><a href="#">나의 장바구니</a>
</li><br/>
<li class="tca"><a href="#">나의 참여내역</a>
<ul>
<li><a href="#">상담문의</a></li>
<li><a href="#">여행후기</a></li>
</ul>
</li></br>
<li class="tca"><a href="#">나의 정보관리</a>
<ul>
<li><a href="#">기본정보변경</a></li>
<li><a href="#">비밀번호변경</a></li>
<li><a href="#">여권/비자관리</a></li>
</ul>
</li></br>
<li class="tca"><a href="#">회원탈퇴</a>
</li></br>
</ul>
</div>
<div class="member_infomation">
<div class="member_infomation_basis">
	<h3>기본 정보 입력</h3>
	<table cellspadding="0" cellspacing="0"> 
		<tr><td colspan="5" width="700" bgcolor="cccccc"></td></tr>
		<tr>
			<td align="center" width="100px" bgcolor="#EAEAEA">아 이 디&nbsp;<font color="red">*</font></td>
	  		<td width="600">
	  			&nbsp;&nbsp;power9994@naver.com
	   			<input type="button" value="아이디 변경하기" onClick="idCheck()"><br>
	  			&nbsp;&nbsp;-&nbsp;아이디를 변경 하기 위해서는 아이디와 e-mail이 동일 해야 합니다.  
	   		</td> <!-- 중복검사 -->
		</tr> 
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="45">
	  		<td align="center" bgcolor="#EAEAEA">회 원 번 호&nbsp;<font color="red">*</font></td>
	  		<td>
	   			&nbsp;&nbsp;회원(12345)
	   		</td> <!-- 비밀번호 문자와 숫자 혼합사용 체크 -->
		</tr>
	 	<tr><td colspan="5" bgcolor="cccccc"></td></tr>
	 	<tr height="30">
	 		<td align="center" bgcolor="#EAEAEA">이  름&nbsp;<font color="red">*</font></td>
	 		<td>
	 			&nbsp;&nbsp;전문근&nbsp;<input type="button" value="이름변경">
	 		</td>
	 	</tr>
			<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">생 년 월 일&nbsp;<font color="red">*</font></td>
			<td>
				&nbsp;&nbsp;19930701/남성
	 		</td>
		</tr> 
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">E - mail&nbsp;<font color="red">*</font></td>
			<td>
				&nbsp;&nbsp;<input type="text" name="memEmail" value="power9994@naver.com"><br/>
				&nbsp;&nbsp;-&nbsp;아아디와 e-mail은 같아야 합니다.
	  		</td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">메 일 수 신&nbsp;<font color="red">*</font></td>
	  		<td>
	   			&nbsp;&nbsp;<input type="radio" name="memEmail" value="mailYes" checked>수신동의&nbsp;
	   			<input type="radio" name="memEmail" value="mailNo">수신거부
	  		</td> <!-- 이메일 검사 -->
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
	 		<td align="center" bgcolor="#EAEAEA">우 편 번 호&nbsp;<font color="red">*</font></td>
	  		<td>
	  			&nbsp;&nbsp;<input type="text" name="memZipCode01" size="4" maxlength="3">-
	  			<input type="text" name="memZipCode02" size="4" maxlength="3">
	  			<input type="button" value="검색" onClick="zipcodeSearch()">
	  		</td> <!-- 우편번호 검색  -->
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr>
			<td align="center" bgcolor="#EAEAEA">주 &nbsp;소&nbsp;<font color="red">*</font></td>
	  		<td>
	   			&nbsp;&nbsp;<input type="text" name="memAddr1" size="50"><br>
	   			&nbsp;&nbsp;<input type="text" name="memAddr2" size="30">
	  		</td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">핸 드 폰&nbsp;<font color="red">*</font></td>
	  		<td>&nbsp;&nbsp;
				LGT/010-5417-5012&nbsp;&nbsp;<input type="button" value="수정">
	 		</td> <!-- 숫자만 입력가능 -->
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">관 심 나 라&nbsp;</td>
	 		<td>&nbsp;
	 			<input type="radio" name="contry" value="Europe">유럽&nbsp;
	  			<input type="radio" name="contry" value="Southeast Asia">동남아&nbsp;
	  			<input type="radio" name="contry" value="Asia">아시아&nbsp;
	  			<input type="radio" name="contry" value="America">미주&nbsp;
	  			<input type="radio" name="contry" value="China">중국/홍콩&nbsp;
	 			<input type="radio" name="contry" value="Indo">인도&nbsp;
	 		</td> <!-- 나라 2개 이상 선택 하도록  -->
	 	</tr> 
	 	<tr><td colspan="5" bgcolor="cccccc"></td></tr>
	</table> 
</div>

<div class="additional_information">
	<h3>부가 정보</h3>
	<table cellspadding="0" cellspacing="0"> 
		<tr><td colspan="5" width="700" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" width="100px" bgcolor="#EAEAEA">생 년 월 일</font></td>
	  		<td width="600">
	  			&nbsp;&nbsp;<input type="text" size="4">&nbsp년&nbsp
				<input type="text" size="2">&nbsp월&nbsp
				<input type="text" size="2">&nbsp일 
				<input type="radio" name="birthday" value="양력">양력&nbsp;
	  			<input type="radio" name="birthday" value="음력">음력&nbsp;
	   		</td>
		</tr> 
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
	  		<td align="center" bgcolor="#EAEAEA">결 혼 여 부</td>
	  		<td>
	   			&nbsp;&nbsp;<input type="radio" name="marriage" value="yes">예&nbsp;
	  			<input type="radio" name="marriage" value="no">아니오&nbsp;
	   		</td> 
		</tr>
	 	<tr><td colspan="5" bgcolor="cccccc"></td></tr>
	 	<tr height="30">
	 		<td align="center" bgcolor="#EAEAEA">결혼기념일</td>
	 		<td>
	  			&nbsp;&nbsp;<input type="text" size="4">&nbsp년&nbsp
				<input type="text" size="2">&nbsp월&nbsp
				<input type="text" size="2">&nbsp일 
	 		</td>
	 	</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
	</table>	
	<div class="member_infomation_save">
		<input type="button" value="저장하기" style="width:80px; height:30px;">
		<input type="reset" value="다시하기" style="width:80px; height:30px;">
	</div>
</div>

</div>
</div>
</div>
</body>
</html>