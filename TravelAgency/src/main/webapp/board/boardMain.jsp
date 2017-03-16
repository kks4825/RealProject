<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>FLAT DESIGN - 문의사항</title>
<link rel="stylesheet" type="text/css" href="../css/board/reset.css">
<link rel="stylesheet" type="text/css" href="../css/board/board.css">
<link rel="shortcut icon" href="../images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed" href="../images/icon/flat-design-touch.png">
<script src="../js/board/jquery.min.js"></script>
<script src="../js/board/flat.min.js"></script>
</head>
<body>
	<div id="wrap">
		<section class="info_section">
			<ul class="info_list">
				<li><a href="index.html"><img src="../image/board/s_images/info_icon_01.png" alt=""></a></li>
				<li><a href=""><img src="../image/board/s_images/info_icon_02.png" alt=""></a></li>
				<li><a href=""><img src="../image/board/s_images/info_icon_03.png" alt=""></a></li>
				<li><a href=""><img src="../image/board/s_images/info_icon_04.png" alt=""></a></li>
			</ul>
		</section>
		<header class="header">
			<h1 class="logo">
				<a href="index.html">Travel<br>Agency</a>
			</h1>
			<nav class="nav">
				<ul class="gnb">
					<li><a href="index.html">홈</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="introudce.html">패키지여행</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="gallery.html">개인메뉴</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
					<li><a href="board.html">고객센터</a><span class="sub_menu_toggle_btn">하위 메뉴 토글 버튼</span></li>
				</ul>
			</nav>
			<span class="menu_toggle_btn">전체 메뉴 토글 버튼</span>
		</header>
		<section class="sub_header_section">
			<h2>문의사항</h2>
			<ul class="breadcrum_list">
				<li><a href="index.html">홈 /</a></li>
				<li><a href="board.html">문의사항</a></li>
			</ul>
		</section>
		<section class="content_section">
			<div class="content_row_1">
				<table class="board_table">
					<caption>문의사항 게시판</caption>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>5</td>
							<td><a href="">저는 누굴까요?</a></td>
							<td>FLAT DESIGN</td>
							<td>22</td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href="">BLOG에서 다양한 정보를 만나보세요</a></td>
							<td>FLAT DESIGN</td>
							<td>32</td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="">FLAT DESIGN은 원색을 강조합니다.</a></td>
							<td>FLAT DESIGN</td>
							<td>67</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="">홈페이지 리뉴얼 소식</a></td>
							<td>FLAT DESIGN</td>
							<td>96</td>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="">안녕하세요 홈페이지가 오픈 되었습니다.</a></td>
							<td>FLAT DESIGN</td>
							<td>123</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="content_row_2">
				<div class="search_box">
					<form action="#" method="get">
						<input type="search" name="gallery_search_window" class="search_window" placeholder="검색어">
						<div class="search_select_box">
							<span>검색 대상</span>
							<ul class="search_select_list">
								<li>제목</li>
								<li>내용</li>
								<li>제목+내용</li>
								<li>댓글</li>
								<li>이름</li>
								<li>닉네임</li>
								<li>아이디</li>
								<li>태그</li>
							</ul>
						</div>	
					</form>
				</div>
				<div class="write_box">
					<a href="#">글 쓰기</a>
				</div>
			</div>
			<div class="content_row_3">
				<span class="list_prev_btn">문의사항 이전 버튼</span>
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<span class="list_next_btn">문의사항 다음 버튼</span>
			</div>
		</section>
		<footer class="footer">
			<p>copyright&copy; 2014.flat design blog all rights reserved.</p>
		</footer>
	</div>
</body>
</html>