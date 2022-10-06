<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 2021 시대인재 전국온라인모의고사 > 랜딩
' 모듈기능 : 시대인재 단과 > 2021 시대인재 전국온라인모의고사 > 랜딩
' 파 일 명 : default.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">

<!-- S : container -->
<div class="layout-container order-step2-container">
	<div class="page-loc float-area">
		<div class="fl">
			<a href="javascript:history.back();">&lt; Back</a>
		</div>
	</div>

	<div class="board-layout">
		<h2 class="page-tit border-tit">2021 시대인재 전국 온라인 모의고사</h2>

		<div class="txt-box">
			<img src="//placehold.it/840x300" alt=" ">
		</div>

		<!-- S : STEP -->
		<div class="step-box mt50">
			<h4 class="tit">STEP2. 과목확인</h4>
			<ul class="step">
				<li>1</li>
				<li class="on">2</li>
				<li>3</li>
			</ul>
		</div>
		<!--// E : STEP -->

		<div class="subject-area">
			<ul>
				<li class="on">
					<div class="img"><img src="//placehold.it/200x280?text=ga" alt="수학(가형)"></div>
					<div class="txt">수학(가형)</div>
				</li>
				<li>
					<div class="img"><img src="//placehold.it/200x280?text=ga" alt="탐구선택1"></div>
					<div class="txt">팀구1</div>
				</li>
				<li>
					<div class="img"><img src="//placehold.it/200x280?text=ga" alt="탐구선택2"></div>
					<div class="txt">팀구2</div>
				</li>
			</ul>
		</div>

		<div class="gray-box2 mt50"><b>선택 완료 후, 과목 변경이 불가합니다.</b><br>변경 사항이 없는지 정확하게 확인하세요.</div>

		<div class="step-btn float-area mt50">
			<a href="orderStep2.asp" class="btn btn-step-prev">이전</a>
			<a href="orderStep3.asp" class="btn btn-step-next">다음</a>
		</div>
	</div>
</div>
<!--// E : container -->

<script type="text/javascript">
$(function(){

});
</script>
<!--#include virtual="/renew2019/common/include/incFooter.asp"-->