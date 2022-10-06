<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 기본 레이아웃
' 모듈기능 :
' 파 일 명 :
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

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/support.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 콘텐츠 영역 -->
<div class="layout-container pb0">
    <!-- S : 레이아웃 -->
    <div class="content-layout">

        <!--S : board-view : 게시글 뷰 -->
        <h2 class="page-tit border-tit mb20">시대인재 대학생 <br>서포터즈 모집</h2>
        <div class="board-view">

            <p class="mb30">
                시대인재는 학생들의 믿음이 있었던 덕분 지금까지 성장할 수 있었습니다.<br>
                저희는 그동안 학생들에게 받아온 신뢰에 어떻게 답할지 오랫동안 고민하였고,
            </p>
            <p class="mb30">
            <span style="letter-spacing:-0.85px;">졸업후에도 여러분이 저희와 함께해온 경험을 나누며<span><br>
                시대인재의 미래를 함께 그려나갈<br>
                <strong>시대인재 대학생 서포터즈</strong>를 모집하고자 합니다.
            </p>
            <p class="mb30">
                누구보다 시대인재를 잘 아는 여러분과 같이<br>
                시대인재는 그간의 경험과 고민을 나누고<br>
                여러분의 자유로운 의견을 받아<br>
                내일의 시대인재를 향해 함께 나아가고자 합니다.
            </p>
            <p class="mb30">
                시대인재 대학생 서포터즈가 여러분들의 잠재력을 이끌어낼 여정이자<br>
                개개인이 한층 더 성장할 수 있는 기회가 되기를 바랍니다.
            </p>
            <p class="mb30">
                시대인재의 미래에 함께 하고 싶으신 여러분들의<br>
                많은 지원 부탁드립니다.<br>
            </p>
            <ul class="mb30 list-dotted">
                <li>1차 모집 : 11/14 ~ 11/20</li>
                <li>2차 모집 : 11/27 ~ 추후공지</li>
            </ul>
            <div class="txt-center board-btn">
                <a href="/totalMobileSite/renew2019/sdn/support/2019/apply_ok.asp" class="btn btn-darkgray btn-lg">지원 내역 확인</a>
                <% if true then '대상자 일 경우 페이지 이동' %>
                <a href="/totalMobileSite/renew2019/sdn/support/2019/certify.asp" class="btn btn-black btn-lg">지원 하기</a>
                <% else '대상자가 아닐 경우 alert %>
                <button class="btn btn-black btn-lg" onclick="fnOpenLayer('dim-support-alert1')">지원 하기</button>
                <% end if %>
            </div>

            <!--// E : board-view : 게시글 뷰 -->
        </div>

    </div>
    <!--// E: 레이아웃 -->
</div>
<!--// E : 콘텐츠 영역 -->

<!-- S : dim-layer -->
<div class="dim-layer">
    <div class="dim-bg"></div>

    <!-- S : 대상자 아닐때 alert -->
    <div class="dim-content dim-alert dim-tit-alert dim-support-alert1">
        <h4 class="dim-tit">안내</h4>

        <div class="dim-txt">귀하는 2019년 시대인재N 재수종합 재원생이 아니므로 지원할 수 없습니다.<br> 만약 올해 재수종합 재원생임에도 이 메시지를 확인했을 경우 question@sdij.com으로 문의해주세요.</div>

        <div class="dim-btn"><button onclick="fnCloseAlert();return false;" class="btn btn-black btn-confirm">확인</button></div>
    </div>
    <!--// E : 대상자 아닐때 alert -->
</div>
<!--// E : dim-layer -->

<script type="text/javascript">

</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->
