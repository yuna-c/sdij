<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <h2 class="page-tit">급식</h2>

        <div class="tab-type03 mb50">
          <ul class="float-area">
            <li class="selected"><a href="javascript:;">시대인재 신관</a></li>
            <li class=""><a href="javascript:;">시대인재 부엉이관(N관)</a></li>
          </ul>
        </div>

        <select class="select txt-center mb15">
            <option value="1월">1월</option>
            <option value="2월">2월</option>
            <option value="3월">3월</option>
            <option value="4월">4월</option>
            <option value="5월">5월</option>
            <option value="6월">6월</option>
            <option value="7월">7월</option>
            <option value="8월">8월</option>
            <option value="9월">9월</option>
            <option value="10월">10월</option>
            <option value="11월">11월</option>
            <option value="12월">12월</option>
        </select>

        <div class="calendar" id="cafeteria_wrap">
          <div class="list">
            <a href="javascript:void(0);" class="pop_prev pop4"><span class="ico ico-slide-prev">이전 날짜</span></a>
            <a href="javascript:void(0);" class="pop_next pop4"><span class="ico ico-slide-next">다음 날짜</span></a>
            <div data-pop="pop" class="cafeteria type2 mb30">
              <div data-swipe="pop" class="pop4 swiper-container">
                <div class="swiper-wrapper">
                  <div class="swiper-slide">
                    <span>17(월)</span>
                  </div>
                  <div class="swiper-slide">
                    <span>18(화)</span>
                  </div>
                  <div class="swiper-slide">
                    <span>19(수)</span>
                  </div>
                  <div class="swiper-slide">
                    <span>20(목)</span>
                  </div>
                  <div class="swiper-slide">
                    <span>21(금)</span>
                  </div>
                  <div class="swiper-slide">
                    <span>22(토)</span>
                  </div>
                  <div class="swiper-slide">
                    <span>23(일)</span>
                  </div>
                  <div class="swiper-slide">
                    <span>24(월)</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <ul class="photo-con">
            <li>
              <img src="http://via.placeholder.com/560x400" alt="" class="mb15">
              <dl>
                <dt>점심 메뉴</dt>
                <dd>
                  <span>흑미밥</span>
                  <span>파송송계란국</span>
                  <span>파채불고기</span>
                  <span>꽃게강정</span>
                  <span>느타리버섯볶음</span>
                  <span>가든샐러드</span>
                  <span>배추김치</span>
                </dd>
              </dl>
            </li>
            <li>
              <img src="http://via.placeholder.com/560x400" alt="" class="mb15">
              <dl>
                <dt>점심 메뉴</dt>
                <dd>
                  <span>흑미밥</span>
                  <span>파송송계란국</span>
                  <span>파채불고기</span>
                  <span>꽃게강정</span>
                  <span>느타리버섯볶음</span>
                  <span>가든샐러드</span>
                  <span>배추김치</span>
                </dd>
              </dl>
          </div>
        </ul>

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

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript" src="//selectric.js.org/jquery.selectric.js"></script>
<script type="text/javascript" src="/totalMobileSite/renew2019/common/js/swiper.min.js"></script>
<link rel="stylesheet" href="/totalMobileSite/renew2019/common/css/swiper.min.css">


<script type="text/javascript">
var swiper = new Swiper('.swiper-container.pop4', {
    spaceBetween: 0,
    speed:250,
    slidesPerView:5,
    slidesPerGroup: 5 ,
    centeredSlides: false,
    autoplayDisableOnInteraction: true,
    freemode: true,
    spaceBetween: 0,
    touchratio:0,
    followfinger:false,
    simulateTouch: false,
    nextButton: '.pop_next.pop4',
    prevButton: '.pop_prev.pop4',
    navigation: {
        nextEl:  '.pop_next.pop4',
        prevEl:  '.pop_prev.pop4',
    }

});
</script>