<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-기본정보변경</title>

<script type="text/javascript">
function zipcodeSearch(){
	window.open("/TravelAgency/checkPost.do","","width=450 height=400 scrollbars=yes");
}
window.onload=function(){
		
	document.myBasicInfo.memGender['${memberDTO.getMemGender()}'].checked = true;
	
	document.myBasicInfo.memEmail0['${memberDTO.getMemEmail0()}'].checked = true;
	
	document.myBasicInfo.memMobile01.value="${memberDTO.getMemMobile01()}";
	
	document.myBasicInfo.contry['${memberDTO.getContry()}'].checked = true;
}

function checkModify(){
		document.myBasicInfo.submit();
}
</script>
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
<form name="myBasicInfo" method="post" action="/TravelAgency/myBasicInfoConfirm.do">
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
		<tr><td colspan="5" width="700" height="2px" bgcolor="cccccc"></td></tr>
		<tr height="30px">
			<td align="center" width="100px" bgcolor="#EAEAEA">아 이 디&nbsp;<font color="red">*</font></td>
	  		<td width="600">
	  			&nbsp;&nbsp;${memberDTO.getMemId()}
	  			<Input type="hidden" name="memId" value="${memberDTO.getMemId()}">
	  		</td> 
		</tr> 
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
	  		<td align="center" bgcolor="#EAEAEA">회 원 번 호&nbsp;<font color="red">*</font></td>
	  		<td>
	   			&nbsp;&nbsp;${memberDTO.getMemSeq()}
	   		</td>
		</tr>
	 	<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
	 	<tr height="30">
	 		<td align="center" bgcolor="#EAEAEA">이  름&nbsp;<font color="red">*</font></td>
	 		<td>
	 			&nbsp;&nbsp;${memberDTO.getMemName()}
	 		</td>
		</tr> 
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">생년월일&nbsp;<font color="red">*</font></td>
			<td>
				&nbsp;&nbsp;<input type="text" name="memBirth01" value="${memberDTO.getMemBirth01()}" size="4" maxlength="4">
				년 <input type="text" name="memBirth02" size="3" value="${memberDTO.getMemBirth02()}" maxlength="2">
				월 <input type="text" name="memBirth03" size="3" value="${memberDTO.getMemBirth03()}" maxlength="2">
				일</td>
	  		</td>
		</tr>
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">성  별&nbsp;<font color="red">*</font></td>
			<td>
				<input type="radio"	name="memGender" value="0">&nbsp;남자&nbsp; 
				<input type="radio" name="memGender" value="1">&nbsp;여자
	  		</td>
		</tr>
		
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">E - mail&nbsp;<font color="red">*</font></td>
			<td>
				&nbsp;&nbsp;<input type="text" name="memEmail" value="${memberDTO.getMemEmail()}">
	  		</td>
		</tr>
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">메 일 수 신&nbsp;<font color="red">*</font></td>
	  		<td>
	   			&nbsp;&nbsp;<input type="radio" name="memEmail0" value="0" checked>수신동의&nbsp;
	   			<input type="radio" name="memEmail0" value="1">수신거부
	  		</td> <!-- 이메일 검사 -->
		</tr>
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
	 		<td align="center" bgcolor="#EAEAEA">우 편 번 호&nbsp;<font color="red">*</font></td>
	  		<td>
	  			&nbsp;&nbsp;<input type="text" name="memZipCode" id="zip" value="${memberDTO.memZipCode}" size="7" readonly>
				<input type="button" value="우편번호검색" onclick="javascript:zipcodeSearch()">
	  		</td> <!-- 우편번호 검색  -->
		</tr>
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr>
			<td align="center" bgcolor="#EAEAEA">주 &nbsp;소&nbsp;<font color="red">*</font></td>
	  		<td>
	   			&nbsp;&nbsp;<input type="text" name="memAddr1" id="address1" value="${memberDTO.memAddr1}" size="50" readonly><br>
				&nbsp;&nbsp;<input type="text" name="memAddr2" id="address2" value="${memberDTO.memAddr2}" size="30">
	  		</td>
		</tr>
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">핸 드 폰&nbsp;<font color="red">*</font></td>
	  		<td>&nbsp;&nbsp;
				<select name="memMobile01">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
				<option value="018">018</option>
				</select>- <input type="text" name="memMobile02" value="${memberDTO.memMobile02}" size="5" maxlength="4">
				- <input type="text" name="memMobile03" value="${memberDTO.memMobile03}" size="5" maxlength="4">&nbsp;&nbsp;
	 		</td> <!-- 숫자만 입력가능 -->
		</tr>
		<tr><td colspan="5" height="1px" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<td align="center" bgcolor="#EAEAEA">관 심 나 라&nbsp;</td>
	 		<td>&nbsp;
	 			<input type="radio" name="contry" value="0">유럽&nbsp;
	  			<input type="radio" name="contry" value="1">동남아&nbsp;
	  			<input type="radio" name="contry" value="2">아시아&nbsp;
	  			<input type="radio" name="contry" value="3">미주&nbsp;
	  			<input type="radio" name="contry" value="4">중국/홍콩&nbsp;
	 			<input type="radio" name="contry" value="5">인도&nbsp;
	 		</td> <!-- 나라 2개 이상 선택 하도록  -->
	 	</tr> 
	 	<tr><td colspan="5" height="2px" bgcolor="cccccc"></td></tr>
	</table> 
</div>
<div class="tcb1a1c">
	<input type="button" value="기본정보 변경" onclick="javascript:checkModify()" style="width:120px;height:40px;" >
	<input type="reset" value="다시작성" style="width:120px;height:40px;">
</div>
</div>
</div>
</div>
</form>
</body>
</html>