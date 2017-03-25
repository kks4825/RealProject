$(document).ready(function(){
    //유효성검사
	$('#upload_check').on("click",function(){
		if(document.getElementById('pack_title').val()==""){
			alert("패키지 명을 입력하시오");
		}
		
		/*li개수 파악해서 createElement로 input tpye값에 hidden, value값에 li값 넘기기.*/
		var liLength = $('.items').length;
		
		alert(liLength);
		
		var liLength_value = document.createElement("input");
		liLength_value.setAttribute("type","hidden");
		liLength_value.setAttribute("name","liLength");
		liLength_value.setAttribute("value",liLength);
		$('#package_list_table').append(liLength_value);
		
		document.package_upload_Form.submit();
	});
	//여행기간 설정할 때 오늘보다 이른 출발날이면 다시 선택하기, 도착날이 출발날보다 이르면 다시선택하기.

	//일정표추가
	var count=0;
	$('#sche_add').on("click",function() {
		count++;
	    var newItem = document.createElement("li");
	    newItem.setAttribute("class","items");
	    var html = 
	        '<input type="text" size="100" placeholder="일차 일정 입력" name="schedules_content">'+
	        '<input type="button" value="삭제" id="sche_remove" />';
	    newItem.innerHTML = html;
	    $("#schedules").append(newItem);
	});
	
	//일정표삭제
	$(document).on("click","#sche_remove",function(){
		$(this).parent().remove();
	})
});