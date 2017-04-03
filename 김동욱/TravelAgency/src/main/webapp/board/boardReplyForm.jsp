<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	function checkBoardReply() {
		if (document.boardReplyForm.subject.value == "")
			alert("제목을 입력하세요");
		else if (document.boardReplyForm.content.value == "")
			alert("내용을 입력하세요");
		else
			document.boardReplyForm.submit();
	}
</script>

<form name="boardReplyForm" method="post" action="boardReply.do">

	<input type="hidden" name="pseq" value="${pseq }">
	<input type="hidden" name="pg" value="${pg }">

	<div id="content_sub">
		<div class="sub_container">

			<div class="sub_menu">
				<!--leftmenu영역시작-->

				<!--leftmenu영역끝-->
			</div>
			<!--sub_menu-->

			<div class="sub_cont">
				<div class="sub_tit">
					<h3>답글 쓰기</h3>

				</div>
				<!--sub_tit-->
				<!--게시판(him_notice) 모듈 시작-->
				<div id='module_board' class='him_module' rel='qna'>

					<div class="sub_board">
						<table class="board_css">
							<tr>
								<th>제목</th>
								<td><input type="text" name="subject"
									placeholder="제목을 입력하세요" style="width: 80%" class="input"
									allowBlank=false label="제목"></td>
							</tr>
							<tr>
								<th>댓글</th>
								<td><input type="checkbox" name="allow_comment" value="1"
									id="allow_comment" checked> <label for="allow_comment">댓글허용</label>
								</td>
							</tr>



							<tr>
								<th>내용</th>
								<td><textarea name="content"
										style="width: 400px; height: 250px" placeholder="내용을 입력하세요"></textarea>
								</td>
							</tr>

						</table>
						<!--board_css-->
						<div class="btn_center">
							<img src="image/board/write2_button.png"
								onclick="checkBoardReply()" style="width: 100px; height: 40px">
							<a href="#" class="btn white" onclick="history.back();"
								style="vertical-align:middle; width: 100px; height: 40px;"><span style="line-height:40px;">취소</span></a>
						</div>
						<!--btn_center-->
					</div>
					<!--sub_board-->

				</div>
			</div>
			<!--sub_cont-->
		</div>
		<!--sub_container-->
	</div>
	<!--content_sub-->
</form>

