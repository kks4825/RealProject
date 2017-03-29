(function($){
$(function(){
	$(document).ready(function(){
		$('#mainSlideBnr').bxSlider({
		  pagerCustom: '#bx-pager'
		});
		
		//드롭다운 메뉴
		/*$("#header #lnb ul.lnb_nav > li, .drop_menu_wrap").hover(function(){
			$(".drop_menu_wrap").show();
		}, function(){
			$(".drop_menu_wrap").hide();
		});*/
		
		var url = document.URL.substring(document.URL.lastIndexOf("/") + 1, document.URL.lastIndexOf("/") + 30);
	  	var getNavHref = [];
	  	$(".sub_menu dd").each(function(index){
	  		//getNavHref[index] = $(this).find("a").attr("href");
	  		var href = $(this).find("a").attr("href");
	  		href = href.split("/");
	  		href = href[(href.length) - 1];
	  		
	  		//console.log(href);
	  		console.log(url);
	  		console.log(href);
	  		if(url == href){
	  			$(this).find("a").addClass("tap");
	  		}
	  	});
	});

});
})(jb);