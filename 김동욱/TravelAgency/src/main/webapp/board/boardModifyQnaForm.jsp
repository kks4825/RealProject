<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	function checkBoardModify() {
		if (document.boardModifyForm.subject.value == "")
			alert("제목을 입력하세요");
		else if (document.boardModifyForm.content.value == "")
			alert("내용을 입력하세요");
		else
			document.boardModifyForm.submit();
	}
</script>

<form name="boardModifyForm" method="post" action="boardQnaWrite.do">

	<input type="hidden" name="seq" value="${seq }"> <input
		type="hidden" name="pg" value="${pg }">

	<div id="content_sub">
		<div class="sub_container">

			<div class="sub_menu">
				<!--leftmenu영역시작-->

				<!--leftmenu영역끝-->
			</div>
			<!--sub_menu-->

			<div class="sub_cont">
				<div class="sub_tit">
					<h3>1:1상담센터 글 수정</h3>

				</div>
				<!--sub_tit-->
				<!--게시판(him_notice) 모듈 시작-->
				<div id='module_board' class='him_module' rel='qna'>

					<div class="sub_board">
						<table class="board_css">
							<tr>
								<th>제목</th>
								<td><input type="text" name="subject"
									value="${boardDTO.subject }" style="width: 80%" class="input"
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
										style="width: 400px; height: 250px">${boardDTO.content}</textarea>
								</td>
							</tr>

						</table>
						<!--board_css-->
						<div class="btn_center">
							<img src="image/board/write2_button.png"
								onclick="checkBoardModify()" style="width: 100px; height: 40px">
							<a href="#" class="btn white" onclick="history.back();"
								style="width: 100px; height: 41px;">취소</a>
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
