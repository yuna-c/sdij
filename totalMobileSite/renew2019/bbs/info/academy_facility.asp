<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">학원시설</h2>

    <div class="content-layout">
        <ul class="academy-list">
            <li class="fir">
                <a href="javascript: void(0);" onclick="showPop('0','imgPop')">
                    1
                </a>
            </li>
            <li class="sec">
                <a href="javascript: void(0);" onclick="showPop('1','imgPop')">
                    2
                </a>
            </li>
            <li class="thir">
                <a href="javascript: void(0);" onclick="showPop('2','imgPop')">
                    3
                </a>
            </li>
            <li class="four">
                <a href="javascript: void(0);" onclick="showPop('3','imgPop')">
                    4
                </a>
            </li>
            <li class="five">
                <a href="javascript: void(0);" onclick="showPop('4','imgPop')">
                    5
                </a>
            </li>
            <li class="six">
                <a href="javascript: void(0);" onclick="showPop('5','imgPop')">
                    6
                </a>
            </li>
            <li class="sev">
                <a href="javascript: void(0);" onclick="showPop('6','imgPop')">
                    7
                </a>
            </li>
        </ul>
    </div>
</div>
<div id="imgPop" data-popup="type1">
    <div class="pop-con">
        <a href="javascript: void(0)" class="close">닫기</a>
        <div class="img">
            <span>N 재수종합 식당</span>
            <img src="http://img.sdij.com/sd2019/mobile/bbs/facility-01.jpg" alt="시대인재학원시설">
            <em>1/7</em>
        </div>
        <div class="img">
            <span>N 재수종합 강의실</span>
            <img src="http://img.sdij.com/sd2019/mobile/bbs/facility-02.jpg" alt="시대인재학원시설">
            <em>2/7</em>
        </div>
        <div class="img">
            <span>N 재수종합 자습실</span>
            <img src="http://img.sdij.com/sd2019/mobile/bbs/facility-03.jpg" alt="시대인재학원시설">
            <em>3/7</em>
        </div>
        <div class="img">
            <span>N 재수종합</span>
            <img src="http://img.sdij.com/sd2019/mobile/bbs/facility-04.jpg" alt="시대인재학원시설">
            <em>4/7</em>
        </div>
        <div class="img">
            <span>N 재수종합 식당</span>
            <img src="http://img.sdij.com/sd2019/mobile/bbs/facility-05.jpg" alt="시대인재학원시설">
            <em>5/7</em>
        </div>
        <div class="img">
            <span>N 재수종합</span>
            <img src="http://img.sdij.com/sd2019/mobile/bbs/facility-06.jpg" alt="시대인재학원시설">
            <em>6/7</em>
        </div>
        <div class="img">
            <span>N 재수종합</span>
            <img src="http://img.sdij.com/sd2019/mobile/bbs/facility-07.jpg" alt="시대인재학원시설">
            <em>7/7</em>
        </div>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->
<!-- #include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp" -->


<script type="text/javascript">
$(document).ready(function(){
      $('*[data-popup="type1"] .close').click(function(){
        $(this).parents('*[data-popup="type1"]').hide();
      });
});
</script>
<script>
    function showPop(idx,name){
        $('.pop-con .img').eq(idx).addClass('on').siblings('.img').removeClass('on');
        $('#' + name).show();
    }
</script>