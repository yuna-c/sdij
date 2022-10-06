<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">
        부엉이 라이브러리 좌석 예약 서비스
    </h2>

    <div class="board-layout">
        <div class="step-list">
            <div class="pass"><em>1</em>본인인증</div>
            <div class="on"><em>2</em>좌석선택</div>
            <div><em>3</em>완료</div>
        </div>
        <p class="mb30">
            - 좌석배치도를 확인 후 원하는 좌석의 번호를 선택하세요. <br/>
            - 선택이 불가한 자리는 이미 예약이 된 좌석입니다. <br/>
            - 1인당 1개의 자리만 예약 가능합니다.
        </p>
        <div class="current-num mb50">
            <span class="end">예약 좌석수 67</span>
            <span class="rest">잔여 좌석수 137</span>
            <a href="javascript:void(0);" class="btn btn-mid btn-black">좌석배치도 확인</a>
        </div>
        <form class="library_form mb50">
            <fieldset>
                <div class="library_list1">
                    <h3>라이브러리</h3>
                    <div class="library_btn1">
                        <button type="button" class="select">태성 5층</button>
                        <button type="button" disabled="disabled">태성 4층</button>
                        <button type="button" disabled="disabled">카이로스 4층</button>
                        <button type="button" disabled="disabled">카이로스 5층 (마감)</button>
                    </div>
                </div>
                <div class="library_list2">
                    <h3>좌석번호 선택</h3>
                    <div class="library_btn2">
                        <% For i=1 To 300 %>
                           <button type="button"><%= i %></button>
                        <% Next %>
                    </div>
            </fieldset>
        </form>
         <div class="board-btn txt-center">
            <a href="javascript:void(0);" class="btn btn-more-lg btn-black">확인</a>
        </div>
    </div>

</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script>
    $('.library_form button').click(function(){
        if($(this).parents().hasClass('library_list1') == true){
            $('*[class^="consult_btn"] button').siblings().removeClass('select');
        }
        $(this).siblings().removeClass('select');
        $(this).addClass('select');
    });
</script>