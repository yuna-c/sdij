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
'
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">

<!-- S : container -->
<div class="layout-container order-step1-container">
	<div class="page-loc float-area">
		<div class="fl">
			<a href="javascript:history.back();">&lt; Back</a>
		</div>
	</div>

	<div class="board-layout">
		<h2 class="page-tit border-tit">2021 시대인재 전국 온라인 모의고사</h2>

		<div class="txt-box">
			<img src="https://via.placeholder.com/840x300" alt=" ">
		</div>

		<!-- S : STEP -->
		<div class="step-box mt50">
			<h4 class="tit">STEP1. 과목신청</h4>
			<ul class="step">
				<li class="on">1</li>
				<li>2</li>
				<li>3</li>
			</ul>
		</div>
		<!--// E : STEP -->

		<div class="subject-area">
			<ul>
				<li>
					<div class="img"></div>
					<div class="txt"></div>
				</li>
			</ul>
		</div>

		<p class="txt-guide">*본인의 계열에 해당하는 과목유형을 선택해주세요.</p>
		<div class="flex-area form-toggle mt20">
			<label class="toggle-radio">
				<input type="radio" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com//200x280?text=ga" data-subject="수학(가형)">
				<span class="btn">수학(가형)</span>
			</label>

			<label class="toggle-radio">
				<input type="radio" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com//200x280?text=na" data-subject="수학(나형)">
				<span class="btn">수학(나형)</span>
			</label>
		</div>

		<div class="step-btn float-area mt50">
			<a href="orderStep2.asp" class="btn btn-step-next">다음</a>
		</div>
	</div>
</div>
<!--// E : container -->

<script type="text/javascript">
$(function(){

});

function fnSubjectSel(obj){
    var $this = $(obj);

    var $thisImg = $this.attr('data-images');
    var $thisSubject = $this.attr('data-subject');

    $('.subject-area ul li').addClass('on');
    $('.subject-area ul li').find('.img').html('<img src="'+ $thisImg + '" alt="' + $thisSubject + '">');
    $('.subject-area ul li').find('.txt').text($thisSubject);
}
</script>
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->