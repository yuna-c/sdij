<!--include virtual="/common/inc/config.asp"-->
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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container mypage-container">
        <div class="content-layout board-tab">
            <h2 class="step-tit">My Cash &amp; Coupon</h2>

            <div class="dep1-tab">
                <ul>
                    <li class="selected"><a href="javascript:void(0);">캐시</a></li>
                    <li><a href="javascript:void(0);">쿠폰</a></li>
                </ul>
            </div>

            <!-- S : 캐시 -->
            <div class="tab-content tab-on mt0">
                <!-- S : 보유 캐시 -->
                <div class="black-box cash-box">
                    <div class="cash-tit">
                        <small>보유 캐시</small>
                        <span>1,000,000</span>원
                    </div>

                    <button type="button" onclick="fnOpenLayer('pop-cashcharge');" class="btn btn-white btn-sm">캐시 충전하기</button>
                </div>
                <!--// E : 보유 캐시 -->

                <!-- S : 캐시 리스트 -->
                <div class="mon-tit">2019.09</div>

                <div class="board-list cash-list">
                    <table>
                        <colgroup>
                            <col style="width:50px;">
                            <col style="width:auto;">
                            <col style="width:110px;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <td><span class="sticker-cash">충전</span></td>
                                <td class="txt-box">
                                    <span class="color-gray">2019-08-14</span>
                                    <span>캐시 충전</span>
                                </td>
                                <td class="txt-right"><b>+ 1,000,000원</b></td>
                            </tr>
                            <tr>
                                <td><span class="sticker-cash sticker-red">사용</span></td>
                                <td class="txt-box">
                                    <span class="color-gray">2019-08-14</span>
                                    <span>모의고사 교재</span>
                                </td>
                                <td class="txt-right"><b class="color-gray">- 1,000,000원</b></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <hr>

                <div class="mon-tit">2019.08</div>

                <div class="board-list cash-list">
                    <table>
                        <colgroup>
                            <col style="width:50px;">
                            <col style="width:auto;">
                            <col style="width:110px;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <td><span class="sticker-cash">충전</span></td>
                                <td class="txt-box">
                                    <span class="color-gray">2019-08-14</span>
                                    <span>캐시 충전</span>
                                </td>
                                <td class="txt-right"><b>+ 1,000,000원</b></td>
                            </tr>
                            <tr>
                                <td><span class="sticker-cash sticker-red">사용</span></td>
                                <td class="txt-box">
                                    <span class="color-gray">2019-08-14</span>
                                    <span>모의고사 교재</span>
                                </td>
                                <td class="txt-right"><b class="color-gray">- 1,000,000원</b></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="board-btn mt0">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
                <!--// E : 캐시 리스트 -->
            </div>
            <!--// E : 캐시 -->

            <!-- S : 쿠폰 -->
            <div class="tab-content mt0">
                <!-- S : 보유 쿠폰 -->
                <div class="black-box cash-box">
                    <div class="cash-tit">
                        <small>사용 가능한 쿠폰</small>
                        <span>999</span>장
                    </div>

                    <button type="button" onclick="fnOpenLayer('pop-couponregist');" class="btn btn-white btn-sm">쿠폰 등록하기</button>
                </div>
                <!--// E : 보유 쿠폰 -->

                <!-- S : 쿠폰 리스트 -->
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
                                    수학 기초 교재 무료쿠폰
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
                <!--// E : 쿠폰 리스트 -->
            </div>
            <!--// E : 쿠폰 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->
    
    <!-- S : dim-layer -->
    <link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/popup.css?d=<%= now() %>">

    <div class="dim-layer">
        <div class="dim-bg"></div>

        <!-- S : 캐시 충전하기 -->
        <!--#include virtual="/totalMobileSite/renew2019/sdijS/_pay/benefit/pop.cashCharge.asp"-->
        <!--// E : 캐시 충전하기 -->

        <!-- S : 쿠폰 등록하기 -->
        <!--#include virtual="/totalMobileSite/renew2019/sdijS/_pay/benefit/pop.couponRegist.asp"-->
        <!--// E : 쿠폰 등록하기 -->
    </div>
    <!--// E : dim-layer -->
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->