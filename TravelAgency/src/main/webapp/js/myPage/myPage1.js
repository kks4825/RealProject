$(function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']); //datepicker 한국어로 사용하기 위한 언어설정
	$('#date_depart_search').datepicker({dateFormat: 'yy년mm월dd일'});
	$('#date_arriv_search').datepicker({dateFormat: 'yy년mm월dd일'});
});
$(document).ready(function(){
    var date_a_s = 29991231; //초기값 설정
    var liLength;
    $('#date_depart_search').change(function(){
        //출발날짜
        var date_depart = $('#date_depart_search').val();
        var date_depart_split1 = date_depart.substr(0,4);
        var date_depart_split2 = date_depart.substr(5,2);
        var date_depart_split3 = date_depart.substr(8,2);
        var date_d_s = date_depart_split1+date_depart_split2+date_depart_split3;
        if((date_a_s-date_d_s)<=0){
            alert("출발날짜는 도착날짜보다 이르게 설정되어야 합니다.");
            $('#date_depart_search').val("");
        }
    });
    $('#date_arriv_search').change(function(){
        //출발날짜
        var date_depart = $('#date_depart_search').val();
        var date_depart_split1 = date_depart.substr(0,4);
        var date_depart_split2 = date_depart.substr(5,2);
        var date_depart_split3 = date_depart.substr(8,2);
        var date_d_s = date_depart_split1+date_depart_split2+date_depart_split3;
        //도착날짜
        var date_arriv = $('#date_arriv_search').val();
        var date_arriv_split1 = date_arriv.substr(0,4);
        var date_arriv_split2 = date_arriv.substr(5,2);
        var date_arriv_split3 = date_arriv.substr(8,2);
        date_a_s = date_arriv_split1+date_arriv_split2+date_arriv_split3;
        if((date_a_s-date_d_s)<=0){
            alert("도착날짜는 출발날짜보다 늦게 설정되어야 합니다.");
            $('#date_arriv_search').val("");
        }
    });
});