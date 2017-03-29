<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
function checkBoardWrite(){
	if(document.boardWriteForm.subject.value=="")
		alert("제목을 입력하세요");
	else if(document.boardWriteForm.content.value=="")
		alert("내용을 입력하세요");
	else
		document.boardWriteForm.submit();
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv='imagetoolbar' content='no' >
<link rel="stylesheet" type="text/css" href="css/board/ext-all.css">
<link rel="stylesheet" type="text/css" href="css/board/common.css">
<link rel="stylesheet" type="text/css" href="css/board/paging.css">

<script type="text/javascript" src="js/board/jquery.min.js"></script>
<script type="text/javascript" src="js/board/ext-jquery-adapter.js"></script>
<script type="text/javascript" src="js/board/ext-all-3.js"></script>
<script type="text/javascript" src="js/board/lang.js"></script>
<script type="text/javascript" src="js/board/common.js"></script>


<!-- 제이쿼리 버전 충돌로 인해 재설정 -->
<script type="text/javascript" src="js/board/jquery-1.11.3.min.js"></script>
<script>
	var jb = jQuery.noConflict();
</script>
<script type="text/javascript" src="js/board/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="js/board/project_ui.js"></script>
<script type="text/javascript" src="js/board/nav.js"></script>
<script type="text/javascript" src="js/board/keydown.js"></script>
<script type="text/javascript" src="js/board/bookmark.js"></script>
<!-- // -->

<link rel="stylesheet" type="text/css" href="css/board/reset.css?ver=1" />
<link rel="stylesheet" type="text/css" href="css/board/skin.css?ver=1" />

<form name="boardWriteForm" method="post" action="/TravelAgency/boardWrite.do">

<body oncontextmenu="return false;" onselectstart="return false;" class="kr">	
	
	<input type="hidden" name="pseq" value="${pseq }">
	<input type="hidden" name="pg" value="${pg }">
	
	<div id="content_sub">
		<div class="sub_container">

<div class="sub_menu">
				<!--leftmenu영역시작-->

				<!--leftmenu영역끝-->
			</div><!--sub_menu-->

			<div class="sub_cont">
				<div class="sub_tit">
					<h3>글 쓰기</h3>

				</div><!--sub_tit-->
				<!--게시판(him_notice) 모듈 시작-->
				<div id='module_board' class='him_module' rel='qna'>
				
				<div class="sub_board">
					<table class="board_css">
						<tr>
							<th>제목</th>
							<td>
								<input type="text" name="subject" placeholder="제목을 입력하세요" style="width:80%" class="input" allowBlank=false label="제목"></td>
						</tr>
						<tr>
							<th>댓글</th>
							<td>
								<input type="checkbox" name="allow_comment" value="1" id="allow_comment" checked> <label for="allow_comment">댓글허용</label>
							</td>
						</tr>

						
						
						<tr>
							<th>내용</th>
							<td>
								<textarea name="content" style="width:400px;height:250px" placeholder="내용을 입력하세요"></textarea>
							</td>
						</tr>
						
					</table><!--board_css-->
					<div class="btn_center">
						<img src="image/board/write2_button.png" onclick="checkBoardWrite()" style="width:100px; height:40px";>
						<a href="#" class="btn white" onclick="history.back();" style="width:100px; height:41px;">취소</a>
					</div><!--btn_center-->
				</div><!--sub_board-->

				</div>				
			</div><!--sub_cont-->
		</div><!--sub_container-->
	</div><!--content_sub-->
	
</body>

	</form>
</html>
	