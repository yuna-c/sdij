<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 주문내역
' 모듈기능 : 공통 > 마이페이지 > 주문내역
' 파 일 명 : order_check.asp
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
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container">
        <div class="content-layout">
            <h2 class="step-tit">주문내역</h2>

            <!-- S : 기간 검색 -->
            <div class="board-date">
                <button type="button" class="btn btn-date">기간 검색 <span class="ico ico-date-search"></span></button>
                <div class="search-date">
                    <form action="" method="">
                        <!-- S : 달력날짜선택 -->
                        <div class="date-terms">
                            <label class="label-date"><input type="date" value="2019-06-11" class="input-text input-date"></label>
                            <span>&nbsp;~&nbsp;</span>
                            <label class="label-date"><input type="date" value="2019-06-18" class="input-text input-date"></label>
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
            </div>
            <!--// E : 기간 검색 -->

            <div class="board-tab">
                <div class="dep1-tab">
                    <ul>
                        <li class="selected"><a href="javascript:void(0);">일반주문내역</a></li>
                        <li><a href="javascript:void(0);">정기배송내역</a></li>
                    </ul>
                </div>

                <!-- S : 일반주문내역 리스트 -->
                <div class="tab-content tab-on mt0">
                    <div class="board-list board-cart board-cart2 mb0">
                        <table>
                            <colgroup>
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <% '최대 5개 주문건 노출 %>
                                <tr>
                                    <td class="order-area">
                                        2019-05-30
                                        <a href="/_mypage/order/order_check_detail.asp" class="order-side txt-link2">주문상세보기</a>
                                    </td>
                                    <td class="state-area">배송완료</td>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="https://via.placeholder.com//100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                            <span class="color-darkgray">10,000원 / 1개</span>
                                        </div>
                                    </td>
                                    <td class="btn-area">
                                        <a href="/_mypage/order/order_check_cancel.asp" class="btn">취소신청</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="order-area">
                                        2019-05-30
                                        <a href="/_mypage/order/order_check_detail.asp" class="order-side txt-link2">주문상세보기</a>
                                    </td>
                                    <td class="state-area">배송완료</td>
                                    <% For i = 1 To 2 '상품 여러개 일 경우 %>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="https://via.placeholder.com//100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                            <span class="color-darkgray">10,000원 / 1개</span>
                                        </div>
                                    </td>
                                    <% next %>
                                    <td class="btn-area">
                                        <a href="#" class="btn btn-black">배송조회</a>
                                        <a href="/_mypage/order/order_check_cancel.asp" class="btn">반품신청</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="order-area">
                                        2019-05-30
                                        <a href="/_mypage/order/order_check_detail.asp" class="order-side txt-link2">주문상세보기</a>
                                    </td>
                                    <td class="state-area">배송완료</td>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="https://via.placeholder.com//100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                            <span class="color-darkgray">10,000원 / 1개</span>
                                        </div>
                                    </td>
                                    <td class="btn-area">
                                        <a href="/_mypage/order/order_check_cancel.asp" class="btn">취소신청</a>
                                        <a href="#" class="btn btn-black">배송조회</a>
                                        <a href="/_mypage/order/order_check_cancel.asp" class="btn">반품신청</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="order-area">
                                        2019-05-30
                                        <a href="/_mypage/order/order_check_detail.asp" class="order-side txt-link2">주문상세보기</a>
                                    </td>
                                    <td class="state-area">배송완료</td>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="https://via.placeholder.com//100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                            <span class="color-darkgray">10,000원 / 1개</span>
                                        </div>
                                    </td>
                                    <td class="btn-area">
                                        <a href="/_mypage/order/order_check_cancel.asp" class="btn">취소신청</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="order-area">
                                        2019-05-30
                                        <a href="/_mypage/order/order_check_detail.asp" class="order-side txt-link2">주문상세보기</a>
                                    </td>
                                    <td class="state-area">배송완료</td>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="https://via.placeholder.com//100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                            <span class="color-darkgray">10,000원 / 1개</span>
                                        </div>
                                    </td>
                                    <td class="btn-area">
                                        <a href="/_mypage/order/order_check_cancel.asp" class="btn">취소신청</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="boara-btn">
                        <button type="button" class="btn">더 보기 <span class="ico ico-bottom ml5"></span></button>
                    </div>
                </div>
                <!--// E : 일반주문내역 리스트 -->

                <!-- S : 정기배송내역 리스트 -->
                <div class="tab-content mt0">
                    <ul class="list-dotted pt10 pb10">
                        <li>정기배송 취소/환불 문의는 고객센터 1522-0568로 문의주시기 바랍니다.</li>
                        <li>정기배송 상품은 배송지 수정을 하실 경우 이후 회차부터 변경된 주소지로 배송됩니다.</li>
                    </ul>

                    <hr>

                    <div class="board-list board-cart board-cart2 mb0">
                        <table>
                            <colgroup>
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <% For i = 1 To 5 '최대 5개 주문건 노출 %>
                                <tr>
                                    <td class="order-area">
                                        2019-05-30
                                        <a href="/_mypage/order/order_check_detail.asp" class="order-side txt-link2">주문상세보기</a>
                                    </td>
                                    
                                    <td class="state-area">배송준비중</td>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="http://placehold.it/100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                        </div>
                                    </td>
                                    
                                    <td class="state-area">배송중</td>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="http://placehold.it/100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                        </div>
                                    </td>
                                    <td class="btn-area">
                                        <a href="#" class="btn btn-black">배송조회</a>
                                    </td>

                                    <td class="state-area">배송중</td>
                                    <td class="info-area">
                                        <div class="img"><a href="#"><img src="http://placehold.it/100x100" alt="상품 이미지"></a></div>
                                        <div class="txt">
                                            <span class="color-darkgray">모의고사<br></span>
                                            <a href="#">2020 서바이벌 제로 2차</a><br>
                                        </div>
                                    </td>
                                    <td class="btn-area">
                                        <a href="#" class="btn btn-black">배송조회</a>
                                    </td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>

                    <div class="boara-btn">
                        <button type="button" class="btn">더 보기 <span class="ico ico-bottom ml5"></span></button>
                    </div>
                </div>
                <!--// E : 정기배송내역 리스트 -->
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 --> 
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
    $('.btn-date').click(function(){
        $(this).find('.ico').toggleClass('ico-date-close');
        $(this).next('.search-date').slideToggle();
    });
});

</script>