<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니
' 모듈기능 : 공통 > 마이페이지 > 장바구니
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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container">
        <div class="content-layout">
            <h2 class="step-tit">장바구니</h2>

            <!-- S : STEP -->
            <div class="step-box mb0">
                <ul class="step">
                    <li class="on">1</li>
                    <li>2</li>
                    <li>3</li>
                </ul>
            </div>
            <!--// E : STEP -->

            <!-- S : 장바구니 리스트 -->
            <div class="board-list board-cart">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <td class="check-area" colspan="6">
                                <label class="form-checkbox">
                                    <input type="checkbox" class="check-all">
                                    <span class="ico ico-checkbox"></span>
                                    전체선택
                                </label>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <% For i = 1 To 2 %>
                        <tr>
                            <td class="check-area">
                                <label class="form-checkbox">
                                    <input type="checkbox">
                                    <span class="ico ico-checkbox"></span>
                                </label>

                                <a href="#">
                                    [<span>모의고사</span>]
                                    상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명
                                </a>
                            </td>
                            <td class="info-area">
                                <div class="img"><a href="#"><img src="https://via.placeholder.com//100x100" alt="상품 이미지"></a></div>
                                <div class="txt">
                                    <p>
                                        <% '상품 정가가 있을 경우 %>
                                        <del>1,100,000원</del>
                                        →
                                        <% '// 상품 정가가 있을 경우 %>
                                        1,000,000원
                                    </p>
                                    <p><b>1,000,000원</b></p>
                                    <p class="option">
                                        <span class="number-btn">
                                            <button class="btn btn-down">감소</button>
                                            <input class="input-text" value="1" type="number">
                                            <button class="btn btn-up">증가</button>
                                        </span>
                                    </p>
                                </div>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                    <tfoot>
                        <tr class="total-area">
                            <td>
                                <!-- S : 장바구니 금액 -->
                                <div>
                                    <dl>
                                        <dt>총 상품금액</dt>
                                        <dd><span>1,000,000</span>원</dd>
                                        <dt>배송비</dt>
                                        <dd><span>2,500</span>원</dd>
                                        <dt class="total-line">총 결제예정금액</dt>
                                        <dd class="total-line"><b>1,002,500</b>원</dd>
                                    </dl>
                                </div>
                                <!--// E : 장바구니 금액 -->
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <!--// E : 장바구니 리스트 -->

            <% if false then %>
            <!-- S : 장바구니 안내 -->
            <div class="gray-box2 txt-left mt30">
                <ul class="list-number">
                    <li>장바구니에 담겨진 상품/강좌/교재/도서는 30일 동안 보관됩니다.<br>(단, 판매종료 상품은 별도 고지없이 삭제)</li>
                    <li>교재 배송비는 주문 1건당 2,500원입니다. (만원이상 구매 시 무료배송)</li>
                    <li>단순 변심에 의한 반송 시, 환불금액에서 왕복 배송비가 제외됩니다.</li>
                    <li>교재가 포함된 상품 또는 강좌의 결제를 취소하시면 해당 교재도 함께 취소됩니다.</li>
                    <li>수강 중인 강좌와 교재는 수강 중 재구매 할 수 없습니다.</li>
                </ul>
                <div class="txt-right mt50">
                    <a href="http://www.sdijbooks.com/board/faq_list.asp?mcd=175" target="_blank" class="txt-link2"><b>시대인재 상품별 환불규정</b></a><br>
                    <a href="http://www.sdijbooks.com/board/faq_list.asp?mcd=175" target="_blank" class="txt-link2"><b>교재 배송 및 구매 안내</b></a>
                </div>
            </div>
            <!--// E : 장바구니 안내 -->
            <% end if %>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <button class="btn btn-darkgray btn-del"><span class="ico ico-del">상품 삭제</span></button>
        <a href="checkout.asp" class="btn btn-black">주문/결제</a>
    </div>
    
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