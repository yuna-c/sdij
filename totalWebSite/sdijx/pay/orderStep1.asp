<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 주문/결제
' 모듈기능 : 시대인재 Digital > 주문/결제
' 파 일 명 : orderStep1.asp
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
                        <span class="color-black">주문 정보</span>
                        <span>결제 정보</span>
                    </div>

                    <h2 class="tit-dep1">주문 정보</h2>
                </div>

                <!-- S : 주문 정보 -->
                <form id="orderForm1" action="orderStep2.asp" method="">
                    <!-- S : 구매자 정보 -->
                    <h3 class="tit-dep4">구매자 정보</h3>
                    <div class="form-type1">
                        <dl>
                            <dt>이름</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="orderName1" id="orderName1" placeholder="이름을 입력해주세요.">
                                </label>
                            </dd>

                            <dt>휴대폰번호</dt>
                            <dd class="row">
                                <span>
                                    <label class="select">
                                        <select name="orderHp1-1" id="orderHp1-1">
                                            <option value="">010</option>
                                        </select>
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="orderHp1-2" id="orderHp1-2" minlength="3" maxlength="4">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="orderHp1-3" id="orderHp1-3" minlength="4" maxlength="4">
                                    </label>
                                </span>
                            </dd>
                        </dl>
                    </div>
                    <!--// E : 구매자 정보 -->

                    <!-- S : 배송지 정보 -->
                    <div class="tit-area">
                        <h3 class="tit-dep4">배송지 정보</h3>

                        <div class="tit-side btn-area">
                            <a href="javascript:void(0);" onclick="fnOpenModal('.modal-delivery');" class="btn btn-M">배송지 변경</a>
                        </div>
                    </div>

                    <div class="form-type1">
                        <dl>
                            <dt>이름</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="orderName2" id="orderName2" readonly value="홍길동">
                                </label>
                            </dd>

                            <dt>휴대폰번호</dt>
                            <dd class="row">
                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="orderHp2-1" id="orderHp2-1" readonly value="010">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="orderHp2-2" id="orderHp2-2" readonly value="1234">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="orderHp2-3" id="orderHp2-3" readonly value="5678">
                                    </label>
                                </span>
                            </dd>

                            <dt>주소</dt>
                            <dd>
                                <span>
                                    <label class="input-text">
                                        <input type="text" name="orderAdd1" id="orderAdd1" readonly value="100001">
                                    </label>
                                </span>
                            </dd>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="orderAdd2" id="orderAdd2" readonly value="서울시 강남대로 215">
                                </label>
                            </dd>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="orderAdd3" id="orderAdd3" readonly value="101호">
                                </label>
                            </dd>

                            <dt>배송 메시지</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="orderMsg" id="orderMsg" readonly value="부재시 경비실에 맡겨주세요.">
                                </label>
                            </dd>
                        </dl>
                    </div>
                    <!--// E : 배송지 정보 -->

                    <!-- S : 배송지 정보 없음 -->
                    <div class="tit-area">
                        <h3 class="tit-dep4">배송지 정보</h3>

                        <div class="tit-side btn-area">
                            <a href="javascript:void(0);" onclick="fnOpenModal('.modal-add');" class="btn btn-M">배송지 추가</a>
                        </div>
                    </div>

                    <div class="no-data">
                        <i class="ico-house"></i>
                        <p>저장되어 있는 배송지가 없습니다.</p>
                    </div>
                    <!--// E : 배송지 정보 없음 -->

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="다음">
                    </div>
                </form>
                <!--// E : 주문 정보 -->
            </div>
        </div>
    </section>
    <!--// E : container -->

    <!-- S : modal -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 배송지 목록 -->
        <!--#include virtual="/totalWebSite/sdijx/pay/incModalDelivery.asp"-->
        <!--// E : 배송지 목록 -->

        <!-- S : 배송지 추가 -->
        <!--#include virtual="/totalWebSite/sdijx/pay/incModalAdd.asp"-->
        <!--// E : 배송지 추가 -->
    </div>
    <!--// E : modal -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->