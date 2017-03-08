<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-비밀번호 변경</title>

<style>

body{margin:0px; padding:0px;}/*상위 스타일에 대한 원점 처리를 해 줍니다.*/

.t-wrap{width:1200px; height:1200px;border:1px solid red;}/*가상의 홈페이지 공간*/

.tu{width:1200px; height:1200px; margin:auto; border:1px solid red; position:relative;}/*가상의 바디*/

.tba,.tbb,.tbc,.tbd,.tca,.tcb1,.tcb2,.tcb3,.tcb4,.tcb5{border:1px solid red; text-align:center;layout:fixed;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.tbc{background-color:none;width:996px; height:1000px; display:inline-block;}

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.myPwdChange_tcb1{background-color:none;width:996px; height:455px; padding-top:10px; layout:fixed; margin-bottom:20px; text-align:justify;}

.myPwdChange_tcb1a{width:946px; height:420px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 23px; top:0px;}

.myPwdChange_tcb1a1a{width:946px; height:100px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:center;layout:fixed;position:relative; left : 0px; top:0px; vertical-align: middle;}

.myPwdChange_tcb1a1b{background-color:#e6e6e6; width:946px; height:200px; padding-top:1px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 0px; top:0px;}

.myPwdChange_tcb1a1c{width:946px; height:75px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 0px; top:0px;vertical-align: middle;text-align:center; top:30px;}



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
			<div class="tbc">
				<div class="myPwdChange_tcb1"><font size=5 style="line-height:40px;">&nbsp &nbsp <b><u>비밀번호 변경</u></b></font></table>
					<div class="myPwdChange_tcb1a">
						<div class="myPwdChange_tcb1a1">
							<div class="myPwdChange_tcb1a1a">
								<table width=100% height=100% style="text-align:left">
									<tr>
										<td  width=30% >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp·기존 사용 비밀번호
										</td>
										<td  width=70%><input type="text" placeholder="기존의 비밀번호를 입력하세요"  size="35"><font size=2>&nbsp&nbsp&nbsp(임시비밀번호 발급 후에는 임시비밀번호를 기입해주세요)</font>
										</td>
									</tr>
								</table>
	 						</div>
	 					</div>
						<div class="myPwdChange_tcb1a1b">
							<table width=100% height=100% style="text-align:left">
								<tr height=30%>
									<td  width=30% >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp·새 비밀번호
									</td>
									<td  width=70%><input type="text" placeholder="새로운 비밀번호를 입력하세요"  size="35"><!-- 비밀번호 입력 -->
									</td>
								</tr>
								<tr height=40%>
									<td  width=30% >
									</td>
									<td  width=70%>
<pre>- 8~16자의 영문대소문자, 숫자의 조합으로 사용하시기 바랍니다. 예)hanatour2011
- 아이디와 유사하거나 유추하기 쉬운 비밀번호는 유출의 위험이 많습니다.
- 주기적인 비밀번호 변경으로 고객님의 소중한 개인정보를 보호해주세요.
- 비밀번호 변경시 우측 보안등급을 참고하여 안전한 비밀번호로 변경하시기 바랍니다.
</pre>
					
									</td>
								</tr>
								<tr height=30%>
									<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp·비밀번호 확인
									</td>
									<td><input type="text" placeholder="새로운 비밀번호를 다시 입력하세요"  size="35"><!-- 새로운 비밀번호 재입력 -->
									</td>
								</tr>
							</table>
						</div>
						<div class="myPwdChange_tcb1a1c">
							<input type="button" value="비밀번호 변경" onclick="" style="width:120px;height:40px;">
						</div>
					</div> 
				</div>
			</div>
		</div>
	</div>
</body>
</html>