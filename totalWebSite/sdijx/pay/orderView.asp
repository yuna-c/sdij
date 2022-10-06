<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 주문/배송 리스트 > 주문 상세보기
' 모듈기능 : 시대인재 Digital > 주문/배송 리스트 > 주문 상세보기
' 파 일 명 : orderView.asp
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
    <section id="container" class="order-view-container">
        <div class="content-layout">
            <div class="page-loc">
                <span>홈</span>
                <span>주문내역</span>
                <span class="color-black">상세보기</span>
            </div>

            <h2 class="tit-dep1"><span class="tit">주문내역 상세보기</span></h2>

            <!-- S : 주문상품 리스트 -->
            <div class="table-type1 table-cart">
                <ul>
                    <% for i = 1 to 3 %>
                    <li>
                        <div class="img-area">
                            <div class="book-img">
                                <img src="https://via.placeholder.com//80x110" alt="상품 이미지">
                            </div>
                        </div>

                        <div class="order-area">
                            <p class="date">2020/01/01</p>

                            <p class="tit">
                                123123131312112313
                            </p>
                        </div>

                        <div class="tit-area">
                            <p class="txt">도서</p>

                            <a href="/totalWebSite/sdijx/lecture/view.asp" class="tit">
                                도서명 또는 강의명
                                도서명 또는 강의명
                                도서명 또는 강의명
                                도서명 또는 강의명
                                도서명 또는 강의명
                                도서명 또는 강의명
                            </a>

                            <p class="price">
                                <span>1</span>
                                <span>21,500원</span>
                            </p>
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
            <!--// E : 주문상품 리스트 -->

            <!-- S : 주문정보 리스트 -->
            <ul class="list-info">
                <li>
                    <p class="tit">구매자정보</p>

                    <ul class="txt">
                        <li>홍길동</li>
                        <li>010-1234-5678</li>
                        <li>abc@gmail.com</li>
                    </ul>
                </li>
                <li>
                    <p class="tit">배송정보</p>

                    <ul class="txt">
                        <li>홍길동</li>
                        <li>010-1234-5678</li>
                        <li>서울시 강남구 삼성로 434 쥬비스타워 5층</li>
                        <li>배송 전 연락주세요.</li>
                    </ul>
                </li>
                <li>
                    <p class="tit">입금정보</p>

                    <ul class="txt">
                        <li>2017901861937</li>
                        <li>국민은행(하이컨시북스)</li>
                        <li>10,000원</li>
                    </ul>
                </li>
                <li>
                    <p class="tit">환불정보</p>

                    <ul class="txt">
                        <li>2017901861937</li>
                        <li>국민은행(홍길동)</li>
                        <li>10,000원</li>
                    </ul>
                </li>
            </ul>
            <!--// E : 주문정보 리스트 -->

            <!-- S : 결제정보 리스트 -->
            <ul class="list-price">
                <li>
                    <span class="tit-dep4">결제정보</span>
                </li>

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
            <!--// E : 결제정보 리스트 -->
        </div>        
    </section>
    <!--// E : container -->

<script>
    $(function(){
        
    });
</script>

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->