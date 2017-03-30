<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<div id="content">
	<div class="main_visual blind">
		<div style="text-align: center;">
		</div>
	</div>
	<div class="main_banner">
		<div id="main_banner_slide">
			<h2 class="blind">메인 슬라이드 배너</h2>
			<ul id="mainSlideBnr">
				<li><a href="/about/about"><img
						src="images/main/TravelAgency3.png" /></a></li>
				<li><a href="/about/about"><img
						src="images/main/TravelAgency.png" /></a></li>
				<li><a href="/about/about"><img
						src="images/main/TravelAgency4.png" /></a></li>
			</ul>

			<h2 class="blind">링크 배너</h2>
		</div>
		<ul id="subBnrWrap">
			<li><a href="/about/history"><img
					src="images/main/main_sub_bnr_01.png" alt="회사연혁"></a></li>
			<li><a href="/about/about"><img
					src="images/main/main_sub_bnr_02.png" alt="기업이념"></a></li>
			<li><a href="/business/business1"><img
					src="images/main/main_sub_bnr_03.png" alt="서비스소개"></a></li>
			<li><a href="/about/location"><img
					src="images/main/main_sub_bnr_04.png" alt="오시는길"></a></li>
		</ul>
	</div>
<<<<<<< HEAD
	<!--main_banner-->
	<div id="asideBnrWrap">
		<img src="images/main/TravelAgency1.png" alt="WE ARE ANEX"
			title="고객의 안전한 여행을 책임지는 황제투어 입니다. 저희는 늘 고객의 입장에서 바라볼 수 있도록 노력합니다.보다 쉽고 편하고 안전한 여행을 원하신다면 저희 황제투어와 함께 하세요" />
	</div>
	<div id="mainBoardWrap">
		<div id="service">
			<h2>
				<a href="/business/business1">SERVICE</a>
			</h2>
			<div id="choice_service"></div>
			<script>
				var choice = {
					id : '',
					list : function(id) {
						this.id = id;
						var area = Ext.get('choice_' + this.id);
						if (area) {
							var height = area.getHeight();
							area
									.load({
										url : '/lib/choice/list.php',
										scripts : true,
										params : {
											choice_id : this.id
										},
										text : '<div style="background:transparent url(/skin/_modules/images/loading.gif) no-repeat center;height:'
												+ height + 'px;"></div>'
									});
						}
					},
					view : function(seq, id, title) {
						HIM.Window.open('/lib/choice/view.php', title, {
							choice_id : id,
							seq : seq
						}, {
							width : 500,
							height : 600
						});
					}
				}

				Ext.onReady(function() {
					choice.list('service');
				});
			</script>
		</div>
		<div id="notice">
			<h2>
				<a href="/customer/notice">NOTICE</a>
			</h2>
			<div id="choice_notice"></div>
			<script>
				var choice = {
					id : '',
					list : function(id) {
						this.id = id;
						var area = Ext.get('choice_' + this.id);
						if (area) {
							var height = area.getHeight();
							area
									.load({
										url : '/lib/choice/list.php',
										scripts : true,
										params : {
											choice_id : this.id
										},
										text : '<div style="background:transparent url(/skin/_modules/images/loading.gif) no-repeat center;height:'
												+ height + 'px;"></div>'
									});
						}
					},
					view : function(seq, id, title) {
						HIM.Window.open('/lib/choice/view.php', title, {
							choice_id : id,
							seq : seq
						}, {
							width : 500,
							height : 600
						});
					}
				}

				Ext.onReady(function() {
					choice.list('notice');
				});
			</script>
		</div>
		<div id="event">
			<h2>
				<a href="/customer/event_01">EVENT</a>
			</h2>
			<link rel="stylesheet" type="text/css" href="/skin/_modules/choice/gallery/choice.css">
			<div id="choice_event"></div>
			<script>
				var choice = {
					id : '',
					list : function(id) {
						this.id = id;
						var area = Ext.get('choice_' + this.id);
						if (area) {
							var height = area.getHeight();
							area
									.load({
										url : '/lib/choice/list.php',
										scripts : true,
										params : {
											choice_id : this.id
										},
										text : '<div style="background:transparent url(/skin/_modules/images/loading.gif) no-repeat center;height:'
												+ height + 'px;"></div>'
									});
						}
					},
					view : function(seq, id, title) {
						HIM.Window.open('/lib/choice/view.php', title, {
							choice_id : id,
							seq : seq
						}, {
							width : 500,
							height : 600
						});
					}
				}

				Ext.onReady(function() {
					choice.list('event');
				});
			</script>
		</div>
	</div>
	<div id="mainArticle">
		<div id="articleWrap">
			<div id="search">
				<h2>
					<img src="images/main/EmperorTour2.png"
						style="width: 250px; height: 50px;" alt="로고" />
				</h2>
				<link rel="stylesheet" type="text/css"
					href="/skin/_modules/search/default/search.css">
				<form name="searchForm" id="searchForm"
					onSubmit="searchbbs.list('him_search');return false">
					<div class="m_search">
						<div class="m_search_wrap">
							<span class="sinput_warp"> <input type="text" id="query"
								style="width: 230px; height: 25px;" off" autocomplete="off"
								autocapitalize="off" name="query" class="sinput" value=""
								maxlength="255" />
							</span>
							<button onClick="searchbbs.list('him_search','통합검색');">search</button>
						</div>
					</div>
				</form>
				<script>
					var searchbbs_client = {
						msg : {
							'alert' : '검색어를 입력해 주세요.'
						},
						p : 1,
						width : 500,
						height : 600
					}
				</script>
				<script>
					var searchbbs = {
						list : function(id, title) {
							var search_word = Ext.get('query').getValue();
							if (!search_word) {
								var msg = searchbbs_client.msg.alert;
								msg = (!msg) ? '검색어를 입력해 주세요' : msg;
								alert(msg);
								return false;
							}
							var w = (searchbbs_client.width > 0) ? searchbbs_client.width
									: 500;
							var h = (searchbbs_client.height > 0) ? searchbbs_client.height
									: 600;
							HIM.Window.open('/lib/search/list.php', title, {
								search_id : id,
								search_word : search_word
							}, {
								width : w,
								height : h
							});
						}
					};

					var searchlist = {
						id : 'him_search',
						view : function(id, seq) {
							HIM.Window.win.load({
								url : '/lib/search/view.php',
								method : 'POST',
								scripts : true,
								params : {
									search_id : id,
									seq : seq
								}
							});
						},
						list : function(id, p) {
							var search_word = Ext.get('query').getValue();
							var p = (p) ? p : searchbbs_client.p;
							searchbbs_client.p = p;
							HIM.Window.win.load({
								url : '/lib/search/list.php',
								method : 'POST',
								scripts : true,
								params : {
									search_id : id,
									search_word : search_word,
									p : p
								}
							});
						},
						move : function(p) {
							searchlist.list(searchlist.id, p);
						},
						go : function(o) {
							var o = Ext.get(o);
							var p = o.getAttribute('value');
							this.move(p);
						}
					};
				</script>
				<p>찾으시는 제품을 쉽게 검색하세요.</p>
			</div>
			<div id="quick">
				<h2>QUICK MENU</h2>
				<ul>
					<li><a href="/about/about">회사소개</a></li>
					<li><a href="/member/agreement">이용약관</a></li>
					<li><a href="/member/policy">개인정보취급방침</a></li>
					<li><a href="/about/location">오시는길</a></li>
				</ul>
			</div>
			<div id="sns">

				<ul>
					<li class="blog"><a href="http://section.blog.naver.com/"
						target="_blank">blog</a></li>
					<li class="face"><a href="http://facebook.com/"
						target="_blank">facebook</a></li>
					<li class="star"><a href="javascript:bookmarksite();">star</a></li>
				</ul>

			</div>
		</div>
	</div>



	<!--banner_service-->
	<div class="banner_publicity blind">
		<h2>
			<a href="https://www.youtube.com/" target="_blank"><img
				src="/skin/default/images/main/img_video.gif" alt="홍보영상"></a>
		</h2>
	</div>
	<!--banner_publicity-->
	<div class="banner_notice blind">
		<h2>
			최근소식<span><a href="/customer/notice"><img
					src="/skin/default/images/main/btn_more.gif" alt="최근소식 더보기"></a></span>
		</h2>
		<!--게시물추출(mymind) 모듈 시작-->
		<div id="choice_mymind"></div>
		<script>
			var choice = {
				id : '',
				list : function(id) {
					this.id = id;
					var area = Ext.get('choice_' + this.id);
					if (area) {
						var height = area.getHeight();
						area
								.load({
									url : '/lib/choice/list.php',
									scripts : true,
									params : {
										choice_id : this.id
									},
									text : '<div style="background:transparent url(/skin/_modules/images/loading.gif) no-repeat center;height:'
											+ height + 'px;"></div>'
								});
					}
				},
				view : function(seq, id, title) {
					HIM.Window.open('/lib/choice/view.php', title, {
						choice_id : id,
						seq : seq
					}, {
						width : 500,
						height : 600
					});
				}
			}

			Ext.onReady(function() {
				choice.list('mymind');
			});
		</script>
		<!--게시물추출(mymind) 모듈 끝-->
		<!--ul>
				<li><a href="#"><p>[기사] 홈페이지 오픈 기념 이벤트 안내 입니다.</p><span>2015.11.24</span></a></li>
			</ul-->
	</div>
	<!--banner_notice-->
	<div class="banner_location blind">
		<a href="/about/location">
			<h2>오시는길</h2>
			<p class="location_address">
				경기도 성남시 분당구 대왕판교로 660(삼평동)<br />유스페이스1 B동 4층
			</p>
			<p class="location_tel">1544-3270</p>
		</a>
	</div>
	<!--banner_location-->

</div>
<!--content-->

=======
>>>>>>> fc8c9a724922b05f014da01f1ef8e95973a5930b
</div>

