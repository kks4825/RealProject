<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����ı� �ۼ�</title>
</head>
<body>
<div class="header" style="text-align:left; ">
	<font size=5 face="Comic Sans MS"><strong>�����ı�</strong></font><br><br>
</div>

<div class="title" style="border-top:2px solid black; border-bottom:2px solid black; 
							width:505px; height:490px;"><br>
	
	<table width="500" height="450" cellpadding="4" style="border:1px gray solid;">
	<tr>
		<td width="100" height="20" align="center" style="background-color:#D9E5FF;"><b>����</b> </td>
		<td><input type="text" name="title" placeholder="���� �Է�" 
					size="58" style="height:20px; border:1px solid blue;"/></td>
	</tr>
	
	<tr>
		<td width="100" height="20" align="center" style="background-color:#D9E5FF;"><b>�ۼ���</b> </td>
		<td><input type="text" name="name" size="5" 
					style="height:20px; border:1px solid blue;"/></td>
	</tr>
	
	<tr>
		<td width="200" height="20" align="center" style="background-color:#D9E5FF;"><b>��ǰ����</b> </td>
		<td>
			<select name="wr_1" style="width:125px; border:1px solid blue; color:<?=$score_color?>"> 
				<option value="" selected>��ǰ ���� ���� </option> 
				<option value="1" >�� (1)</option> 
				<option value="2" >�ڡ� (2)</option> 
				<option value="3" >�ڡڡ� (3)</option> 
				<option value="4" >�ڡڡڡ� (4)</option> 
				<option value="5" >�ڡڡڡڡ� (5)</option> 
			</select>
		</td>
	</tr>
	
	<tr>
		<td width="100" height="120" align="center" style="background-color:#D9E5FF;"><b>����</b></td>
		<td>
			<textarea name="content" cols="55" rows="18" 
					style="border:1px solid blue;">
			</textarea>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="button" style="border:none; width:40pt;height:25pt; background-color:#36589C; 
			 						color:#FFFFFF;" value="���" onclick="">&nbsp;&nbsp;
	   		<input type="reset" style="border:none; width:40pt;height:25pt; background-color:#36589C; 
	   								color:#FFFFFF;" value="���">
		</td>
	</tr>
</table>
</div>
</body>
</html>