<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-비밀번호 재확인</title>

<style>

body{margin:0px; padding:0px;}/*상위 스타일에 대한 원점 처리를 해 줍니다.*/

.t-wrap{width:1200px; height:1200px;border:1px solid red;}/*가상의 홈페이지 공간*/

.tu{width:1200px; height:1200px; margin:auto; border:1px solid red; position:relative;}/*가상의 바디*/

.tba,.tbb,.myPageInputPwd_tbc,.tbd,.tca,.myPageInputPwd_tcb1,.tcb2,.tcb3,.tcb4,.tcb5{border:1px solid red; text-align:center;layout:fixed;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.myPageInputPwd_tbc{background-color:none;width:996px; height:1000px; display:inline-block;}

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.myPageInputPwd_tcb1{background-color:none;width:996px; height:455px; padding-top:10px; layout:fixed; margin-bottom:20px; text-align:justify;}

.myPageInputPwd_tcb1a{width:946px; height:420px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 23px; top:0px;}

.myPageInputPwd_tcb1a1{width:450px; height:300px; padding-top:0px; layout:fixed; border:0px solid gray; text-align:justify;layout:fixed;position:relative; left : 250px; top:60px;}

.myPageInputPwd_tcb1a1a{width:500px; height:100px; padding-top:0px; layout:fixed; border:0px solid gray; text-align:center;layout:fixed;position:relative; left : -25px; top:0px; vertical-align: middle;}

.myPageInputPwd_tcb1a1b{background-color:#e6e6e6; width:450px; height:100px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 0px; top:0px;}

.myPageInputPwd_tcb1a1c{width:450px; height:100px; padding-top:0px; layout:fixed; border:0px solid gray; text-align:justify;layout:fixed;position:relative; left : 0px; top:0px;}

.myPageInputPwd_tcb1a1c1{width:150px; height:50px; padding-top:0px; layout:fixed; border:0px solid gray; text-align:justify;layout:fixed;position:relative; left : 170px; top:40px;}


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
			<div class="myPageInputPwd_tbc">
				<div class="myPageInputPwd_tcb1"><font size=5 style="line-height:40px;">&nbsp &nbsp <b><u>비밀번호 재확인</u></b></font>
					<div class="myPageInputPwd_tcb1a">
						<div class="myPageInputPwd_tcb1a1">
							<div class="myPageInputPwd_tcb1a1a"><font size=3 style="line-height:40px;">&nbsp &nbsp <b>--------------회원님의 정보를 안전하게 보호하기 위하여<br>
 								  비밀번호를 다시 한번 확인합니다.</b></font>
 							</div>
	 						<div class="myPageInputPwd_tcb1a1b">
								<table width=100% height=100% style="text-align:left">
									<tr>
										<td  width=30% >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp·아이디
										</td>
										<td  width=70%>&nbsp&nbsp&nbsp&nbsp&nbspzwan77@naver.com<!-- 아이디값 들어오기 -->
										</td>
									</tr>
									<tr>
										<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp·비밀번호
										</td>
										<td>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" placeholder="비밀번호를 입력하세요"  size="35"><!-- 비밀번호 입력 -->
										</td>
									</tr>
								</table>
							</div>
							<div class="myPageInputPwd_tcb1a1c">
								<div class="myPageInputPwd_tcb1a1c1">
									<input type="submit" value="확인">&nbsp&nbsp
									<input type="reset" value="취소">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>