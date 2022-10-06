<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->
 <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <div class="board-layout">
        <h2 class="page-tit">학원시설</h2>

        <ul class="layout-img set-01">
            <li>
                <a href="javascript: void(0);" onclick="showPop('0','imgPop')">
                    <div class="layer">
                        <span>N 재수종합</span>
                    </div>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-01.jpg" alt="학원시설이미지">
                </a>
            </li>
            <li>
                <ul>
                    <li>
                        <a href="javascript: void(0);" onclick="showPop('1','imgPop')">
                            <div class="layer">
                                <span>N 재수종합</span>
                            </div>
                            <img src="http://img.sdij.com/sd2019/pc/bbs/facility-02.jpg" alt="학원시설이미지">
                        </a>
                    </li>
                    <li>
                        <a href="javascript: void(0);" onclick="showPop('2','imgPop')">
                            <div class="layer">
                                <span>N 재수종합</span>
                            </div>
                            <img src="http://img.sdij.com/sd2019/pc/bbs/facility-03.jpg" alt="학원시설이미지">
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <ul class="layout-img set-02">
            <li>
                <a href="javascript: void(0);" onclick="showPop('3','imgPop')">
                    <div class="layer">
                        <span>N 재수종합</span>
                    </div>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-04.jpg" alt="학원시설이미지">
                </a>
            </li>
            <li>
                <a href="javascript: void(0);" onclick="showPop('4','imgPop')">
                    <div class="layer">
                        <span>N 재수종합 식당</span>
                    </div>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-05.jpg" alt="학원시설이미지">
                </a>
            </li>
        </ul>
        <ul class="layout-img set-03">
            <li>
                <a href="javascript: void(0);" onclick="showPop('5','imgPop')">
                    <div class="layer">
                        <span>N 재수종합</span>
                    </div>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-06.jpg" alt="학원시설이미지">
                </a>
            </li>
            <li>
                <a href="javascript: void(0);" onclick="showPop('6','imgPop')">
                    <div class="layer">
                        <span>N 재수종합</span>
                    </div>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-07.jpg" alt="학원시설이미지">
                </a>
            </li>
        </ul>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<!-- 모집요강 팝업S -->
<div data-popup="type1" class="imgPop">
   <button type="button" class="close">닫기</button>
    <div class="pop_wrap">
        <div data-box="pop_content">
            <div class="pop_box">
                <div class="img">
                    <span>N 재수종합</span>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-orig-01.jpg" alt="학원시설이미지">
                </div>
                <div class="img">
                    <span>N 재수종합 강의실</span>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-orig-02.jpg" alt="학원시설이미지">
                </div>
                <div class="img">
                    <span>N 재수종합 식당</span>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-orig-03.jpg" alt="학원시설이미지">
                </div>
                <div class="img">
                    <span>N 재수종합</span>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-orig-04.jpg" alt="학원시설이미지">
                </div>
                <div class="img">
                    <span>N 재수종합</span>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-orig-05.jpg" alt="학원시설이미지">
                </div>
                <div class="img">
                    <span>N 재수종합</span>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-orig-06.jpg" alt="학원시설이미지">
                </div>
                <div class="img">
                 <span>N 재수종합 휴게실</span>
                    <img src="http://img.sdij.com/sd2019/pc/bbs/facility-orig-07.jpg" alt="학원시설이미지">
                </div>
            </div>
        </div>
    </div>
    <div class="btn-group">
        <button class="prev-btn" disabled="disabled">이전</button>
        <button class="next-btn">다음</button>
    </div>
</div>
<!-- 모집요강 팝업E -->

<script type="text/javascript">
$(document).ready(function(){

    $('.next-btn').click(function(){
        var num = $('.pop_box .img').length;
        var index=$('.pop_box .on').index();
        var next = index +1;

        $('.prev-btn').removeAttr('disabled');
        if( next == num -1 ){
          $('.next-btn').attr('disabled','disabled');
          $('.pop_box .img').removeClass('on');
          $('.pop_box .img').eq(next).addClass('on');
        }else{
          $('.pop_box .img').removeClass('on');
          $('.pop_box .img').eq(next).addClass('on');
        }
      });

      $('.prev-btn').click(function(){
        var num = $('.pop_box .img').length;
        var index=$('.pop_box .on').index();
        var prev = index -1;

        $('.next-btn').removeAttr('disabled');

        if( prev == 0){
          $('.prev-btn').attr('disabled','disabled');
          $('.pop_box .img').removeClass('on');
          $('.pop_box .img').eq(prev).addClass('on');
        } else{
          $('.pop_box .img').removeClass('on');
          $('.pop_box .img').eq(prev).addClass('on');
        }
      });

      $('*[data-popup="type1"] .close').click(function(){
        $(this).parents('*[data-popup="type1"]').hide();
        $('body').removeClass('on');
      });
});
</script>
<script>
    function showPop(idx,name){
        $('.pop_box .img').eq(idx).addClass('on').siblings('.img').removeClass('on');
        $('.' + name).show();
    }
</script>