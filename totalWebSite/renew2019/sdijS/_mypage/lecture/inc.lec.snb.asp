<!-- S : SNB -->
<div class="snb">
    <ul>
        <li>
            <a href="#">개요</a>
        </li>
        <li>
            <a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp" class="snb-depth1 selected"><span class="ff-serif">Ⅰ</span>.단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원</a><!-- sub메뉴가 존재 할 경우 class="snb-depth1" 추가 / 진입 페이지 메뉴 class="selected" 추가 -->

            <div class="snb-depth2 on"><!-- 메뉴 펼칠 경우 class="on" 추가 -->
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp" class="selected">1강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a><!-- 선택된 메뉴 selected -->
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">2강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">3강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
            </div>
        </li>
        <li>
            <a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp" class="snb-depth1"><span class="ff-serif">Ⅱ</span>.단원</a>

            <div class="snb-depth2">
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">1강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">2강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">3강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
            </div>
        </li>
        <li>
            <a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp" class="snb-depth1"><span class="ff-serif">Ⅲ</span>.단원</a>

            <div class="snb-depth2">
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">1강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">2강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">3강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
            </div>
        </li>
    </ul>
</div>

<script type="text/javascript">
    $(function(){
        // snb button
        $('.snb-depth1').on('click', function(){
            if( $(this).hasClass('selected') === true ){
                $(this).next().slideUp(500);
                $(this).removeClass('selected');
            }else{
                $(this).parents('.snb').find('.snb-depth1').removeClass('selected');
                $(this).parents('.snb').find('.snb-depth2').slideUp(500);
                $(this).next('.snb-depth2').slideDown(500);
                $(this).addClass('selected');
            }
        });
    });
</script>
<!--// E : SNB -->