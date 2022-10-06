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
<div class="layout-container order-step2-container">
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
				<li class="on">
					<div class="img"><img src="https://via.placeholder.com/200x280?text=ga" alt="수학(가형)"></div>
					<div class="txt">수학(가형)</div>
				</li>
				<li>
					<div class="img"></div>
					<div class="txt"></div>
				</li>
				<li>
					<div class="img"></div>
					<div class="txt"></div>
				</li>
			</ul>
		</div>

		<p class="txt-guide">*안내 텍스트가 있을 경우 기재.</p>
		<div class="flex-area form-toggle mt10">
			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=1" data-subject="생명과학Ⅰ">
				<span class="btn">생명과학Ⅰ</span>
			</label>

			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=2" data-subject="화학Ⅰ">
				<span class="btn">화학Ⅰ</span>
			</label>

			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=3" data-subject="지구과학Ⅰ">
				<span class="btn">지구과학Ⅰ</span>
			</label>

			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=4" data-subject="물리학Ⅰ">
				<span class="btn">물리학Ⅰ</span>
			</label>

			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=5" data-subject="생명과학Ⅱ">
				<span class="btn">생명과학Ⅱ</span>
			</label>

			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=6" data-subject="화학Ⅱ">
				<span class="btn">화학Ⅱ</span>
			</label>
			
			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=7" data-subject="지구과학Ⅱ">
				<span class="btn">지구과학Ⅱ</span>
			</label>

			<label class="toggle-checkbox">
				<input type="checkbox" name="step1-subject" onclick="fnSubjectSel(this);" data-images="https://via.placeholder.com/200x280?text=8" data-subject="물리학Ⅱ">
				<span class="btn">물리학Ⅱ</span>
			</label>
		</div>

		<div class="step-btn float-area mt50">
			<a href="orderStep1.asp" class="btn btn-step-prev">이전</a>
			<a href="orderStep3.asp" class="btn btn-step-next">다음</a>
		</div>
	</div>
</div>
<!--// E : container -->

<script type="text/javascript">
$(function(){

});

function fnSubjectSel(obj){
    var $this = $(obj);
    var $thisCheck = $this.parents('.form-toggle').find('input[type="checkbox"]:checked').length;
    

    if( $thisCheck > 2 ){
        alert('탐구영역은 최대 2게까지 선택 가능합니다.');
        
        $this.prop('checked', false);

    }else{
        $('.subject-area ul li:not(.on)').children().empty();

        $('.form-toggle').find('input:checked').each(function(idx){
            var $thisImg = $(this).attr('data-images');
            var $thisSubject = $(this).attr('data-subject');

            $('.subject-area ul li:not(.on)').eq(idx).find('.img').html('<img src="'+ $thisImg + '" alt="' + $thisSubject + '">');
            $('.subject-area ul li:not(.on)').eq(idx).find('.txt').text($thisSubject);
        });
    }
}
</script>
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->