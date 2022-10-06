<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<script type="text/javascript" src="/totalMobileSite/renew2019/common/js/lib/jquery.cycle2.js"></script>
<script type="text/javascript" src="/totalMobileSite/renew2019/common/js/lib/jquery.cycle2.carousel.min.js"></script>

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <h2 class="page-tit">부엉이 라이브러리 좌석 예약 서비스 </h2>

        <div class="step_list">
          <div class="pass"><em>1</em>본인인증</div>
          <div class="on"><em>2</em>좌석선택</div>
          <div><em>3</em>완료</div>
        </div>

        <p class="mb30">
            - 좌석배치도를 확인 후 원하는 좌석의 번호를 선택하세요. <br>
            - 선택이 불가한 자리는 이미 예약이 된 좌석입니다. <br>
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
                <button type="button">태성 5층</button>
                <button type="button" disabled="">태성 4층</button>
                <button type="button" disabled="">카이로스 4층</button>
                <button type="button" disabled="">카이로스 5층</button>
              </div>
            </div>

            <div class="library_list2">
              <h3>좌석번호 선택</h3>
              <div class="library_btn2">
                <button type="button">1 <span>예약</span></button>
                <button type="button">2 <span>예약</span></button>
                <button type="button">3 <span>예약</span></button>
                <button type="button">4 <span>예약</span></button>
                <button type="button" disabled="disabled">5 <span>(예약완료)</span></button>
                <button type="button">6 <span>예약</span></button>
                <button type="button">7 <span>예약</span></button>
                <button type="button">8 <span>예약</span></button>
                <button type="button">9 <span>예약</span></button>
                <button type="button">10 <span>예약</span></button>
                <button type="button">11 <span>예약</span></button>
                <button type="button">12 <span>예약</span></button>
                <button type="button">13 <span>예약</span></button>
                <button type="button">14 <span>예약</span></button>
                <button type="button">15 <span>예약</span></button>
              </div>
            </div>

             <div class="board-btn">
                <a href="javascript:void(0);" class="btn btn-black" onclick="fnOpenLayer('dim22'); return false;">
                  확인
                </a>
            </div>
          </fieldset>
      </form>


        <div class="link-t">
            PC사이트에서 더 많은 정보를 보실 수 있습니다.
            <a href="#">
                <span>시대인재 N재수종합반 사이트</span> <br>
                <span>PC 화면으로 보기</span>
            </a>
        </div>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<script>
  $('*[class^="library_list"] button').click(function(){

    if($(this).parents().hasClass('library_list1') == true){
      if($(this).hasClass('RD') == true){
        $('*[class^="library_list"]').hide();
        $('.library_list1').show();
        $('.library_list4').show();
      }else{
        $('*[class^="consult_btn"] button').siblings().removeClass('select');
        $(this).parents('.library_list1').nextAll('div').show();
        $('.library_list4').hide();
      }
    }

    $(this).siblings().removeClass('select');
    $(this).addClass('select');
  });
</script>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->