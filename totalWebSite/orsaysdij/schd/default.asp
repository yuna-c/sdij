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
<!--#include virtual="/totalWebSite/orsaysdij/common/include/incMeta.asp"--> 
<!--#include virtual="/totalWebSite/orsaysdij/common/include/incHeader.asp"-->	

	<!-- S : container -->
	<div id="container">
		<!-- S : 컨텐츠 영역 -->
		<div class="layout-container schd-container">
			<div class="page-loc float-area">
				<div class="fl">
					<a href="javascript:history.back();">&lt; Back</a>
				</div>
			</div>

			<!-- S : 시간표 --> 
			<div class="board-layout">
				<h2 class="page-tit">오르새 학원 시간표</h2>

				<div class="schd-box float-area mb30">
					<div class="fl">
						<h3>전화문의</h3>
					
						<dl class="list-phone">
							<dt class="blind"></dt>
							<dd>031-717-5123</dd>
						</dl>
					</div>

					<div class="fr">
						<h3>예약/상담
							<em>
								<b>(문자전용)</b>
							</em>
						</h3>
						<dl class="list-phone">
							<dt class="blind"></dt>
							<dd>010-9636-2372</dd>
						</dl>
					</div>
				</div>	
				
				<div class="board-tab mb30">
					<div class="tab-new1">
						<ul>
							<li class="selected"><a href="javascript:void(0);">수학</a></li>
							<li><a href="javascript:void(0);">영어</a></li>
							<li><a href="javascript:void(0);">국어</a></li>
						</ul>
					</div>

					<div class="tab-content tab-on">
						<div class="content-box">
							<img src="//img.orsaysdij.com/common/pc/schd/2022schd.jpg" alt="2022 수학 수능만점을 위한 오르새 현강 시간표">
						</div>
					</div>
					<div class="tab-content">
						<div class="content-box">
							<img src="//img.orsaysdij.com/common/pc/schd/2022schd.jpg" alt="2022 영어 수능만점을 위한 오르새 현강 시간표">
						</div>
					</div>
					<div class="tab-content">
						<div class="content-box">
							<img src="//img.orsaysdij.com/common/pc/schd/2022schd.jpg" alt="2022 국어 수능만점을 위한 오르새 현강 시간표">
						</div>
					</div>
				</div>
			</div>
			<!--// E : 시간표 --> 
		</div>
		<!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<script type="text/javascript">
$(function(){});
</script>

<!-- #include virtual="/totalWebSite/orsaysdij/common/include/incFooter.asp" -->