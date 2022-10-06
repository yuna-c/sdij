<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 주문내역 > 주문내역 상세보기
' 모듈기능 : 공통 > 마이페이지 > 주문내역 > 주문내역 상세보기
' 파 일 명 : order_check_detail.asp
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
    <div class="layout-container fixed-container">
        <div class="content-layout">
            <h2 class="step-tit">주문내역 상세보기</h2>

            <!-- S : 주문내역 리스트 -->
            <div class="board-list board-cart board-cart2">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <% '일반 배송 상품 일 경우 %>
                        <tr>
                            <td class="order-area">
                                2019-05-30
                                <span class="order-side txt-link">20190522181902304860</span>
                            </td>
                            <td class="state-area">배송완료</td>
                            <% For i = 1 To 2 '상품 여러개 일 경우 %>
                            <td class="info-area">
                                <div class="img"><a href="#"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></a></div>
                                <div class="txt">
                                    <span class="color-darkgray">모의고사<br></span>
                                    <a href="#">2020 서바이벌 제로 2차</a><br>
                                    <span class="color-darkgray">10,000원 / 1개</span>
                                </div>
                            </td>
                            <% next %>
                        </tr>
                        <% '// 일반 배송 상품 일 경우 %>

                        <% '정기 배송 상품 일 경우 %>
                        <tr>
                            <td class="order-area">
                                2019-05-30
                                <span class="order-side txt-link">20190522181902304860</span>
                            </td>

                            <% For i = 1 To 2 '정기배송 추가 될 경우 %>
                            <td class="state-area">배송완료</td>
                            <td class="info-area">
                                <div class="img"><a href="#"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></a></div>
                                <div class="txt">
                                    <span class="color-darkgray">모의고사<br></span>
                                    <a href="#">2020 서바이벌 제로 2차</a><br>
                                    <span class="color-darkgray">10,000원 / 1개</span>
                                </div>
                            </td>
                            <td class="btn-area">
                                <a href="#" class="btn btn-black">배송조회</a>
                            </td>
                            <% next %>
                        </tr>
                        <% '// 정기 배송 상품 일 경우 %>
                    </tbody>
                    
                    <tfoot>
                        <tr class="total-area">
                            <td>
                                <!-- S : 장바구니 금액 -->
                                <div>
                                    <dl>
                                        <dt>상품금액</dt>
                                        <dd><span>1,000,000</span>원</dd>

                                        <dt>할인쿠폰</dt>
                                        <dd><span>2,500</span>원</dd>

                                        <dt>배송비</dt>
                                        <dd><span>2,500</span>원</dd>

                                        <dt>캐시</dt>
                                        <dd><b>12,500</b>원</dd>

                                        <dt>총 결제금액</dt>
                                        <dd><b>1,002,500</b>원</dd>
                                    </dl>

                                    <% '취소완료, 반품완료 시에만 노출 %>
                                    <dl class="refund-list">
                                        <dt>신용카드</dt>
                                        <dd><span>1,002,500</span>원</dd>

                                        <dt>캐시</dt>
                                        <dd><span>1,002,500</span>원</dd>

                                        <dt>총 환불금액</dt>
                                        <dd><b>1,002,500</b>원</dd>
                                    </dl>
                                    <% '// 취소완료, 반품완료 시에만 노출 %>
                                </div>
                                <!--// E : 장바구니 금액 -->
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <!--// E : 주문내역 리스트 -->

            <hr class="mt30">

            <ul class="list-link">
                <!-- S : 구매자 정보 -->
                <li>
                    <strong class="tit">구매자 정보</strong>
                    <span>홍길동</span>
                    <span>서울시 강남구 삼성로 434 쥬비스타워</span>
                    <span>010-1234-5678</span>
                    <span>test@test.com</span>
                </li>
                <!--// E : 구매자 정보 -->

                <% if true then '강좌 구매 시 노출 X %>
                <li><a href="javascript:void(0);" onclick="fnOpenLayer('delv-list-my-pop')" class="link-right">
                    <strong class="tit">
                        <% if true then %>
                        배송 정보
                        <% else '반품일 경우 %>
                        회수지 정보
                        <% end if %>
                    </strong>
                    <span>홍길동</span>
                    <span>서울시 강남구 삼성로 434 쥬비스타워</span>
                    <span>010-1234-5678 / 02-1234-5678</span>
                    <span>배송 전 연락주세요.</span>
                </a></li>
                <% end if %>

                <% if true then '무통장 입금 시 노출 %>
                <!-- S : 입금 정보 -->
                <li>
                    <strong class="tit">입금 정보</strong>
                    <span>입금계좌 : 2017901861937</span>
                    <span>입금은행(예금주) : 국민은행(하이컨시북스)</span>
                    <span><b>1,000,000원</b></span>
                </li>
                <!--// E : 입금 정보 -->
                <% end if %>

                <% if true then '반품, 취소 시 노출 %>
                <!-- S : 환불 계좌 정보 -->
                <li>
                    <strong class="tit">환불 정보</strong>
                    <span>환불계좌 : 2017901861937</span>
                    <span>환불은행(예금주) : 국민은행(하이컨시북스)</span>
                    <span><b>1,000,000원</b></span>
                </li>
                <!--// E : 환불 계좌 정보 -->
                <% end if %>
            </ul>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 --> 

    <% '일반 상품일 경우만 %>
    <div class="board-btn page-btn">
        <% if false then %>
        <a href="/_mypage/order/order_check_cancel.asp" class="btn btn-lightgray">취소신청</a>
        <% else %>
        <a href="/_mypage/order/order_check_cancel.asp" class="btn btn-lightgray">반품신청</a>
        <a href="#" class="btn btn-black">배송조회</a>
        <% end if %>
    </div>
    <% '// 일반 상품일 경우만 %>

    <!-- S : dim-layer -->
    <link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/popup.css?d=<%= now() %>">

    <div class="dim-layer">
        <div class="dim-bg"></div>

        <!-- S : 배송지 추가 팝업 -->
        <!--#include virtual="/totalMobileSite/renew2019/sdijS/_pay/cart/delv_list_my_add_pop.asp"-->
        <!--// E : 배송지 추가 팝업 -->

        <!-- S : 배송지 목록 팝업 -->
        <!--#include virtual="/totalMobileSite/renew2019/sdijS/_pay/cart/delv_list_my_pop.asp"-->
        <!--// E : 배송지 목록 팝업 -->
    </div>
    <!--// E : dim-layer -->
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
    // 체크박스 all
    $('.check-all').on('click', function(){
        $(this).parents('table').children('tbody').find('input[type="checkbox"]').prop('checked', this.checked);
    });

    // 삭제버튼 숨겨주기
    $('.page-btn .btn-del').hide();

    // check된 값이 있으면 삭제버튼 보이기
    $('.board-cart input[type="checkbox"]').on('click', function(){
        var $checkBox = $('.board-cart input[type="checkbox"]');
        if( $checkBox.is(':checked') ){
            $('.page-btn .btn-del').show();
        }else{
            $('.page-btn .btn-del').hide();
        }
    });

    // 수량 증가
    $('.number-btn .btn-up').on('click', function(){ 
        var numInput = $(this).siblings('input[type="number"]');
        var num = numInput.val();
        
        if( num < 10 ){
            numInput.val(num*1+1);
        }
    });

    // 수량 감소
    $('.number-btn .btn-down').on('click', function(){ 
        var numInput = $(this).siblings('input[type="number"]');
        var num = numInput.val();

        if( num > 1 ){
            numInput.val(num*1-1);
        }
    });
});

</script>