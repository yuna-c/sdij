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

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default2.css?ver=<%=now()%>">




<!-- S : container -->
<div class="layout-container">
	<div class="content-layout">
		 
		<div class="board-layout">
			<h2 class="page-tit border-tit">
				2021 시대인재<br> 
				전국 온라인 모의고사
			</h2>

			<div class="txt-box">
				<img src="//img.sdij.com/sd2019/mobile/aca/event/2010/order_img.jpg" alt=" ">
			</div>

			<!-- S : STEP -->
			<div class="step-box mt50">
				<h4 class="tit">STEP1. 과목신청</h4>
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
						<div class="img"><img src="https://via.placeholder.com/200x280?text=ga" alt="수학(가형)"></div>
						<div class="txt">수학(가형)</div>
					</li>
					<li>
						<div class="img"><img src="https://via.placeholder.com/200x280?text=tam" alt="탐구선택1"></div>
						<div class="txt">탐구1</div>
					</li>
					<li>
						<div class="img"><img src="https://via.placeholder.com/200x280?text=tam" alt="탐구선택2"></div>
						<div class="txt">탐구2</div>
					</li>
				</ul>
			</div>

			<p class="txt-guide mb10">*안내 텍스트가 있을 경우 기재.</p>

			<div class="gray-box2"><b>선택 완료 후, 과목 변경이 불가합니다.</b><br>변경 사항이 없는지 정확하게 확인하세요.</div>

			<div class="step-btn float-area mt30">
				<a href="orderStep2_1.asp" class="btn btn-step-prev">이전</a>
                <a href="javascript:void(0);" class="btn btn-step-next next_submit">다음</a>
			</div>
		</div>

	</div>
</div>
<!--// E : container -->

<script type="text/javascript">
$(function(){

});
</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->