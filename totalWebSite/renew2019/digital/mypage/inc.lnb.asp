<style type="text/css">
    /* lnb */
    .lnb{ margin-bottom:1rem; border-top:1px dotted #222; border-bottom:1px dotted #222; }
    .lnb .lnb-menu > li{ margin:0 0.666666667rem; float:left; }
    .lnb .lnb-menu > li:first-child{ margin-left:0; }
    .lnb .lnb-menu > li > a{ padding:0.333333333rem 0; display:block; font-weight:700; letter-spacing:-0.016666667rem; }
    .lnb .lnb-menu > li:hover > a, .lnb .lnb-menu > li.selected > a{ margin-bottom:-1px; border-bottom:4px solid #000; }

    /* mobile */
    @media all and (max-width:539px) and (orientation:portrait){
        .mobile-wrap{ padding-bottom:2.33333333rem; }
        .lnb{ margin-bottom:0; position:absolute; left:0; right:0; bottom:0; background-color:#fff; border-top:1px solid #c7c7c7; border-bottom:none; z-index:99; }
        .lnb .lnb-menu{ width:100%; display:table; table-layout:fixed; }
        .lnb .lnb-menu:after{ display:none; }
        .lnb .lnb-menu > li{ display:table-cell; float:none; text-align:center; }
        .lnb .lnb-menu > li > a{ height:2.33333333rem; display:flex; font-size:0.533333333rem; justify-content:center; align-items:center; }
    }
    @media all and (max-width:959px) and (orientation:landscape){
        .mobile-wrap{ padding-bottom:2.33333333rem; }
        .lnb{ margin-bottom:0; position:absolute; left:0; right:0; bottom:0; background-color:#fff; border-top:1px solid #c7c7c7; border-bottom:none; z-index:99; }
        .lnb .lnb-menu{ width:100%; display:table; table-layout:fixed; }
        .lnb .lnb-menu:after{ display:none; }
        .lnb .lnb-menu > li{ display:table-cell; float:none; text-align:center; vertical-align:middle; }
        .lnb .lnb-menu > li > a{ height:2.33333333rem; display:flex; font-size:0.533333333rem; justify-content:center; align-items:center; }
    }
</style>

<div class="lnb">
    <ul class="lnb-menu float-area">
        <li class="selected"><a href="/totalWebSite/renew2019/digital/mypage/index.asp">마이홈</a></li><!-- S : 해당 메뉴 진입 시 selected -->
        <li><a href="/totalWebSite/renew2019/digital/lecture/list.asp">나의강좌</a></li>
        <li><a href="/totalWebSite/renew2019/digital/board/notice_list.asp">공지사항</a></li>
        <li><a href="/totalWebSite/renew2019/digital/board/qna_list.asp">학습질문답변</a></li>
    </ul>
</div>

<script type="text/javascript">
    $(function(){
        // gnb
        if( $('.mobile-wrap .lnb').length > 0 ){
            $('.mobile-wrap .lnb').scrollToFixed({
                bottom: 0,
                zIndex: 999
            });
        };
    });
</script>