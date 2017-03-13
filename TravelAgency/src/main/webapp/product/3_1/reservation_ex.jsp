<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css_bt/bootstrap.min.css">
<script src="js_bt/bootstrap.min.js"></script>
<script type="text/javascript">
      window.onload =function(){
        var adultCount = $('#adult option:selected').val();
        var kidsCount = $('#kids option:selected').val();
        var totalPay = adultCount*900000+kidsCount*400000;
        $("#payment").text(totalPay+"원");
      }
        $(document).ready(function(){
          $('#adult').change(function(){
            var adultCount = $('#adult option:selected').val();
            var kidsCount = $('#kids option:selected').val();
            var totalPay = adultCount*900000+kidsCount*400000;
            $("#payment").empty();
            $("#payment").text(totalPay+"원");
          });
          $('#kids').change(function(){
            var adultCount = $('#adult option:selected').val();
            var kidsCount = $('#kids option:selected').val();
            var totalPay = adultCount*900000+kidsCount*400000;
            $("#payment").empty();
            $("#payment").text(totalPay+"원");
          })
        });
    </script>
<style media="screen">
	div {
		border: 1px solid red;
	}
	
	th {
		padding: 10px;
		width: 200px;
	}
	
	table, td, th {
		border-collapse: collapse;
		border: 1px solid #ddd;
		padding: 10px;
	}
	
	select {
		width: 100px;
	}
	
	p {
		font-size: 22px;
		margin: 4px;
	}
</style>

<div style="margin:0 auto; width:70%; margin-top:-80px;">
	<h1>예약하기</h1>
	<div style="margin: 30px">
		<div class="container-fluid">
			<h2>날짜선택</h2>
			<div class="row">
				<div class="col-md-6">
					<p align="center">
						출발날짜<br />
						<iframe src="/TravelAgency/product/3_1/calendarTest.jsp" width="500" height="370"
							frameborder="0"></iframe>
					</p>
				</div>
				<div class="col-md-6">
					<p align="center">
						도착날짜<br />
						<iframe src="/TravelAgency/product/3_1/calendarTest.jsp" width="500" height="370"
							frameborder="0"></iframe>
					</p>
				</div>
			</div>
		</div>

		<h2>인원선택</h2>
		<div style="margin: 20px">
			<div style="display: inline-block; margin: 10px;">
				<table>
					<th><span style="font-size: 20px;"> 성인: <select
							class="adult" name="adult" id="adult">
								<option value="0">0</option>
								<option value="1" selected>1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
						</select>
					</span></th>
					<th><span style="font-size: 20px;"> 아동: <select
							class="kids" name="kids" id="kids">
								<option value="0">0</option>
								<option value="1" selected>1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
						</select>
					</span></th>
				</table>
			</div>
			<div style="display: inline-block; float: right; height: 40px;">
				<p id="payments">
					<b>금액
						<p id="payment"></p>
					</b>
				</p>
			</div>
		</div>
		<input type="button" name="perchase" value="결 제 하 기"
			style="font-size: 22px; width: 150px; float: right;">
	</div>
</div>
