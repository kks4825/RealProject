<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>여행후기 작성</title>
</head>
<body>
<div class="header" style="text-align:left; ">
	<font size=5 face="Comic Sans MS"><strong>여행후기</strong></font><br><br>
</div>

<div class="title" style="border-top:2px solid black; border-bottom:2px solid black; 
							width:505px; height:490px;"><br>
	
	<table width="500" height="450" cellpadding="4" style="border:1px gray solid;">
	<tr>
		<td width="100" height="20" align="center" style="background-color:#D9E5FF;"><b>제목</b> </td>
		<td><input type="text" name="title" placeholder="제목 입력" 
					size="58" style="height:20px; border:1px solid blue;"/></td>
	</tr>
	
	<tr>
		<td width="100" height="20" align="center" style="background-color:#D9E5FF;"><b>작성자</b> </td>
		<td><input type="text" name="name" size="5" 
					style="height:20px; border:1px solid blue;"/></td>
	</tr>
	
	<tr>
		<td width="200" height="20" align="center" style="background-color:#D9E5FF;"><b>상품별점</b> </td>
		<td>
			<select name="wr_1" style="width:125px; border:1px solid blue; color:<?=$score_color?>"> 
				<option value="" selected>상품 별점 선택 </option> 
				<option value="1" >★ (1)</option> 
				<option value="2" >★★ (2)</option> 
				<option value="3" >★★★ (3)</option> 
				<option value="4" >★★★★ (4)</option> 
				<option value="5" >★★★★★ (5)</option> 
			</select>
		</td>
	</tr>
	
	<tr>
		<td width="100" height="120" align="center" style="background-color:#D9E5FF;"><b>내용</b></td>
		<td>
			<textarea name="content" cols="55" rows="18" 
					style="border:1px solid blue;">
			</textarea>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="button" style="border:none; width:40pt;height:25pt; background-color:#36589C; 
			 						color:#FFFFFF;" value="등록" onclick="">&nbsp;&nbsp;
	   		<input type="reset" style="border:none; width:40pt;height:25pt; background-color:#36589C; 
	   								color:#FFFFFF;" value="취소">
		</td>
	</tr>
</table>
</div>
</body>
</html>