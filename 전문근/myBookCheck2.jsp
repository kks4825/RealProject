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

.tba,.tbb,.member_leave,.tbd,.tca{border:1px solid red; text-align:center;layout:fixed;}

.member_leave_reference{border:1px solid red; layout:fixed; }
.member_leave_reference img{float:left; padding-left:10px;}

.member_leave_id,.member_leave_reason{border:1px solid red; layout:fixed; text-align:left}
.member_leave_reason li{list-style:none; line-height:25px;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.member_leave{background-color:none;width:996px; height:1000px; display:inline-block;}

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.member_leave_reference{background-color:none;width:996px; height:189px; padding-top:10px; layout:fixed; margin-bottom:20px;}

.member_leave_reference1{width:946px; height:130px; padding-top:20px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 23px; top:15px;}

.member_leave_id{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:800px; height:75px; padding-top:0px; layout:fixed; margin-bottom:20px;}

.member_leave_reason{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:800px; height:160px; padding-top:10px; layout:fixed; margin-bottom:20px;}
.member_leave_reason li{list-style:none; line-height:25px;}

.member_leave_hope{border:1px solid red; padding-left:10px; text-align:left; layout:fixed; background-color:none;width:800px; height:145px; padding-top:0px; layout:fixed; margin-bottom:20px;}

.member_leave_check{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:800px; height:140px; padding-top:10px; layout:fixed; margin-bottom:20px;}
.member_leave_check {list-style:none;}
.member_leave_check1{border:1px solid red; padding-left:10px; layout:fixed; text-align:left; background-color:none;width:760px; height:45px; padding-top:10px; padding-left:40px; layout:fixed; margin-bottom:20px;}

.member_leave_button{border:1px solid red; padding-left:10px; layout:fixed; background-color:none;width:596px; height:40px; padding-top:10px; layout:fixed; margin-bottom:0px;}

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
<li class="tca"><a href="#">나의 예약보기</a></li>
<li class="tca"><a href="#">나의 장바구니</a></li>
<li class="tca"><a href="#">나의 참여내역</a>

<ul>
<li><a href="#">상담문의</a></li>
<li><a href="#">여행후기</a></li>
</ul>

</li>
<li class="tca"><a href="#">나의 정보관리</a>

<ul>
<li><a href="#">기본정보변경</a></li>
<li><a href="#">비밀번호변경</a></li>
<li><a href="#">여권/비자관리</a></li>
</ul>

</li>
<li class="tca"><a href="#">회원탈퇴</a>
</li>
</ul>

</div>
<div class="member_leave">
<div class="member_leave_reference"><img alt="회원탈퇴" src="http://image1.hanatour.com/2010/images/mypage/h_meber_cancel.gif"> <div class="member_leave_reference1">
	<span class="ir">
		그동안 보내주신 성원에 감사드립니다.
		<br/>
		 회원 탈퇴 시에는 개인정보 취급방침에 의거하여 모든 정보가 삭제됩니다.
		 <br/>
		 단, 고객 게시판 및 여행후기 등의 게시물은 탈퇴 후에도 유지됩니다.
		 <br/>
		 작성한 게시물의 삭제를 원하시는 경우, 고객센터(1234-1234)로 별도 문의 주시기 바랍니다
	</span>
</div></div>

<div class="member_leave_id">
	<h3>탈퇴 아이디 확인</h3>
	<table border="0" cellspacing="0">
		<tr>
			<td width="100px" height="30px" bgcolor="#D5D5D5" style="border:1px solid grey;text-align:center">아이디</td>
			<td width="100px" height="30px" style="border:1px solid grey;text-align:center"><input type="text" value="power9994@naver.com"></td>
			<td width="100px" height="30px" bgcolor="#D5D5D5" style="border:1px solid grey;text-align:center">비밀번호</td>
			<td width="100px" height="30px" style="border:1px solid grey;text-align:center"><input type="text" placeholder="비밀번호 입력"></td>
		</tr>
	</table>
</div>
<div class="member_leave_reason">
	<h3>탈퇴 하시는 이유가 무엇입니까?</h3>
	<ul>
		<li>
			<input type="radio" id="cause_01" value="서비스 불만">
			<label for="cause_01">서비스 불만</label>
		</li>
		<li>
			<input type="radio" id="cause_02" value="서비스 불만">
			<label for="cause_02">서비스 불만</label>
		</li>
		<li>
			<input type="radio" id="cause_03" value="서비스 불만">
			<label for="cause_03">서비스 불만</label>
		</li>
		<li>
			<input type="radio" id="cause_04" value="서비스 불만">
			<label for="cause_04">서비스 불만</label>
		</li>	
	</ul>
</div>
<div class="member_leave_hope">
	<h3>더 나은 서비스를 위해 바라는 점</h3>
	<textarea cols="100" rows="5" style="resize:none;"></textarea>
</div>

<div class="member_leave_check">
	<ul>
		<li>회원 탈퇴 시 본인 확인 후 탈퇴가 진행 됩니다.</li>
		<li>탈퇴 시 기존의 마일리지는 모두 소멸 됩니다.</li>
	</ul>
	<div class="member_leave_check1">
		탈퇴 90일 후 기존 마일리지는 모두 소멸 됩니다. 그러나 90일 이내에 다시 가입하시는<br/>
		경우에는 탈퇴 요청일 이전에 적립 받은 마일리지가 그대로 유지됩니다.
	</div>	
</div>

<div class="member_leave_button">
	<input type="button" value="회원 탈퇴" style="width:80px; height:30px;">
	<input type="button" value="취소" style="width:80px; height:30px;">
</div>
</div>
</div>
</div>
</body>
</html>