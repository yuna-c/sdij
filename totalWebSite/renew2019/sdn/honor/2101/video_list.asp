<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->


<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/honor.css?ver=<%=now()%>">
<style type="text/css">
    .quick-banner{ width:120px; margin-left:470px; position:absolute; top:0; left:50%; border:1px solid #ddd; z-index:10; }
	.quick-banner a{ max-height:62px; padding:20px 0; display:block; background-color:#fff; border-bottom:1px solid #ddd; font-size:14px; text-align:center; }
	.quick-banner > a:hover, .quick-banner > a.active{ background-color:#000; border-color:#000; font-weight:500; color:#fff; }
	.quick-banner > a:last-child{ border-bottom:none; }
    .quick-banner > .quick-txt > a{ padding:10px 0; font-weight:700; cursor:default; } 
</style>

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
	<div class="page-loc float-area">
		<div class="fl">
			<a href="javascript:history.back();">&lt; Back</a>
		</div>
	</div>
	
	<h2 class="page-tit">시대인재N 3기 명예의 전당</h2>

	<div class="board-layout relative">

		<!-- S : 명예의 전당 퀵 배너 -->
		<div class="quick-banner">
			<div class="quick-txt">
				<a href="javascript:void(0);">명예의 전당<br>바로가기</a>
			</div>
			<a href="javascript:void(0);" onclick="alert('추후 공개 됩니다.');" >2021학년도 4기</a>
			<a href="video_list.asp" class="active">2020학년도 3기</a>
			<a href="javascript:void(0);" onclick="alert('추후 공개 됩니다.');">2019학년도 2기</a>
			<a href="javascript:void(0);" onclick="alert('추후 공개 됩니다.');">2018학년도 1기</a>
		</div>
		<!--// E : 명예의 전당 퀵 배너 -->

		<!-- S : 탭 -->
		<div class="board-tab">
			<div class="tab-list mb20">
				<a href="javascript:void(0);" class="selected" onclick="location.href='video_list.asp'">영상인터뷰</a>
				<a href="javascript:void(0);" onclick="location.href='review_list.asp'">학습수기</a>
			</div>

			<ul class="tab-honor float-area">
				<li class="selected"><a href="javascript:void(0);">2020학년도 만점자 / 수석</a></li>
				<li><a href="javascript:void(0);">2021학년도 만점자 /수석</a></li>
				<li><a href="javascript:void(0);">서울대 의대</a></li>
				<li><a href="javascript:void(0);">연세대 의대</a></li>
				<li><a href="javascript:void(0);">메이저(가/성/울/고) 의대</a></li>
				<li><a href="javascript:void(0);">성적향상 우수자</a></li>
				<li><a href="javascript:void(0);">서울대 인문</a></li>
			</ul>
		</div>
		<!--// E : 탭 -->

		<!-- S : 영상 영역 -->
		<div class="video-area mb50">
			<iframe width="100%" height="100%" src="https://www.youtube.com/embed/v7AcmMdwqDw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
		</div>
		<!--// E : 영상 영역 -->
		
		<!-- S : 리스트 -->
		<div class="honor-list">
			<ul>
				<li>
					<a href="video_view.asp">
						<div class="data-img"><img src="https://dfile.sdij.com/sdij/board/interview/정연재-1.png" alt="정연재 이미지"></div>
						<div class="data-name">정연재 학생</div>
						<div class="data-content">국/수/탐/탐 전과목 만점자 </br>(영어 1등급 /한국사 1등급)<br>
							<span class="data-txt">꾸준한 학습 패턴이 중요합니다!!!</span>
						</div>
					</a>
				</li>
				<li>
					<a href="video_view.asp">
						<div class="data-img"><img src="https://dfile.sdij.com/sdij/board/interview/이준영_1_2.png" alt="이준영 이미지"></div>
						<div class="data-name">이준영 학생</div>
						<div class="data-content">
							국/수/탐/탐 전과목 만점자</br>
							(영어 1등급 /한국사 2등급)<br>
						</div>
					</a>
				</li>
				<li>
					<a href="video_view.asp">
						<div class="data-img"><img src="https://dfile.sdij.com/sdij/board/interview/김동연_1.png" alt="김동연 이미지"></div>
						<div class="data-name">김동연 학생</div>
						<div class="data-content">
							자연계 백분위 전국수석 </br> 
							(국/수/탐/탐 백분위점수 합 400)<br>
						</div>
					</a>
				</li>
				<li>
					<a href="video_view.asp">
						<div class="data-img"><img src="https://dfile.sdij.com/sdij/board/interview/전예준_1_2.png" alt="전예준 이미지"></div>
						<div class="data-name">전예준 학생</div>
						<div class="data-content">
							자연계 표준점수 전국수석</br> 
							(국/수/탐/탐 표준점수 총합 413)<br>
						</div>
					</a>
				</li>
			</ul>
		</div>
		<!--// E : 리스트 -->

		<!-- S : 페이지 버튼 -->
		<div class="board-pager">
			<div class="board-pager"> 
			<a href="javascript:void(0);"><span class="ico ico-page-prev">이전</span></a>
			<div class="pager-num">
				<a href="javascript:void(0);" class="on">1</a>
			</div>
				<a href="javascript:void(0);">
					<span class="ico ico-page-next">다음 페이지</span>
				</a>
				<a href="video_list.asp">
					<span class="ico ico-page-next2">다음 10개 페이지</span>
				</a>
			</div>
		</div>
		<!--// E : 페이지 버튼 -->
	</div>
</div>
<!--// E : 컨텐츠 영역 -->


<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">
// 퀵 배너 
$(function(){
	$('.quick-banner').scrollToFixed({
		marginTop : 50,
		limit : function(){
			var limit = $('#footer').offset().top - $(this).outerHeight(true) - 20;
			return limit;
		},
		zIndex : 10
	});
});

$('.quick-banner > a').on('click',function(){
	var $banner = $(this).parent();
	var objIndex = $banner.children().index(this);

	$banner.children().removeClass('active').eq(objIndex).addClass('active');
});

var IfSend = function(page) {
    $("input[name='page']").val(page);

    document.dataForm.action = "./review_list.asp";
    document.dataForm.submit();
};

</script>
