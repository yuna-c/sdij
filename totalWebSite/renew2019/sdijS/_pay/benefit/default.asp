<!--include virtual="/totalWebSite/renew2019/sdijS/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 결제 > 캐쉬/쿠폰
' 모듈기능 : 결제 > 캐쉬/쿠폰
' 파 일 명 : default.asp
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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mypage-container mt60">
            <div class="content-layout snb-layout">
                <!-- S : SNB -->
                <!--#include virtual="/totalWebSite/renew2019/sdijS/_mypage/inc.snb.asp"-->
                <!--// E : SNB -->

                <div class="board-layout">
                    <div class="board-tab">
                        <!-- S : dep1-tab -->
                        <ul class="dep1-tab">
                            <li class="selected"><a href="#">캐시</a></li>
                            <li><a href="#">쿠폰</a></li>
                        </ul>
                        <!--// E : dep1-tab -->
                
                        <!-- S : 캐쉬 -->
                        <div class="tab-content tab-on">
                            <!-- S : 보유 캐시 -->
                            <div class="black-box cash-box">
                                <div class="cash-tit">
                                    <small>보유 캐시</small>
                                    <span>1,000,000</span>원
                                </div>

                                <button type="button" onclick="fnOpenLayer('dim-cash-charge');" class="btn btn-white btn-sm">캐시 충전하기</button>
                            </div>
                            <!--// E : 보유 캐시 -->

                            <!-- S : 날짜 검색 -->
                            <div class="board-date border-none mt20">
                                <form action="" method="">
                                    <!-- S : 달력날짜선택 -->
                                    <div class="date-terms">
                                        <label class="label-date"><input type="text" value="2019-06-11" class="input-text datepicker hasDatepicker" id="dp1567606403834"></label>
                                        &nbsp;~&nbsp;
                                        <label class="label-date"><input type="text" value="2019-06-18" class="input-text datepicker hasDatepicker" id="dp1567606403835"></label>
                                    </div>
                                    <!--// E : 달력날짜선택 -->
            
                                    <!-- S : 버튼날짜선택 -->
                                    <div class="btn-terms">
                                        <button type="button" class="btn on">1주일</button>
                                        <button type="button" class="btn">1개월</button>
                                        <button type="button" class="btn">3개월</button>
                                        <button type="button" class="btn">6개월</button>
                                    </div>
                                    <!--// E : 버튼날짜선택 -->
            
                                    <input type="submit" class="btn btn-black btn-search" value="검색">
                                </form>
                            </div>
                            <!--// E : 날짜 검색 -->

                            <!-- S : 캐시 리스트 -->
                            <div class="mon-tit">2019.09</div>

                            <div class="board-list cash-list">
                                <table>
                                    <colgroup>
                                        <col style="width:122px;">
                                        <col style="width:auto;">
                                        <col style="width:200px;">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <td><span class="sticker-cash">충전</span></td>
                                            <td class="txt-box">
                                                <span class="color-gray">2019-08-14</span>
                                                <span>캐시 충전</span>
                                                <span class="color-gray">카드결제</span>
                                            </td>
                                            <td class="txt-right"><b>+ 1,000,000원</b></td>
                                        </tr>
                                        <tr>
                                            <td><span class="sticker-cash sticker-red">사용</span></td>
                                            <td class="txt-box">
                                                <span class="color-gray">2019-08-14</span>
                                                <span>모의고사 교재</span>
                                                <span class="color-gray">결제 사용</span>
                                            </td>
                                            <td class="txt-right"><b class="color-gray">- 1,000,000원</b></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="mon-tit">2019.08</div>

                            <div class="board-list cash-list">
                                <table>
                                    <colgroup>
                                        <col style="width:122px;">
                                        <col style="width:auto;">
                                        <col style="width:200px;">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <td><span class="sticker-cash">충전</span></td>
                                            <td class="txt-box">
                                                <span class="color-gray">2019-08-14</span>
                                                <span>캐시 충전</span>
                                                <span class="color-gray">카드결제</span>
                                            </td>
                                            <td class="txt-right"><b>+ 1,000,000원</b></td>
                                        </tr>
                                        <tr>
                                            <td><span class="sticker-cash sticker-red">사용</span></td>
                                            <td class="txt-box">
                                                <span class="color-gray">2019-08-14</span>
                                                <span>모의고사 교재</span>
                                                <span class="color-gray">결제 사용</span>
                                            </td>
                                            <td class="txt-right"><b class="color-gray">- 1,000,000원</b></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--// E : 캐시 리스트 -->
                        </div>
                        <!--// E : 캐쉬 -->

                        <!-- S : 쿠폰 -->
                        <div class="tab-content tab-coupon">
                            <!-- S : 보유 쿠폰 -->
                            <div class="black-box cash-box">
                                <div class="cash-tit">
                                    <small>사용 가능한 쿠폰</small>
                                    <span>999</span>장
                                </div>
                                <div class="cash-tit">
                                    <small>종료된 쿠폰</small>
                                    <span>999</span>장
                                </div>

                                <button type="button" onclick="fnOpenLayer('dim-coupon-regist');" class="btn btn-white btn-sm">쿠폰 등록하기</button>
                            </div>
                            <!--// E : 보유 쿠폰 -->

                            <!-- S : 날짜 검색 -->
                            <div class="board-date border-none mt20">
                                <form action="" method="">
                                    <!-- S : 달력날짜선택 -->
                                    <div class="date-terms">
                                        <label class="label-date"><input type="text" value="2019-06-11" class="input-text datepicker hasDatepicker" id="dp1567606403834"></label>
                                        &nbsp;~&nbsp;
                                        <label class="label-date"><input type="text" value="2019-06-18" class="input-text datepicker hasDatepicker" id="dp1567606403835"></label>
                                    </div>
                                    <!--// E : 달력날짜선택 -->
            
                                    <!-- S : 버튼날짜선택 -->
                                    <div class="btn-terms">
                                        <button type="button" class="btn on">1주일</button>
                                        <button type="button" class="btn">1개월</button>
                                        <button type="button" class="btn">3개월</button>
                                        <button type="button" class="btn">6개월</button>
                                    </div>
                                    <!--// E : 버튼날짜선택 -->
            
                                    <input type="submit" class="btn btn-black btn-search" value="검색">
                                </form>
                            </div>
                            <!--// E : 날짜 검색 -->

                            <!-- S : 쿠폰 리스트 -->
                            <div class="mon-tit">사용 가능한 쿠폰</div>

                            <div class="coupon-list">
                                <ul class="float-area">
                                    <li class="coupon-delivery"><a href="#"><!-- 배송비 무료쿠폰 class="coupon-delivery" / 관리자에서 해당상품 대표 링크를 입력하면 a링크 생성 -->
                                        <div class="tit">
                                            <small>배송비 무료쿠폰</small>
                                            FREE
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">D-999</div>
                                    </a></li>
                                    <li class="coupon-lecture-free"><a href="#"><!-- 강좌 무료쿠폰 class="coupon-lecture-free" -->
                                        <div class="tit">
                                            <small>강좌 무료쿠폰</small>
                                            FREE
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">D-999</div>
                                    </a></li>
                                    <li class="coupon-book-free"><a href="#"><!-- 교재 무료쿠폰 class="coupon-book-free" -->
                                        <div class="tit">
                                            <small>
                                                수학 기초<br>
                                                교재 무료쿠폰
                                            </small>
                                            FREE
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">D-999</div>
                                    </a></li>
                                    <li class="coupon-lecture"><a href="#"><!-- 강좌 할인쿠폰 class="coupon-lecture" -->
                                        <div class="tit">
                                            <small>강좌 할인쿠폰</small>
                                            20,000
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">D-999</div>
                                    </a></li>
                                    <li class="coupon-book"><a href="#"><!-- 교재 할인쿠폰 class="coupon-book" -->
                                        <div class="tit">
                                            <small>교재 할인쿠폰</small>
                                            10%
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">D-999</div>
                                    </a></li>
                                </ul>
                            </div>

                            <div class="mon-tit">종료된 쿠폰</div>

                            <div class="coupon-list">
                                <ul class="float-area">
                                    <li class="coupon-delivery"><!-- 배송비 무료쿠폰 class="coupon-delivery" -->
                                        <div class="tit">
                                            <small>배송비 무료쿠폰</small>
                                            FREE
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">사용완료</div>
                                    </li>
                                    <li class="coupon-lecture-free"><!-- 강좌 무료쿠폰 class="coupon-lecture-free" -->
                                        <div class="tit">
                                            <small>강좌 무료쿠폰</small>
                                            FREE
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">기한종료</div>
                                    </li>
                                    <li class="coupon-book-free"><!-- 교재 무료쿠폰 class="coupon-book-free" -->
                                        <div class="tit">
                                            <small>
                                                수학 기초<br>
                                                교재 무료쿠폰
                                            </small>
                                            FREE
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">사용완료</div>
                                    </li>
                                    <li class="coupon-lecture"><!-- 강좌 할인쿠폰 class="coupon-lecture" -->
                                        <div class="tit">
                                            <small>강좌 할인쿠폰</small>
                                            20,000
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">기한종료</div>
                                    </li>
                                    <li class="coupon-book"><!-- 교재 할인쿠폰 class="coupon-book" -->
                                        <div class="tit">
                                            <small>교재 할인쿠폰</small>
                                            10%
                                        </div>
                                        <div class="date">2019-08-27 ~ 2019-09-27</div>

                                        <div class="sticker-board sticker-red">사용완료</div>
                                    </li>
                                </ul>
                            </div>
                            <!--// E : 쿠폰 리스트 -->
                        </div>
                        <!--// E : 쿠폰 -->
                    </div>
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
    <!--// E : container -->
    
    <!-- S : dim-layer -->
    <div class="dim-layer">
        <div class="dim-bg"></div>
    
        <!-- S : 캐시 충전하기 -->
        <div class="dim-content dim-form dim-cash-charge">
            <h4 class="dim-tit txt-center">캐시 충전하기</h4>
    
            <form action="" method="">
            <div class="dim-select">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <b cclass="tit">충전 금액</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-multi col3">
                                    <label><input type="radio" onclick="chargeCash('20000');">+ 2만원</label>
                                    <label><input type="radio" onclick="chargeCash('50000');">+ 5만원</label>
                                    <label><input type="radio" onclick="chargeCash('100000');">+ 10만원</label>
                                    <label><input type="radio" onclick="chargeCash('300000');">+ 30만원</label>
                                    <label><input type="radio" onclick="chargeCash('500000');">+ 50만원</label>
                                    <label><input type="radio" onclick="chargeCash('ect');">다른금액</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-input">
                                    <input type="text" value="충전 금액을 선택해 주세요." class="chargeNum" readonly>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="info-txt">
                                충전 가능 금액 : 50만원<br>
                                1회 50만원 / 월 100만원 충전 가능
                            </td>
                        </tr>
                        <tr>
                            <td class="pt20">
                                <b cclass="tit">결제정보</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    무통장 입금
                                </label>
                                <label class="form-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    실시간 계좌이체
                                </label>
                                <label class="form-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    카드결제
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
    
            <div class="dim-btn txt-center">
                <a href="javascript:void(0);" class="btn btn-black btn-confirm">충전하기</a>
                <button type="button" class="btn btn-darkgray pop-close">취소</button>
            </div>
            </form>
        </div>
        <!--// E : 캐시 충전하기 -->
    
        <!-- S : 쿠폰 등록하기 -->
        <div class="dim-content dim-form dim-coupon-regist">
            <h4 class="dim-tit txt-center">쿠폰 등록하기</h4>
    
            <form action="" method="">
            <div class="dim-select">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <b cclass="tit">쿠폰번호입력</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-input">
                                    <input type="text" placeholder="‘-’ 없이 16자리를 모두입력해 주세요">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="txt-guide color-red">* 쿠폰 번호를 정확하게 입력 후 등록 버튼을 클릭 하세요.</p>
                                <p class="txt-guide">* 쿠폰 번호는 영문, 숫자 혼합으로 이루어져 있습니다.</p>
                                <p class="txt-guide">* 대소문자 구분 없이 입력 가능합니다.</p>
                                <p class="txt-guide">
                                    * 쿠폰 마다 등록/사용 기간이 다르니,<br>
                                    &nbsp;&nbsp;&nbsp;등록 후 My coupon &gt; 쿠폰확인하기를 통해서 확인해 주세요.
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
    
            <div class="dim-btn txt-center">
                <a href="javascript:void(0);" class="btn btn-black btn-confirm">등록하기</a>
                <button type="button" class="btn btn-darkgray pop-close">취소</button>
            </div>
            </form>
        </div>
        <!--// E : 쿠폰 등록하기 -->
    </div>
    <!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">

$(function(){
    
});

// 캐시금액 입력
function chargeCash(num){
    var num = num;

    if( num == 'ect' ){
        $('.chargeNum').removeProp('readonly');
    }else{
        $('.chargeNum').prop({
            readonly: true,
            value: num
        });
    }
}

</script>
<!--// E : 페이지별 스크립트 -->