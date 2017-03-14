<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-나의 장바구니</title>

<style>

body{margin:0px; padding:0px;}/*상위 스타일에 대한 원점 처리를 해 줍니다.*/

.t-wrap{width:1200px; height:1200px;border:1px solid red;}/*가상의 홈페이지 공간*/

.tu{width:1200px; height:1200px; margin:auto; border:1px solid red; position:relative;}/*가상의 바디*/

.tba,.tbb,.myConsultation_tbc,.tbd,.tca,.myConsultation_tcb1,.myConsultation_tcb2,.myConsultation_tcb3,.myConsultation_tcb4,.myConsultation_tcb5{border:1px solid red; text-align:center;layout:fixed;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.myConsultation_tbc{background-color:none;width:996px; height:1000px; display:inline-block;}

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.myConsultation_tcb5{background-color:none;width:996px; height:230px; padding-top:10px; layout:fixed; margin-bottom:0px;}

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
					</li></br>
					<li class="tca"><a href="#">나의 장바구니</a>
					</li></br>
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
			<div class="myConsultation_tbc">
				<div class="myConsultation_tcb5"><font style="line-height:40px;"><b>나의 상담문의</b></font>
					<table>
						<tr>
							<td colspan="3" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<th width="600" height="40">제목</th>
							<th width="185">작성일</th>
							<th width="185">답변상태</th>
						</tr>
						<tr>
							<td colspan="3" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<td colspan="3" ><br><br>문의 내역이 존재하지 않습니다.<br><br><br><br></td>
						</tr>
						<tr>
							<td colspan="3" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<td colspan="3" bgcolor="#607d8b"></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="tbd">d
			</div>
		</div>
	</div>
</body>
</html>