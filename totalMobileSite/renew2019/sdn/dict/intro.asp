<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/dict.css">

<!-- S : 컨텐츠 영역 -->
<div class="content-layout floating">
	<!-- S : 메인 이미지 -->
	<div class="dist-main">
		<img src="//img.sdij.com/sd2019/mobile/sdn/2021/05/dict3_main.jpg" alt="매니지먼트 / 실전모의평가 / TA / 생활,학습담임 / R&D컨설팅">
	</div>
	<!--// E : 메인 이미지 -->

	<!-- S : 페이지 상단 -->
	<div class="board-tab">
		<div class="page-header">
			<div class="tab-list">
				<a href="javascript:void(0);" class="selected" onclick="scrollAniOption('.page-scroll1', '50');">실전모의평가</a>
				<a href="javascript:void(0);" onclick="scrollAniOption('.page-scroll2', '50');">TA</a>
				<a href="javascript:void(0);" onclick="scrollAniOption('.page-scroll3', '50');">생활/학습담임</a>
				<a href="javascript:void(0);" onclick="scrollAniOption('.page-scroll4', '50');">R&D컨설팅</a>
			</div>
		</div>
	</div>
	<!--// E : 페이지 상단 -->
</div>

<div class="layout-container">
	<div class="content-layout">

		<!-- S : 페이지 하단 -->
		<div class="page-content">
			<div class="dist-content page-scroll1">
				<p><img src="//img.sdij.com/sd2019/mobile/sdn/2021/05/dict3_con1.jpg" alt="실전모의평가"></p>

				<!-- S : pdf-area 
				<div class="pdf-area mt20">
					<iframe name="pdfviewer" id="pdfviewer" src="//dm.sdij.com/sdn/dict/magazine/web/viewer.html?file=//dm.sdij.com/sdn/dict/test1.pdf" style="width:100%; height:100%;"></iframe>
				</div>
				// E : pdf-area -->
			</div>
			<div class="dist-content page-scroll2">
				<p><img src="//img.sdij.com/sd2019/mobile/sdn/2021/05/dict3_con2.jpg" alt="TA"></p>
			</div>
			<div class="dist-content page-scroll3">
				<p><img src="//img.sdij.com/sd2019/mobile/sdn/2021/05/dict3_con3.jpg" alt="생활/학습담임"></p>
			</div>
			<div class="dist-content page-scroll4">
				<p><img src="//img.sdij.com/sd2019/mobile/sdn/2021/05/dict3_con4.jpg" alt="R&D컨설팅"></p>
			</div>			
		</div>
		<!--// E : 페이지 하단 -->
	
		<!-- S : 하단 버튼 -->
		<div class="board-big mt50">
			<a href="intro1.asp" class="btn btn-black mr5">공간&nbsp;&nbsp;<span class="ico ico-right-w"></span></a>
			<a href="intro2.asp" class="btn btn-black">컨텐츠&nbsp;&nbsp;<span class="ico ico-right-w"></span></a>
			<a href="intro4.asp" class="btn btn-black">시그니처&nbsp;&nbsp;<span class="ico ico-right-w"></span></a>
		</div>
		<!--// E : 하단 버튼 -->
	</div>
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : 퀵 배너 -->
<div class="quick-banner left">
	<a href="/sdn/apply/qual_list.asp">
		<span>모집요강</span>
	</a>
</div>

<div class="quick-banner right">
	<a href="intro1.asp">공간</a>
	<a href="intro2.asp">컨텐츠</a>
	<a href="intro3.asp" class="active">매니지먼트</a>
	<a href="intro4.asp">시그니처</a>
</div>
<!--// E : 퀵 배너 --> 


<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->

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
		// quick-banner
		$('.page-header').scrollToFixed({
			marginTop : 0,
		 });
	});
	
	// 스크롤 시 tab selected
	$(window).scroll(function(){
		var scrollPos = $(document).scrollTop();
		var $tabObj = $('.tab-list a').length;
	
		for( var i = 1; i < $tabObj + 1; i++ ){
			if( i < $tabObj ){
				if( scrollPos >= $('.page-scroll' + i).offset().top - 200 && $('.page-scroll' + (i + 1)).offset().top - 200 >= scrollPos ){
					$('.tab-list').find('a').removeClass('selected').eq(i-1).addClass('selected');
				}
			}else if( i === $tabObj ){
				if( scrollPos >= $('.page-scroll' + i).offset().top - 200 ){
					$('.tab-list').find('a').removeClass('selected').eq(i-1).addClass('selected');
				}
			}
		}
	});
    
</script>