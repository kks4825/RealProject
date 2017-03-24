$(document).ready(function(){
    var date_arriv_num = 29991231; //초기값 설정
    var date_depart_num = 29991230;
    var liLength;
    $('#date_depart').change(function(){
        //지금날짜
        var year = new Date().getFullYear();
        var month = new Date().getMonth()+1;
        var day = new Date().getDate();
        var now = year+""+month+""+day;
        //출발날짜
        var date_depart = $('#date_depart').val();
        var date_depart_split = date_depart.split('-');
        var date_depart_num = date_depart_split[0]+date_depart_split[1]+date_depart_split[2];
        if((now-date_depart_num)>0){
            alert("오늘 이전 출발은 설정할 수 없습니다.");
            $('#date_depart').val("");
        }else if((date_arriv_num-date_depart_num)<=0){
            alert("출발날짜는 도착날짜보다 이르게 설정되어야 합니다.");
            $('#date_depart').val("");
        }
    });
    $('#date_arriv').change(function(){
        //지금날짜
        var year = new Date().getFullYear();
        var month = new Date().getMonth()+1;
        var day = new Date().getDate();
        var now = year+""+month+""+day;
        //출발날짜
        var date_depart = $('#date_depart').val();
        var date_depart_split = date_depart.split('-');
        var date_depart_num = date_depart_split[0]+date_depart_split[1]+date_depart_split[2];
        //도착날짜
        var date_arriv = $('#date_arriv').val();
        var date_arriv_split = date_arriv.split('-');
        date_arriv_num = date_arriv_split[0]+date_arriv_split[1]+date_arriv_split[2];
        if((now-date_arriv_num)>0){
            alert("오늘 이전 도착은 설정할 수 없습니다.");
            $('#date_arriv').val("");
        }else if((date_depart_num-date_arriv_num)>=0){
            alert("도착날짜는 출발날짜보다 늦게 설정되어야 합니다.");
            $('#date_arriv').val("");
        }
        
        // 날짜 차이 알아 내기
        var date_d = new Date(date_depart_split[0],Number(date_depart_split[1])-1,date_depart_split[2]);
        var date_a = new Date(date_arriv_split[0],Number(date_arriv_split[1])-1,date_arriv_split[2]);
        var diff = date_a-date_d;
        var currDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
        liLength=parseInt((diff/currDay)+1); //날자 차이는 liLength
    });
    
    //일정표추가
    //liLength대로 li 생성하기
	$('#sche_add').on("click",function(){
        $('#schedules').empty();
        for(var i=0; i<liLength; i++){
            var newItem = document.createElement("li");
            newItem.setAttribute("class","items");
            var html = '<textarea row="4" cols="50" placeholder="일차 일정 입력" name="schedules_content">';
            newItem.innerHTML = html;
            $("#schedules").append(newItem);    
        }    
	});
    
    //유효성검사
	$('#upload_check').on("click",function(){
		var liLength = $('.items').length;
		var liLength_value = document.createElement("input");
		liLength_value.setAttribute("type","hidden");
		liLength_value.setAttribute("name","liLength");
		liLength_value.setAttribute("value",liLength);
		$('#package_list_table').append(liLength_value);
		if($('#pack_title').val()==""){
			alert("패키지 명을 입력하시오");
		}else if($('#pack_category').val()==""){
			alert("패키지 카테고리를 입력하시오");
		}else if($('#pack_price_kid').val()==""){
			alert("패키지 아동 입력하시오");
		}else if($('#pack_price_adult').val()==""){
			alert("패키지 성인 입력하시오");
		}else if($('#pack_desc').val()==""){
			alert("패키지 설명을 입력하시오");
		}else if($('#pack_city').val()==""){
			alert("도시, 여행지를 입력하시오");
		}else if($('#date_depart').val()==""){
			alert("출발날짜를 입력하시오");
		}else if($('#pack_arriv').val()==""){
			alert("도착날짜를 입력하시오");
		}else if($('#pack_air').val()==""){
			alert("항공사리를 입력하시오");
		}else if($('#pack_detail').val()==""){
			alert("핵심정보를 입력하시오");
		}else if($('#tour_info').val()==""){
			alert("관광정보를 입력하시오");
		}else if($('#tour_ref').val()==""){
			alert("여행참고사항을 입력하시오");
		}else if($('#img1').val()==""){
			alert("패키지 대표사진을 선택하시오");
		}else if($('#img2').val()==""||$('#img3').val()==""||$('#img4').val()==""||$('#img5').val()==""){
			alert("사진을 전부 선택하시오");
		}else if($('#img6').val()==""||$('#img7').val()==""||$('#img8').val()==""||$('#img9').val()==""){
			alert("사진을 전부 선택하시오");
		}else {
			document.package_upload_Form.submit();
		}
	});	
});