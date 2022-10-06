<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 주문/배송 리스트
' 모듈기능 : 시대인재 Digital > 주문/배송 리스트
' 파 일 명 : orderList.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/pay.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="order-list-container">
        <div class="content-layout">
            <div class="page-loc">
                <span>홈</span>
                <span class="color-black">주문내역</span>
            </div>

            <h2 class="tit-dep1"><span class="tit">주문내역</span></h2>

            <!-- S : 주문내역 리스트 -->
            <div class="sort-area sort-border">
                <!-- S : 날짜 검색 -->
                <div class="date-sort">
                    <label class="input-date">
                        <input type="text" readonly>
                    </label>
                    <span class="dash">~</span>
                    <label class="input-date">
                        <input type="text" readonly>
                    </label>
                </div>

                <div class="form-toggle">
                    <label class="toggle-radio">
                        <input type="radio" id="dateType1" name="dateType">
                        <span>1주일</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="dateType2" name="dateType">
                        <span>1개월</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="dateType3" name="dateType">
                        <span>3개월</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="dateType4" name="dateType">
                        <span>6개월</span>
                    </label>
                </div>

                <div class="sort-side">
                    <a href="javascript:void(0)" class="btn btn-black">검색</a>
                </div>
                <!--// E : 날짜 검색 -->
            </div>

            <div class="table-type1 table-cart">
                <ul>
                    <% for i = 1 to 10 %>
                    <li>
                        <div class="img-area">
                            <div class="book-img">
                                <img src="https://via.placeholder.com//80x110" alt="상품 이미지">
                            </div>
                        </div>

                        <div class="order-area">
                            <p class="date">2020/01/01</p>

                            <a href="/totalWebSite/sdijx/pay/orderView.asp" class="tit">
                                123123131312112313
                            </a>
                        </div>

                        <div class="tit-area">
                            <p class="txt">도서</p>

                            <a href="/totalWebSite/sdijx/pay/orderView.asp" class="tit">
                                도서명 또는 강의명 외 3건
                            </a>
                        </div>

                        <div class="state-area">
                            배송준비중
                        </div>

                        <div class="pay-area">
                            무통장입금
                        </div>

                        
                        <div class="btn-area">
                            <% if i = 1 then '입금대기중, 결제완료, 배송준비중 %>
                            <a href="/totalWebSite/sdijx/pay/orderCancel.asp" class="btn">주문취소</a>

                            <% else '배송중, 배송완료 %>
                            <a href="javascript:void(0)" class="btn">배송조회</a>
                            <a href="/totalWebSite/sdijx/pay/orderCancel.asp" class="btn">반품/교환</a>

                            <% end if %>
                        </div>
                    </li>
                    <% next %>
                </ul>
            </div>

            <div class="btn-area txt-center mt30">
                <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
            </div>
            <!--// E : 주문내역 리스트 -->

            <!-- S : 주문 내역 없음 -->
            <div class="no-data">
                <i class="ico-alert"></i>
                <p>주문 내역이 없습니다.</p>
            </div>
            <!--// E : 주문 내역 없음 -->
        </div>        
    </section>
    <!--// E : container -->

<script>
    $(function(){
        // input date value="오늘 날짜"
        fnTimeNow();
    });
</script>

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->