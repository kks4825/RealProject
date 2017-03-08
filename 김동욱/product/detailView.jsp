<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품상세정보</title>
<link rel="stylesheet" href="../css/detail.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#schedule').click(function(){
			$('.tab_content').css("display","none");
			$('#content1').css("display","block");
		});
		
		$('#core_info').click(function(){
			$('.tab_content').css("display","none");
			$('#content2').css("display","block");
		});
		
		$('#tour_info').click(function(){
			$('.tab_content').css("display","none");
			$('#content3').css("display","block");
		});
		
		$('#tour_ref').click(function(){
			$('.tab_content').css("display","none");
			$('#content4').css("display","block");
		});
		
		$('#safe_info').click(function(){
			$('.tab_content').css("display","none");
			$('#content5').css("display","block");
		});
	});	
</script>
</head>
<body>
	<div id="all">
	<!-- 전체 -->
		<div id="deco">
			<br>
			<img src="../image/product.gif">
		</div>
		<div id="productInfo">
		<!-- 상품간단정보 -->
			<div id="img">
				<!-- 이미지 -->
				<img src="../image/borakai.jpg" style="width:400px; height:250px;">
			</div>
			<div id="info">
				<!-- 간단한 정보 -->
				<dl>
					<dt style="height:30px; font-size: 13px">
						<strong>[보라카이★스테디셀러] [리젠시 비치] 보라카이직항 4일, 5일</strong>
					</dt>
					<dt style="font-size: 12px;">
						우리 소중한 아이들의 첫 해외 여행~ 어디갈지 망설여지시죠? 최고의 안전, 산교육, 편안한 여행을 위하여 모두투어에서 출시한 아동 스페셜 케어&가족전용 패키지 상품! 
					</dt>
				</dl>
			</div>
			<div id="table">
				<!-- 정보 테이블-->
				<table>
					<tr>
						<td width="100px">상품가격</td>
						<td>500,000~1,000,000원</td>
					</tr>
					<tr>
						<td width="100px">여행기간</td>
						<td>3박 5일</td>
					</tr>
					<tr>
						<td width="100px">여행도시</td>
						<td>필리핀(보라카이)</td>
					</tr>
					<tr>
						<td width="100px">항공사</td>
						<td>세부퍼시픽,에어아시아</td>
					</tr>
				</table>
				<br>
				<input type="button" value="예약하기" width="500px">
			</div>
		</div>
		<div id="detailInfo">
			<div id="tabs">
			<!-- 탭정보 -->
				<ul class="tabs_item">
					<li><a href="#" id="schedule"><span>일정표</span></a></li>
					<li><a href="#" id="core_info"><span>핵심정보</span></a></li>
					<li><a href="#" id="tour_info"><span>관광정보</span></a></li>
					<li><a href="#" id="tour_ref"><span>여행 참고사항</span></a></li>
					<li><a href="#" id="safe_info"><span>해외여행 안전정보</span></a></li>
				</ul>
			</div>
			<div id="content1" class="tab_content">일정표</div>
			<div id="content2" class="tab_content">핵심정보</div>
			<div id="content3" class="tab_content">관광정보</div>
			<div id="content4" class="tab_content">여행 참고사항</div>
			<div id="content5" class="tab_content">해외여행 안전정보</div>
		</div>
		<div id="postscript">
			<img src="../image/post.gif">
			<table>
				<tr><td colspan="5" bgcolor="777777"></td></tr>
				<tr>
					<th width="100px">글번호</th>
					<th width="450px">제목</th>
					<th width="100px">이름</th>
					<th width="150px">작성일</th>
					<th width="100px">평점</th>
				</tr>
				<tr><td colspan="5" bgcolor="777777"></td></tr>
				<tr>
					<th width="100px">1</th>
					<th width="450px">짱이었어요</th>
					<th width="100px">이주현</th>
					<th width="150px">2017.03.01</th>
					<th width="100px">8.7</th>
				</tr>
				<tr><td colspan="5" bgcolor="777777"></td></tr>
				<tr>
					<td colspan="5" align="right">
						<input type="button" value="작성하기">
					</td>
				</tr>
				<tr>
					<th colspan ="5">| 1 | 2 | 3 | 4 | 5 | ></th>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>