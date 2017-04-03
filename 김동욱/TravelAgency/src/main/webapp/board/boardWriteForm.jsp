<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	function checkBoardWrite() {
		if (document.boardWriteForm.subject.value == "")
			alert("제목을 입력하세요");
		else if (document.boardWriteForm.content.value == "")
			alert("내용을 입력하세요");
		else
			document.boardWriteForm.submit();
	}
</script>

<form name="boardWriteForm" method="post" action="/TravelAgency/boardWrite.do">

	<input type="hidden" name="pseq" value="${pseq }"> 
	<input type="hidden" name="pg" value="${pg }">

	<div id="content_sub">
		<div class="sub_container">
			<div class="sub_cont">
				<div class="sub_tit">
					<h3>글 쓰기</h3>

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
								<th>내용</th>
								<td><textarea name="content"
										style="width: 400px; height: 250px" placeholder="내용을 입력하세요"></textarea>
								</td>
							</tr>

						</table>
						<!--board_css-->
						<div class="btn_center">
							<img src="image/board/write2_button.png"
								onclick="checkBoardWrite()" style="width: 100px; height: 40px">
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

