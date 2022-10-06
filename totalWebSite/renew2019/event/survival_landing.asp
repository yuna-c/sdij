<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/event.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/board.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/reset.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/visual.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/layout.css">
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
 <div class="zero_wrap">
      <div class="landing final">
          <div class="mid_wrap">
              <span class="top_title">
                2019 SURVIVAL ZERO FINAL
              </span>
              <div class="title">
                2019<br />
                SURVIVAL ZERO FINAL
              </div>
              <span class="add_title">
                SURVIVAL ZERO FINAL
              </span>
              <ul class="color_list">
                <li>
                  math<br />
                  2set
                </li>
                <li class="sec">
                  science 1<br />
                  2set
                </li>
                <li class="thir">
                  science 2<br />
                  2set
                </li>
                <li class="four">
                  score<br />
                  report
                </li>
              </ul>
              <span class="add_t">
                <em>올해 서바이벌 온라인 미시행 대신 작년 서바이벌 모의고사 Remastered를 선물합니다.</em>
                대치동 밖 수많은 학생들과 학부모님들의 요청으로 <br />
                시대인재 컨텐츠팀은 SURVIVAL ZERO 2에 이은 SURVIVAL ZERO 3 FINAL을 선물로 드립니다.
              </span>
          </div>
      </div>
      <div class="yellow_box final">
        <ul>
          <li>
            <span>2018</span>
            <span>서울대 의예과</span>
          </li>
          <li>
            정시 합격생 총 30명 중 시대인재 서바이벌 16명 현강 수강
          </li>
          <li>
            강남3구 합격생 총 27명 중 시대인재 서바이벌 21명 현강 수강
          </li>
          <li>
            서울ㆍ경기지역 일반/자사고 합격생 총 55명 중 시대인재 서바이벌 37명 현강 수강
          </li>
          <li class="small">
            *2018 시대인재 학원 현강 수강생 기준
          </li>
        </ul>
      </div>
      <div class="btn_box final">
        <span class="bg"></span>
        <ul>
          <li class="fir">
            <a href="#none" id="common_layerpopup_confi" >
              individual
              <span>1인 신청 유료 배송</span>
            </a>
          </li>
          <li class="sec">
            <a href="#none" id="common_layerpopup_confirm" data-popup="sample">
              class
              <span>반 신청 무료 배송</span>
            </a>
          </li>
          <li class="thir">
            <a href="#">
              school
              <span>선생님 신청 무료 배송</span>
            </a>
          </li>
        </ul>
      </div>
  </div>
<!--// E : 컨텐츠 영역 -->
<!--팝업-->
<div data-popup="type1" class="popup1 common_layerpopup_confirm">
  <div class="pop_wrap">
    <div data-box="pop_content">
      <div class="content_text">
        <p>충분한 물량을 준비하였으나 모든 수량을 소진하여, <br />반배송 이벤트는 마감되었습니다.<br />
        감사합니다.</p>
      </div>
      <div class="btn_wrap">
        <button type="button" data-btn="navy" class="close">확인</button>
      </div>
    </div>
  </div>
  <button class="dim"></button>
</div>
<div data-popup="type1" class="popup1 common_layerpopup_confirm">
  <div class="pop_wrap">
    <div data-box="pop_content">
      <div class="content_text">
        <p>충분한 물량을 준비하였으나 모든 수량을 소진하여, <br />반배송 이벤트는 마감되었습니다.<br />
        감사합니다.</p>
      </div>
      <div class="btn_wrap">
        <button type="button" data-btn="navy" class="close">확인</button>
      </div>
    </div>
  </div>
  <button class="dim"></button>
</div>
<!--팝업 끝-->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->


<script type="text/javascript">
$(document).ready(function(){

  var btnLi = $('.btn_box li')
  var actionT = $('.yellow_box').offset().top;
  var actionH = $('.btn_box').height();
  var windowH = $(window).height();
  var actionNum =  actionT-actionH;
  var yellowH = $('.yellow_box').height();
  var btnH = $('.btn_box').height();
  var scrollNum =  $(window).scrollTop()

  if(0 <= scrollNum && scrollNum < windowH  ){
    setTimeout(function(){
      $('html,body').animate({
        'scrollTop' : (windowH+yellowH+btnH)+'px'
      },500)
    },2000)
  }


  $(window).scroll(function(){
    var scrT =  $(this).scrollTop();
    var btnLi = $('.btn_box li').length;


    if(scrT > actionNum){
      for(var i=0;i<btnLi;i++){
        var idx = i+1;
        var speed = idx*200;

        $('.btn_box li').eq(i).delay(idx*200).animate({
          'bottom' : 0
        },500)
      };
    }
  });
})
</script>
