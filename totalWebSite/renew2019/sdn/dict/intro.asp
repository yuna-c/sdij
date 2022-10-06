<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/dict.css">


<!-- S : container -->
	<div id="container">
		<!-- S : 컨텐츠 영역 -->
		<div class="layout-container">
			<div class="content-layout">

                <!-- S : 메인 이미지 -->
				<div class="dist-main mb50">
                    <img src="//img.sdij.com//sd2019/pc/sdn/2021/05/dict1_main.jpg"alt="공간 부엉이 라이브러리 / 편의 공간 / 강의 공간 / 관리 공간">
                </div>
                <!--// E : 메인 이미지 -->

                <div class="board-tab relative">
					<!-- S : 퀵 배너 --> 
					<div class="quick-banner left">
						<a href="/sdn/apply/public/2021/default.asp"><img src="//img.sdij.com//sd2019/pc/banner/2021/01/banner_apply.png" alt="응시원서 접수 바로가기"></a>
					</div>
					
					<div class="quick-banner right">
						<a href="intro1.asp" class="active">공간</a>
						<a href="intro2.asp">컨텐츠</a>
						<a href="intro3.asp">매니지먼트</a>
						<a href="intro4.asp">시그니처</a>
					</div>
					<!--// E : 퀵 배너 --> 

                    <!-- S : 페이지 상단 -->
					<div class="page-header">
						<div class="tab-list1">
							<a href="javascript:void(0);" onclick="scrollAniOption('.page-scroll1', '50');">부엉이 라이브러리</a>
							<a href="javascript:void(0);" onclick="scrollAniOption('.page-scroll2', '50');">편의 공간</a>
							<a href="javascript:void(0);" onclick="scrollAniOption('.page-scroll3', '50');">강의 공간</a>
							<a href="javascript:void(0);" onclick="scrollAniOption('.page-scroll4', '50');">관리 공간</a>
						</div>
					</div>
                    <!--// E : 페이지 상단 -->

					<!-- S : 페이지 하단 -->
					<div class="page-content">
						<div class="dist-content page-scroll1">
							<p><img src="//img.sdij.com/sd2019/pc/sdn/2021/05/dict1_con1.jpg" alt="부엉이 라이브러리"></p>
						</div>
						<div class="dist-content page-scroll2">
							<p><img src="//img.sdij.com/sd2019/pc/sdn/2021/05/dict1_con2.jpg" alt="편의 공간"></p>
						</div>
						<div class="dist-content page-scroll3">
							<p><img src="//img.sdij.com/sd2019/pc/sdn/2021/05/dict1_con3.jpg" alt="강의 공간"></p>
						</div>
						<div class="dist-content page-scroll4">
							<p><img src="//img.sdij.com/sd2019/pc/sdn/2021/05/dict1_con4.jpg" alt="관리 공간"></p>
						</div>
					</div>
					<!--// E : 페이지 하단 -->
				</div>

				<div class="board-big mt50">
                    <a href="intro2.asp" class="btn btn-black">컨텐츠&nbsp;&nbsp;<span class="ico ico-right-w"></span></a>
					<a href="intro3.asp" class="btn btn-black">매니지먼트&nbsp;&nbsp;<span class="ico ico-right-w"></span></a>
					<a href="intro4.asp" class="btn btn-black">시그니처&nbsp;&nbsp;<span class="ico ico-right-w"></span></a>
                </div>
			</div>
		</div>
		<!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">
//20210520 scrolling ani
function scrollAni(pos){
    var posTop = $(pos).offset();
    $('html, body').animate({scrollTop : posTop.top}, 500);
}

function scrollAniOption(pos, height, obj){
    var tabIndex = $(obj).parent().children().index($(obj));
    var posTop = $(pos).eq(tabIndex).offset();
    var height = height;

    $('html, body').animate({scrollTop : posTop.top - height }, 500);
}


$(function(){
	// scroll tab fixed
	$('.page-header').scrollToFixed({
		marginTop : 0,
		limit : function(){
			var limit = $('#footer').offset().top - $(this).outerHeight(true) - 100;
			return limit;
		},
		zIndex : 10
	});
	
	// quick-banner fixed
	$('.quick-banner').scrollToFixed({
		marginTop : 50,
		limit : function(){
			var limit = $('#footer').offset().top - $(this).outerHeight(true) - 100;
			return limit;
		},
		zIndex : 10
	});

	// quick-banner selected
	$('.quick-banner > a').on('click',function(){
		var $banner = $(this).parent();
		var objIndex = $banner.children().index(this);

		$banner.children().removeClass('active').eq(objIndex).addClass('active');
	});
})

// tab selected
$(window).scroll(function(){
	var scrollPos = $(document).scrollTop();
	var $tabObj = $('.tab-list1 a').length;

	for( var i = 1; i < $tabObj + 1; i++ ){
		if( i < $tabObj ){
			if( scrollPos >= $('.page-scroll' + i).offset().top - 100 && $('.page-scroll' + (i + 1)).offset().top - 100 >= scrollPos ){
				$('.tab-list1').find('a').removeClass('selected').eq(i-1).addClass('selected');
			}
		}else if( i === $tabObj ){
			if( scrollPos >= $('.page-scroll' + i).offset().top - 100 ){
				$('.tab-list1').find('a').removeClass('selected').eq(i-1).addClass('selected');
			}
		}
	}
});
</script>
