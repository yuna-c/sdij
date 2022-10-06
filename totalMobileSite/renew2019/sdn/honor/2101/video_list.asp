<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/honor.css?ver=<%=now()%>">

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
	<h2 class="page-tit">시대인재N 3기 명예의 전당</h2>

	<div class="content-layout">

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

		<!-- S : 리스트 -->
		<div class="honor-list">
			<ul>
				<li>
					<a href="video_view.asp">
						<div class="data-img">
							<div class="video-area">
								<img src="//dfile.sdij.com/sdij/board/interview/정연재-1.png" alt="정연재 이미지"><!-- <img src="//via.placeholder.com/320x180/" alt="프로필 이미지"> -->
							</div>
						</div>

						<div class="data-txt">
							<div class="data-name">
								정연재 학생
								<span>국/수/탐/탐 전과목 만점자 <br>(영어 1등급 /한국사 1등급)</span>
								<span class="data-sum mb10">꾸준한 학습 패턴이 중요합니다!!!</span>
							</div>

							<div class="data-content"></div>
						</div>	
					</a>
				</li>
				
				<li>
					<a href="video_view.asp">
						<div class="data-img">
							<div class="video-area">
								<img src="//dfile.sdij.com/sdij/board/interview/이준영_1_2.png" alt="이준영 이미지">
							</div>
						</div>

						<div class="data-txt">
							<div class="data-name">
								이준영 학생
								<span>국/수/탐/탐 전과목 만점자<br> (영어 1등급 /한국사 2등급)</span>
								<span class="data-sum mb10"></span>
							</div>

							<div class="data-content"></div>
						</div>	
					</a>
				</li>
				
				<li>
					<a href="video_view.asp">
						<div class="data-img">
							<div class="video-area">
								<img src="//dfile.sdij.com/sdij/board/interview/김동연_1.png" alt="김동연 이미지">
							</div>
						</div>

						<div class="data-txt">
							<div class="data-name">
								김동연 학생
								<span>자연계 백분위 전국수석 <br> (국/수/탐/탐 백분위점수 합 400)</span>
								<span class="data-sum mb10"></span>
							</div>
						
							<div class="data-content"></div>
						</div>	
					</a>
				</li>
				
				<li>
					<a href="video_view.asp">
						<div class="data-img">
							<div class="video-area">
								<img src="//dfile.sdij.com/sdij/board/interview/전예준_1_2.png" alt="전예준 이미지">
							</div>
						</div>

						<div class="data-txt">
							<div class="data-name">
								전예준 학생
								<span>자연계 표준점수 전국수석<br> (국/수/탐/탐 표준점수 총합 413)</span>
								<span class="data-sum mb10"></span>
							</div>

							<div class="data-content"></div>
						</div>	
					</a>
				</li>
			</ul>
		</div>
		<!--// E : 리스트 -->

		<!-- S : 페이지 버튼 -->
		<div class="board-pager">
			<div class="board-pager"> 
				<a href="video_list.asp"><span class="ico ico-page-prev">이전 페이지</span></a>
				<div class="pager-num">
				<a href="video_list.asp" class="on">1</a>
				</div>
				<a href="video_list.asp"><span class="ico ico-page-next">다음 페이지</span></a>
				<a href="video_list.asp"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
			</div>
		</div>
		<!--// E : 페이지 버튼 -->

		<div class="info-box">
            시대인재 N재수종합반의 PC사이트에서<br>
            더 많은 입시정보를 제공합니다.<br>

            <a href="#" class="txt-link mt10">PC Ver.으로 보기</a>
        </div>
	</div>
</div>
<!--// E : 컨텐츠 영역 -->


<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->


<!-- S : 퀵배너 -->
<% if True then '퀵 사용 X %>
<style type="text/css">
    #wrap .btn-top{ display:none; }/* 퀵 배너 노출 시 top 배너 삭제 */
    .quick-banner{ width:70px; height:auto; display:flex; flex-direction:column-reverse; position:absolute; right:10px; bottom:10px; z-index:10; }
    .quick-banner a{ max-height:55px; padding:10px 5px; display:block; background-color:#fff; font-size:12px; word-break:break-all; color:#000; text-align:center; }

	.quick-banner >.quick-txt{ z-index:11; box-sizing:border-box; box-shadow:0 4px 10px 0 rgba(0, 0, 0, 0.17); }
	.quick-banner >.quick-txt > a{ padding:10px 0; border:1px solid #ddd; font-weight:700; text-align:center; } 	

	.quick-banner > .quick-menu{ display:none; border:1px solid #ddd; border-bottom:none; box-shadow:0 4px 10px 0 rgba(0, 0, 0, 0.17); animation:fadeIn 0.7s linear;  }
	.quick-banner > .quick-menu.quick-on{ display:block; }

	.quick-banner > .quick-menu > a{ border-bottom:1px solid #ddd; }
	.quick-banner > .quick-menu > a:last-child{ border-bottom:none; }
	.quick-banner > .quick-menu > a:hover, .quick-banner > .quick-menu > a.active{ background-color:#000; color:#fff; }

	@keyframes fadeIn{ from { opacity:0; } to{ opacity:1; } }
</style>

	
<div class="quick-banner">
	<div class="quick-txt">
		<a href="javascript:void(0);">명예의 전당<br>바로가기</a>
	</div>
	<div class="quick-menu">
		<a href="javascript:void(0);" onclick="alert('추후 공개 됩니다.');" >2021학년도 4기</a>
		<a href="video_list.asp" class="active">2020학년도 3기</a>
		<a href="javascript:void(0);" onclick="alert('추후 공개 됩니다.');">2019학년도 2기</a>
		<a href="javascript:void(0);" onclick="alert('추후 공개 됩니다.');">2018학년도 1기</a>
	</div>
</div>

<script>
    $(function(){
        $('.quick-banner').scrollToFixed({ bottom : 10, zIndex : 999 });
    });
	
	$('.quick-banner > .quick-txt').click(function(){
		$(this).siblings('.quick-menu').toggleClass('quick-on');
	});
</script>
<% end if %>
<!--// E : 퀵배너 -->


<script type="text/javascript">
// 퀵 배너
$('.quick-banner > .quick-menu > a').on('click',function(){
	var $banner = $(this).parent();
	var objIndex = $banner.children().index(this);

	$banner.children().removeClass('active').eq(objIndex).addClass('active');
});

</script>
