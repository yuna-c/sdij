<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 장바구니
' 모듈기능 : 시대인재 Digital > 장바구니
' 파 일 명 : cart.asp
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
    <section id="container" class="cart-container">
        <div class="content-layout">
            <div class="page-loc">
                <span>홈</span>
                <span class="color-black">장바구니</span>
            </div>

            <h2 class="tit-dep1"><span class="tit">장바구니</span></h2>

            <!-- S : 장바구니 리스트  -->
            <div class="sort-area">
                <span>총 3개의 상품</span>

                <div class="sort-side">
                    <a href="javascript:void(0)" class="color-red">전체삭제</a>
                </div>
            </div>

            <div class="cart-content">
                <div class="table-type1 table-cart">
                    <ul>
                        <% for i = 1 to 3 %>
                        <li>
                            <div class="img-area">
                                <div class="book-img">
                                    <img src="https://via.placeholder.com//80x110" alt="상품 이미지">
                                </div>
                            </div>

                            <div class="tit-area">
                                <p class="txt">도서</p>

                                <a href="/totalWebSite/sdijx/lecture/view.asp" class="tit">
                                    도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명
                                </a>
                            </div>

                            <div class="count-area">
                                <label class="select">
                                    <select name="" id="">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </label>
                            </div>

                            <div class="price-area">
                                100,000원
                                <a href="javascript:void(0);" class="color-red txt-link">삭제</a>
                            </div>
                        </li>
                        <% next %>
                    </ul>
                </div>
                
                <!-- S : 총계 -->
                <div class="table-type1 table-total">
                    <ul>
                        <li>
                            <div class="tit-area">
                                소계
                            </div>

                            <div class="price-area">
                                1,100,000원
                            </div>
                        </li>
                        <li>
                            <div class="tit-area">
                                배송비
                            </div>

                            <div class="price-area">
                                무료
                            </div>
                        </li>
                        <li class="total-price">
                            <div class="tit-area">
                                <span class="txt-line">총계</span>
                            </div>

                            <div class="price-area">
                                <span class="txt-line">1,100,000원</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--// E : 총계 -->
            </div>

            <div class="btn-area txt-right mt30">
                <a href="orderStep1.asp" class="btn btn-black btn-L">주문하기</a>
            </div>
            <!--// E : 장바구니 리스트  -->

            <!-- S : 장바구니 내역 없음 -->
            <div class="no-data">
                <i class="ico-cart"></i>
                <p>장바구니에 담긴 상품이 없습니다.</p>
            </div>
            <!--// E : 장바구니 내역 없음 -->
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->