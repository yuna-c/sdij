<%
'-----------------------------------------------------------------------
' 업 무 명 : 오르새 학원 > 강사진
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/orsaysdij/common/css/teacher.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/orsaysdij/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
		<!-- S : 컨텐츠 영역 -->
		<div class="layout-container teacher-container">
			<div class="page-loc float-area">
				<div class="fl">
					<a href="javascript:history.back();">&lt; Back</a>
				</div>
			</div>

			<!-- S : 선생님 --> 
			<div class="board-layout">
				<h2 class="page-tit border-tit">강사진</h2>

				<div class="float-area">
					<div class="img-area fl">
						<img src="//img.orsaysdij.com/common/pc/teacher/orsay.png" alt="오르새 선생님">	
					</div>
					<div class="txt-area fr">
						<h3 class="dep2-tit ff-serif">Orsay</h4>
						<h4 class="dep3-tit ff-serif">
							인생은 순간변화율이고,<br>
							기적은 지나간 시간의 흔적처럼 온다.<br>
							<br>
							오늘 하루,<br>
							최선을 다한 사람이 이긴겁니다.<br>
						</h4>
						
						<div class="list-tit">
							<dl>
								<dt>학력</dt>
								<dd>고려대 전기전자전파공학부 졸업</dd>
							</dl>
						</div>

						<div class="list-tit">
							<dl>
								<dt>약력</dt>
								<dd>現 분당 오르새학원 수학강사</dd>
								<dd>現 시대인재학원(대치,목동,대전) 수학강사</dd>
								<dd>現 시대인재 N 재수종합 수학강사</dd>
								<dd>現 메가스터디 온라인 수학강사</dd>
							</dl>
						</div>
						<br>
						<div class="list-tit">
							<dl>
								<dt class="blind"></dt>
								<dd class="color-gray">前 EBS 수학강사</dd>
								<dd class="color-gray">前 삼성 연구소 개발연구원</dd>
							</dl>
						</div>
						
					</div>
				</div>
			</div>
			<!--// E : 선생님 --> 
		</div>
		<!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<script type="text/javascript">
$(function(){});
</script>

<!-- #include virtual="/totalWebSite/orsaysdij/common/include/incFooter.asp" -->