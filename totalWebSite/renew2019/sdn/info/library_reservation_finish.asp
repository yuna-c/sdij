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
        <div class="step-list m_b45">
            <div class="pass"><em>1</em>본인인증</div>
            <div class="pass"><em>2</em>좌석선택</div>
            <div class="on"><em>3</em>완료</div>
        </div>
        <div class="finish-txt txt-center">
            <p class="b">
                부엉이 라이브러리 좌석 신청이 완료되었습니다.
            </p>
            <div class="info-t">
                이지현 010-1997-0214 <br/>
                <p class="b">태성 5층 라이브러리 <span>##</span> 좌석</p>
            </div>
            <ul>
                <li>
                    - 좌석 신청 후 변경은 불가합니다. 좌석 변경을 원하시는 경우 취소 후 재신청 하시기 바랍니다.
                </li>
                <li>
                    - 예약내역 조회 및 취소는
                    <a href="javascript:void(0);" onclick="db_pop('pop_01'); return false;">예약내역 조회</a> 에서 가능합니다.
                </li>
            </ul>
        </div>
    </div>

</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">
    var db_pop = function(url){
        var popWidth =  "500"
        var popHeight =  "600"
        var winHeight = document.body.clientHeight; // 현재창의 높이
        var winWidth = document.body.clientWidth;   // 현재창의 너비
        var winX = window.screenLeft;   // 현재창의 x좌표
        var winY = window.screenTop;    // 현재창의 y좌표

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"",tOpt);

    };

</script>
