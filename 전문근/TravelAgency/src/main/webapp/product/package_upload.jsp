<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/product/package_upload.css?ver=1"></link>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"></link>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- jQuery UI 국제화 대응을 위한 라이브러리 (다국어) -->
<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/jquery-ui-i18n.min.js"></script>
<script>
$(function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']); //datepicker 한국어로 사용하기 위한 언어설정
	$('#date_depart').datepicker({dateFormat: 'yy년 mm월 dd일'});
	$('#date_arriv').datepicker({dateFormat: 'yy년 mm월 dd일'});
});
</script>
<script src="js/product/package_upload.js" type="text/javascript"></script>

<body id="package_upload">
	<div id="package_uploadDIV">
		<form name="package_upload_Form" method="post" enctype="multipart/form-data" action="/TravelAgency/package_upload.do">
			<table id="package_list_table" class="table table-striped">
				<tr>
					<th>패키지명</th>
					<td>
						<p><input type="text" class="pack_up_list" name="pack_title" id="pack_title">
						<select name="pack_category" id="pack_category">
							<option value="">지역선택</option>
							<option value="ea">동남아</option>
							<option value="eu">유럽</option>
							<option value="am">미주</option>
						</select></p>
						<input type="file" name="img" size="40">
					</td>
				</tr>
				<tr>
					<th>패키지금액</th>
					<td><input type="number" class="pack_up_list"
						name="pack_price_kid" placeholder="아동"> <input
						type="number" class="pack_up_list" name="pack_price_adult"
						placeholder="성인"></td>
				</tr>
				<tr>
					<th>패키지설명</th>
					<td><textarea rows="5" cols="70" name="pack_desc"></textarea></td>
				</tr>
				<tr>
					<th>여행도시</th>
					<td><input type="text" class="pack_up_list" name="pack_city"></td>
				</tr>
				<tr>
					<th>여행기간</th>
					<td><input type="text" name="pack_depart" size="15"
						id="date_depart" />~<input type="text" name="pack_arriv"
						size="15" id="date_arriv" /></td>
				</tr>
				<tr>
					<th>항공사</th>
					<td><input type="text" class="pack_up_list" name="pack_air"></td>
				</tr>
				<tr>
					<th>핵심정보</th>
					<td><textarea rows="5" cols="70" name="pack_detail"></textarea><br>
						<input type="file" name="img" size="40"> <input
						type="file" name="img" size="40"> <input type="file"
						name="img" size="40"> <input type="file" name="img"
						size="40"></td>
					<td></td>
				</tr>
				<tr>
					<th>관광정보</th>
					<td><textarea rows="5" cols="70" name="tour_info"></textarea><br>
						<input type="file" name="img" size="40"> <input
						type="file" name="img" size="40"> <input type="file"
						name="img" size="40"> <input type="file" name="img"
						size="40"></td>
				</tr>
				<tr>
					<th>여행참고사항</th>
					<td><textarea rows="5" cols="70" name="tour_ref"></textarea></td>
				</tr>
				<tr>
					<th>일정표<input type="button" value="일정추가" id="sche_add"></th>
					<!-- onclick="javascript:appendItem()" -->
				</tr>

			</table>
			<ol id="schedules"></ol>
			<input type="button" value="등록" id="upload_check">
			<!-- onclick="javascript:upload_check()" -->
		</form>
	</div>
</body>