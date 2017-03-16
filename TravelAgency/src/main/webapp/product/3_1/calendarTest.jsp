<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
html {
	font-size: 14px;
	font-family: Arial, Helvetica, sans-serif;
}
</style>

<link rel="stylesheet" href="/TravelAgency/styles_kendo/kendo.common-material.min.css" type="text/css" />
<link rel="stylesheet" href="/TravelAgency/styles_kendo/kendo.material.min.css" type="text/css" />
<link rel="stylesheet"
	href="/TravelAgency/styles_kendo/kendo.material.mobile.min.css" type="text/css" />

<script src="/TravelAgency/js_kendo/jquery.min.js" type="text/javascript"></script>
<script src="/TravelAgency/js_kendo/kendo.all.min.js" type="text/javascript"></script>

<div id="example">
	<div class="demo-section k-content" style="text-align: center;">
		<div id="calendar" style="width:450px;"></div>
	</div>
	<script>
         $(document).ready(function() {
	         // create Calendar from div HTML element
             $("#calendar").kendoCalendar();
         });
    </script>
</div>
