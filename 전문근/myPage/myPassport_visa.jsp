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

.tba,.tbb,.passport_visa,.tbd,.tca{border:1px solid red; text-align:center;layout:fixed;}

.passport_infomation{border:1px solid red; layout:fixed; }
.passport_infomation img{float:left; padding-left:10px;}

.tcb2,.tcb3{border:1px solid red; layout:fixed; text-align:left}
.tcb3 li{list-style:none; line-height:25px;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.passport_visa{background-color:none;width:996px; height:1000px; display:inline-block;}

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.passport_infomation{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:996px; height:240px; padding-top:10px; layout:fixed; margin-bottom:20px;}

.passport_infomation_save{width:680px; height:30px; layout:fixed; text-align:right; border:1px solid gray; layout:fixed;position:relative; left : 23px; top:15px;}

.visa_infomation{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:996px; height:200px; padding-top:0px; layout:fixed; margin-bottom:20px;}

.visa_infomation_save{width:680px; height:30px; layout:fixed; text-align:right; border:1px solid gray; layout:fixed;position:relative; left : 23px; top:15px;}

</style>

<script type="text/javascript">
	function mySubmit(index){
		if(index==1){
			document.passport_visa.action='/TravelAgency/passport_information.do';
		}
		if(index==2){
			document.passport_visa.action='/TravelAgency/visa_information.do';
		}
		document.passport_visa.submit();
	}
	
	window.onload=function(){
		document.passport_visa.visaContry.value = '${memberDTO.visaContry}';

	}
</script>
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
<form name="passport_visa" method="post">
<div class="passport_visa">
<div class="passport_infomation">
	<h3>여권 정보</h3>
	<table>
		<tr><td colspan="5" width="700" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<th width="120">&nbsp;영문이름</th>
			<td bgcolor="cccccc"></td>
			<td>&nbsp;&nbsp;<input type="text" name="lastName" value="${memberDTO.lastName }">(성)
				<input type="text" name="firstName" value="${memberDTO.firstName }">(이름)
			</td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<th width="120">&nbsp;여권번호</th>
			<td bgcolor="cccccc"></td>
			<td>&nbsp;&nbsp;<input type="text" name="passportNumber" value="${memberDTO.passportNumber }"></td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<th width="120">&nbsp;여권발급일</th>
			<td bgcolor="cccccc"></td>
			<td>&nbsp;&nbsp;<input type="text" size="4" name="passportStartYear" value="${memberDTO.passportStartYear }">&nbsp;년&nbsp;
				<input type="text" size="2" name="passportStartMonth" value="${memberDTO.passportStartMonth }">&nbsp;월&nbsp;
				<input type="text" size="2" name="passportStartDay" value="${memberDTO.passportStartDay }">&nbsp;일
			</td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<th width="120">&nbsp;여권만료일</th>
			<td bgcolor="cccccc"></td>
			<td>&nbsp;&nbsp;<input type="text" size="4" name="passportEndYear" value="${memberDTO.passportEndYear }">&nbsp;년&nbsp;
				<input type="text" size="2" name="passportEndMonth" value="${memberDTO.passportEndMonth }">&nbsp;월&nbsp;
				<input type="text" size="2" name="passportEndDay" value="${memberDTO.passportEndDay }">&nbsp;일
			</td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>			
	</table>
	<div class="passport_infomation_save">
		<input type="button" value="저장" onclick="javascript:mySubmit(1)" style="width:80px; height:30px;">
	</div>
</div>

<div class="visa_infomation">
	<h3>비자 정보</h3>
		<table>
		<tr><td colspan="5" width="700" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<th width="120">&nbsp;영문이름</th>
			<td bgcolor="cccccc"/>
			<td>&nbsp;&nbsp;
			
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<th width="120">&nbsp;비자국가</th>
			<td bgcolor="cccccc"/>
			<td>&nbsp;
				<select name="visaContry">
					<option value="">국가선택</option>
					<option value="가나">가나</option>
					<option value="가봉">가봉</option>
					<option value="감비아">감비아</option>
					<option value="기니">기니</option>
					<option value="기니비사우">기니 비사우</option>
					<option value="나미비아">나미비아</option>
					<option value="나아지리아">나이지리아</option>
				</select>
			</td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>
		<tr height="30">
			<th width="120">&nbsp;유효기간</th>
			<td bgcolor="cccccc"/>
			<td>&nbsp;&nbsp;<input type="text" size="4" name="visaStartYear" value="${memberDTO.visaStartYear }">&nbsp;년&nbsp;
				<input type="text" size="2" name="visaStartMonth" value="${memberDTO.visaStartMonth }">&nbsp;월&nbsp;
				<input type="text" size="2" name="visaStartDay" value="${memberDTO.visaStartDay }">&nbsp;일~
				<input type="text" size="4" name="visaEndYear" value="${memberDTO.visaEndYear }">&nbsp;년&nbsp;
				<input type="text" size="2" name="visaEndMonth" value="${memberDTO.visaEndMonth }">&nbsp;월&nbsp;
				<input type="text" size="2" name="visaEndDay" value="${memberDTO.visaEndDay }">&nbsp;일
				</td>
		</tr>
		<tr><td colspan="5" bgcolor="cccccc"></td></tr>			
	</table>
	<div class="visa_infomation_save">
		<input type="button" value="저장" onclick="javascript:mySubmit(2)" style="width:80px; height:30px;">
	</div>
</div>
</div>
</form>

</div>
</div>

</body>
</html>