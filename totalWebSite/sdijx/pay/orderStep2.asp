<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 주문/결제 > 결제정보
' 모듈기능 : 시대인재 Digital > 주문/결제 > 결제정보
' 파 일 명 : orderStep2.asp
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
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="order-container">
        <div class="wide-layout">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>홈</span>
                        <span>장바구니</span>
                        <span>주문 정보</span>
                        <span class="color-black">결제 정보</span>
                    </div>

                    <h2 class="tit-dep1">주문 및 결제</h2>
                </div>

                <!-- S : 상품 정보 -->
                <h3 class="tit-dep4">상품 정보</h3>

                <div class="table-type1 table-cart">
                    <ul>
                        <% for i = 1 to 3 %>
                        <li>
                            <div class="tit-area">
                                <p class="txt">도서</p>
    
                                <span class="tit">
                                    도서명 또는 강의명
                                    도서명 또는 강의명
                                    도서명 또는 강의명
                                    도서명 또는 강의명
                                    도서명 또는 강의명
                                    도서명 또는 강의명
                                </span>
    
                                <p class="price">
                                    <span>1</span>
                                    <span>21,500원</span>
                                </p>
                            </div>
                        </li>
                        <% next %>                
                    </ul>
                </div>
                <!--// E : 상품 정보 -->

                <!-- S : 결제 정보 -->
                <form id="orderForm2" action="orderEnd.asp" method="">
                    <h3 class="tit-dep4">결제 정보</h3>
                    <ul class="list-price">
                        <li>
                            <span class="tit">총 상품금액</span>
                            <span class="price">150,000원</span>
                        </li>

                        <li>
                            <span class="tit">배송비</span>
                            <span class="price">2,500원</span>
                        </li>

                        <li>
                            <span class="tit">할인금액</span>
                            <span class="price">2,500원</span>
                        </li>

                        <li class="total">
                            <span class="tit">총 결제금액</span>
                            <span class="price">150,000원</span>
                        </li>
                    </ul>

                    <div class="form-type1">
                        <dl>
                            <dt>결제수단</dt>
                            <dd class="form-toggle">
                                <label class="toggle-radio">
                                    <input type="radio" id="payType1" name="payType" checked>
                                    <span>신용카드</span>
                                </label>
                                <label class="toggle-radio">
                                    <input type="radio" id="payType2" name="payType">
                                    <span>계좌이체</span>
                                </label>
                                <label class="toggle-radio">
                                    <input type="radio" id="payType3" name="payType">
                                    <span>무통장 입금</span>
                                </label>
                                <label class="toggle-radio">
                                    <input type="radio" id="payType4" name="payType">
                                    <span>휴대폰 결제</span>
                                </label>
                            </dd>
                            <dd><p class="txt-info"><i class="ico-alert"></i>무이자할부 카드 정보는 결제창에서 확인하세요.</p></dd>

                            <dt class="blind">약관동의</dt>
                            <dd class="agree-type1">
                                <label class="input-checkbox">
                                    <input type="checkbox">
                                    <span class="ico-checkbox"></span>
                                    주문할 상품의 상품명, 상품 가격, 배송정보, 환불 규정을 확인하였으며 구매에 동의합니다. (전자상거래법 제 8조 제2항)
                                </label>
                            </dd>
                        </dl>
                    </div>
                    
                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="결제하기">
                    </div>
                </form>
                <!--// E : 결제 정보 -->
            </div>
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->