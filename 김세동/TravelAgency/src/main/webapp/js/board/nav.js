(function($){
//URL 자동 검색
$(document).ready(function(){
	
	/* 드롭다운 메뉴  */
	var dropMenuNav = function(parent, elem){ //(상위 리스트, 하위 리스트)
		
		//메뉴 숨기기
		elem.hide(); 
		
		//이벤트 핸들러
		parent.find("li").hover(function(){elem.stop().slideDown("fast");}, function(){elem.stop().slideUp("fast");}); //상위 오버 시 유치
		elem.hover(function(){
			elem.stop().slideDown("fast");
			elem.css({"display":"block !important"});
		}, function(){elem.stop().slideUp("fast");}); //하위 오버 시 유치
		
		
		
		//상위 리스트 오버시 "tap" 클래스 추가
		parent.find("li").hover(function(){
			$(this).addClass("tap");
		}, function(){
			$(this).parent().find("li").removeClass("tap");
		});
		
		//하위 리스트 오버시 "tap"추가 + 상위 리스트  "tap" 유지
		$(".drop_child").hover(function(){
			var parentIndext = $(this).parent().index(); //해당 하위 리스트위 상위 리스트 인덱스 가져오기
			parent.find("li").eq(parentIndext).addClass("tap"); //tap 클래스 추가
		}, function(){
			parent.find("li").removeClass("tap"); //모두 제거
		});
		
	}
	//드롭다운 메뉴 설치 (상위 리스트, 하위 리스트)
	dropMenuNav($(".lnb_nav"), $(".drop_menu_wrap"));
	
	//URL을 인식하여 해당 리스트에 tap 유지
	var url = document.URL.substring(document.URL.lastIndexOf("/") + 1, document.URL.lastIndexOf("/") + 30); //현재 URL 자르기
	var url = url.split("?"); //URL ? 기준으로 자르기 (GET 방식 변수 자르기)
	
	var getNavHref = []; //URL 담기
	
	$(".sub_menu dd").each(function(index){
		var href = $(this).find("a").attr("href");
		href = href.split("/");
		href = href[(href.length) - 1];
		
		//현재 URL과 일치하는 메뉴의 A태그를 검사
		if(url[0] == href){
			$(this).find("a").addClass("tap");
		}
		//회원약관 + 회원가입 예외처리
		if(url[0] == "join"){
			if(href == "agree"){
				$(this).find("a").addClass("tap");
			}
		}
		if(url[0] == "mypage_view"){
			if(href == "mypage"){
				$(this).find("a").addClass("tap");
			}
		}
	});
	
	//해당 페이지에 일치하는 상위 메뉴 리스트 Tap 유치
	var nav = location.href;
	nav = nav.split("/");
	nav = nav.reverse();
	$(".lnb_nav li").each(function(){
		var href = $(this).find("a").attr("href");
		href = href.split("/");
		href = href[(href.length) - 2];
		//console.log(href);
		if(nav[1] == href){
			$(this).addClass("tap_page");
		}
	});
	
});
})(jb);