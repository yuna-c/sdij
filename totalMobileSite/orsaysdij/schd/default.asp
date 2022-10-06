<%
'-----------------------------------------------------------------------
' 업 무 명 : 오르새 학원 > 시간표
' 모듈기능 : 
' 파 일 명 : default.asp
' 작성일자 :
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------

'------------------------------
' page navi code
'------------------------------

'------------------------------
' VARS
'------------------------------

'------------------------------
' QUERY
'------------------------------

'------------------------------
' ETC
'------------------------------

%>
<!--#include virtual="/totalMobileSite/orsaysdij/common/include/incMeta.asp"--> 
<!--#include virtual="/totalMobileSite/orsaysdij/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container schd-container">

	<div class="content-layout">
		<h2 class="page-tit border-none">오르새 학원 시간표</h2>
		
		<!-- S : 시간표 -->
		<div class="schd-box mb30">
			<!-- S : 전화문의/ 문자문의 -->
			<div>
				<ul class="list-phone">
					<li>
						<span class="tit">전화문의</span><span class="txt">031-717-5123</span>
					</li>
				</ul>
			</div>                  
			<div>
				<ul class="list-phone">
					<li>
						<span class="tit">예약/상담<em><b>(문자전용)</b></em></span><span class="txt">010-9636-2372</span>
					</li>
				</ul>
			</div>
			<!--// E : 전화문의/ 문자문의 -->
		</div>

		<div class="board-tab">
			<div class="tab-new1 col3">
				<ul>
					<li class="selected"><a href="javascript:void(0)">수학</a></li>
					<li><a href="javascript:void(0)">영어</a></li>
					<li><a href="javascript:void(0)">국어</a></li>
				</ul>
			</div>

			<div class="tab-content tab-on">
				<div class="txt-box">
					<img src="//img.orsaysdij.com/common/mo/schd/2022schd.jpg" alt="2022 수학 수능만점을 위한 오르새 현강시간표">
				</div>
			</div> 
			<div class="tab-content">
				<div class="txt-box">
					<img src="//img.orsaysdij.com/common/mo/schd/2022schd.jpg" alt="2022 영어 수능만점을 위한 오르새 현강시간표">
				</div>
			</div>
			<div class="tab-content">
				<div class="txt-box">
					<img src="//img.orsaysdij.com/common/mo/schd/2022schd.jpg" alt="2022 국어 수능만점을 위한 오르새 현강시간표">
				</div>
			</div>
		</div>
		<!--// E : 시간표 -->
	</div>
</div>
<!--// E : 컨텐츠 영역 -->

<script type="text/javascript">
$(function(){});
</script>

<!-- #include virtual="/totalMobileSite/orsaysdij/common/include/incFooter.asp" -->