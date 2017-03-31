<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- <link rel="stylesheet" href="css/product/package_upload.css?ver=1"></link> -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"></link>
<style>
div{
	border: 0px solid red;
	padding: 0px;
	margin: 0px;
}
#package_list_table tr,th,td{
	padding:0px;
	margin:0px;
	border-collapse: collapse;
	border: 1px solid #ddd;
	text-align:center;
}
#package_list_table td{
	height: 50px;
	vertical-align:middle;
}
.pay{
		margin: 0px;
		border: 1px solid #ddd;
		padding: 0px;
	}
.pay_category{
		  top: -34px;
		  left: 0;
		  background: #1e70dd;
		  padding: 10px 15px;
		  color: #FFFFFF;
		  font-size: 14px;
		  font-weight: 600;
		  text-transform: uppercase;
		  margin-bottom:10px;
	}
</style>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- jQuery UI 국제화 대응을 위한 라이브러리 (다국어) -->
<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/jquery-ui-i18n.min.js"></script>
<script>
$(function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']); //datepicker 한국어로 사용하기 위한 언어설정
	$('#date_depart').datepicker({dateFormat: 'yy-m-dd'});
	$('#date_arriv').datepicker({dateFormat: 'yy-m-dd'});
});
</script>
<script src="js/product/package_upload.js" type="text/javascript"></script>

<body id="package_upload">
<div id="content_sub">
	<div class="sub_container">
		<div class="sub_cont">
			<div class="pay" style="margin:0 auto; width:100%; margin-top:0px;border: 0px solid #ddd;">
				<div class="sub_tit" style="margin:0 auto; width:100%; margin-top:-20px;">
					<h3>관리자 페이지</h3>
				</div><!--sub_tit-->
					<div id="package_uploadDIV">
					<div class="pay_category">패키지 추가하기</div>
						<form name="package_upload_Form" method="post" enctype="multipart/form-data" action="/TravelAgency/package_upload.do">
							<table id="package_list_table" class="table table-striped">
								<tr>
									<th style="width:15%;">패키지명</th>
									<td>
										<p><input type="text" class="pack_up_list" name="pack_title" id="pack_title" placeholder="패키지명을 입력하세요">
										<select name="pack_category" id="pack_category">
											<option value="">지역선택</option>
											<option value="ea">동남아</option>
											<option value="eu">유럽</option>
											<option value="am">미주</option>
										</select>
										<input type="file" name="img" size="40" id="img1"></p>
									</td>
								</tr>
								<tr>
									<th>패키지금액</th>
									<td>아동&nbsp;:&nbsp;<input type="number" class="pack_up_list" name="pack_price_kid" placeholder="인원수를 입력하세요" id="pack_price_kid"> 
										&nbsp;&nbsp;성인&nbsp;:&nbsp;<input type="number" class="pack_up_list" name="pack_price_adult" id="pack_price_adult"	placeholder="인원수를 입력하세요"></td>
								</tr>
								<tr>
									<th>패키지설명</th>
									<td><textarea rows="5" style="width:99.8%;" cols="70" name="pack_desc" id="pack_desc" placeholder="패키지에 대한 내용을 입력하세요"></textarea></td>
								</tr>
								<tr>
									<th>여행도시</th>
									<td><input type="text" class="pack_up_list" name="pack_city" id="pack_city" placeholder="도시명을 입력하세요"></td>
								</tr>
								<tr>
									<th>여행기간</th>
									<td>출발날짜&nbsp;:&nbsp;<input type="text" name="pack_depart" size="15"
										id="date_depart" placeholder="클릭 후 날짜 지정"/>&nbsp;~&nbsp;도착날짜&nbsp;:&nbsp;<input type="text" name="pack_arriv"
										size="15" id="date_arriv" placeholder="클릭 후 날짜 지정"/></td>
								</tr>
								<tr>
									<th>항공사</th>
									<td><input type="text" class="pack_up_list" name="pack_air" id="pack_air" placeholder="항공사명을 입력하세요"></td>
								</tr>
								<tr>
									<th>가격정보</th>
									<td><textarea rows="5" cols="70" style="width:99.8%;" name="pack_detail" id="pack_detail" placeholder="가격정보에 대한 내용을 입력하세요"></textarea><br>
										<input type="file" name="img" size="40" id="img2"> 
										<input type="file" name="img" size="40" id="img3"> 
										<input type="file" name="img" size="40" id="img4"> 
										<input type="file" name="img" size="40" id="img5"></td>
									<td></td>
								</tr>
								<tr>
									<th>관광정보</th>
									<td><textarea rows="5" cols="70" style="width:99.8%;" name="tour_info" id="tour_info" placeholder="관광정보에 대한 내용을 입력하세요"></textarea><br>
										<input type="file" name="img" size="40" id="img6">
										<input type="file" name="img" size="40" id="img7"> 
										<input type="file" name="img" size="40" id="img8"> 
										<input type="file" name="img" size="40" id="img9"></td>
								</tr>
								<tr>
									<th>여행참고사항</th>
									<td><textarea rows="5" cols="70" style="width:99.8%;" name="tour_ref" id="tour_ref" placeholder="여행정보에 대한 내용을 입력하세요"></textarea></td>
								</tr>
								<tr>
									<th>일정표</th>
									<td><input type="button" style=" height: 25px; width: 60px; " value="일정추가" id="sche_add"></td>
									<!-- onclick="javascript:appendItem()" -->
								</tr>
							</table>
							<ol id="schedules"></ol><br><br>
							<input type="button" style="font-size: 17px; float: right;  height: 30px; width: 120px; margin-bottom:30px " value="등록" id="upload_check">
							<!-- onclick="javascript:upload_check()" -->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>	
</body>