<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 취소/교환/환불 신청
' 모듈기능 : 시대인재 Digital > 취소/교환/환불 신청
' 파 일 명 : orderCancle.asp
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
    <section id="container" class="order-cancle-container">
        <div class="content-layout">
            <div class="page-loc">
                <span>홈</span>
                <span>주문내역</span>
                <span class="color-black">취소신청</span><!-- 신청 타입에 따라 취소/교환/환불 신청으로 타이틀 변경 -->
            </div>

            <h2 class="tit-dep1"><span class="tit">취소신청</span></h2><!-- 신청 타입에 따라 취소/교환/환불 신청으로 타이틀 변경 -->

            <form id="orderCancelForm" action="orderCancelEnd.asp" method="">
                <!-- S : 주문상품 리스트  -->
                <div class="sort-area">
                    <a href="javascript:void(0)" onclick="fnAllCheck(this);">전체선택</a>
                </div>

                <div class="cart-content">
                    <div class="table-type1 table-cart">
                        <ul>
                            <% for i = 1 to 3 %>
                            <li>
                                <div class="checkbox-area">
                                    <label class="input-checkbox">
                                        <input type="checkbox" checked="checked">
                                        <i class="ico-checkbox"></i>
                                    </label>
                                </div>

                                <div class="img-area">
                                    <div class="book-img">
                                        <img src="http://placehold.it/80x110" alt="상품 이미지">
                                    </div>
                                </div>

                                <div class="tit-area">
                                    <p class="txt">도서</p>

                                    <a href="/lecture/view.asp" class="tit">
                                        도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명 도서명 또는 강의명
                                    </a>
                                </div>

                                <div class="count-area">
                                    <label class="select">
                                        <select name="" id="">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </label>
                                </div>

                                <div class="price-area">
                                    100,000원
                                </div>
                            </li>
                            <% next %>
                        </ul>
                    </div>
                </div>
                <!--// E : 주문상품 리스트  -->

                <div class="form-content">
                    <!-- S : 회수지 정보 : 교재, 배송상품 일 경우 노출 -->
                    <div class="tit-area">
                        <h3 class="tit-dep4">회수지 정보</h3>

                        <div class="tit-side btn-area">
                            <a href="javascript:void(0);" onclick="fnOpenModal('.modal-delivery');" class="btn btn-M">회수지 변경</a>
                        </div>
                    </div>

                    <ul class="list-price bg-none">    
                        <li>
                            <span class="tit">이름</span>
                            <span class="price">홍길동</span>
                        </li>
        
                        <li>
                            <span class="tit">핸드폰번호</span>
                            <span class="price">010-1234-5678</span>
                        </li>
        
                        <li>
                            <span class="tit">주소</span>
                            <span class="price">서울시 강남구 삼성로 434 쥬비스타워 5층</span>
                        </li>

                        <li>
                            <span class="tit">회수 요청 사항</span>
                            <span class="price">회수 전 연락 주세요.</span>
                        </li>
                    </ul>
                    <!--// E : 회수지 정보 : 교재, 배송상품 일 경우 노출 -->

                    <!-- S : 환불 계좌 정보 : 무통장 입금일 경우 노출 -->
                    <h3 class="tit-dep4">환불 계좌 정보</h3>

                    <div class="form-type1">
                        <dl>
                            <dt>예금주</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="cancleName" id="cancleName" placeholder="예금주를 입력해주세요.">
                                </label>
                            </dd>

                            <dt>계좌번호</dt>
                            <dd class="row">
                                <span class="col-40">
                                    <label class="select">
                                        <select name="" id="">
                                            <option hidden disabled selected>은행 선택</option>
                                            <option value="">은행명</option>
                                        </select>
                                    </label>
                                </span>

                                <span class="col-60">
                                    <label class="input-text">
                                        <input type="text" name="orderAcct" id="orderAcct" placeholder="계좌번호를 입력해주세요.">
                                    </label>
                                </span>                            
                            </dd>
                        </dl>
                    </div>
                    <!--// E : 환불 계좌 정보 : 무통장 입금일 경우 노출 -->

                    <!-- S : 취소 신청 사유 -->
                    <h3 class="tit-dep4">취소 신청 사유</h3><!-- 신청 타입에 따라 취소/교환/환불 신청 사유로 타이틀 변경 -->

                    <div class="form-type1">
                        <dl>
                            <dt>신청사유</dt>
                            <dd>
                                <label class="select">
                                    <select name="" id="" onchange="fnSelectEct(this)">
                                        <option hidden disabled selected>사유 선택</option>
                                        <option value="">상품 불량</option>
                                        <option value="ect">기타(직접입력)</option>
                                    </select>
                                </label>                       
                            </dd>
                            <dd style="display:none;">
                                <label class="input-text">
                                    <input type="text" name="cancleTxt" id="cancleTxt" placeholder="신청사유를 입력해주세요.">
                                </label>
                            </dd>
                        </dl>
                    </div>
                    <!--// E : 취소 신청 사유 -->

                    <!-- S : 환불정보 리스트 -->
                    <h3 class="tit-dep4">환불 정보</h3>

                    <ul class="list-price bg-none">
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

                        <li class="total color-red">
                            <span class="tit">총 환불금액</span>
                            <span class="price">150,000원</span>
                        </li>
                    </ul>
                    <!--// E : 환불정보 리스트 -->
                    

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="취소신청"><!-- 신청 타입에 따라 취소/교환/환불 신청으로 타이틀 변경 -->
                    </div>
                </div>
            </form>
        </div>        
    </section>
    <!--// E : container -->

    <!-- S : modal -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 배송지(회수지) 목록 -->
        <!--#include virtual="/totalWebSite/sdijx/pay/incModalDelivery.asp"-->
        <!--// E : 배송지(회수지) 목록 -->

        <!-- S : 배송지(회수지) 추가 -->
        <!--#include virtual="/totalWebSite/sdijx/pay/incModalAdd.asp"-->
        <!--// E : 배송지(회수지) 추가 -->
    </div>
    <!--// E : modal -->

    <script>
        function fnAllCheck(obj){
            var $this = $(obj);
            
            $this.parent().next().find('.table-cart').find('input[type="checkbox"]').prop('checked', true);
        }

        function fnSelectEct(obj){
            var $this = $(obj);

            if( $this.val() === 'ect' ){
                $this.parents('dd').next().show();
            }else{
                $this.parents('dd').next().hide();
            }
        }
    </script>
    

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->