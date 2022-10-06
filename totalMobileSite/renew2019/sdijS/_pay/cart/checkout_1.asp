<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제
' 파 일 명 : checkout.asp
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
            <h2 class="step-tit">주문/결제</h2>

            <!-- S : STEP -->
            <div class="step-box mb0">
                <ul class="step">
                    <li class="prev">1</li>
                    <li class="on">2</li>
                    <li>3</li>
                </ul>
            </div>
            <!--// E : STEP -->

            <!-- S : 구매내역 리스트 -->
            <div class="board-list board-cart">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <% For i = 1 To 2 %>
                        <tr>
                            <td class="check-area">
                                <a href="#">
                                    [<span>모의고사</span>]
                                    상품명
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
                                    <p class="option">1</p>
                                </div>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                    <% if false then '이전 주문금액' %>
                    <tfoot>
                        <tr class="total-area mt0">
                            <td>
                                <!-- S : 장바구니 금액 -->
                                <div>
                                    <dl>
                                        <dt>총 상품금액</dt>
                                        <dd><b>1,000,000</b>원</dd>
                                    </dl>
                                    <dl>
                                        <dt>배송비</dt>
                                        <dd><b>2,500</b>원</dd>
                                    </dl>
                                    <dl class="total-line">
                                        <dt>총 결제예정금액</dt>
                                        <dd><b>1,002,500</b>원</dd>
                                    </dl>
                                </div>
                                <!--// E : 장바구니 금액 -->
                            </td>
                        </tr>
                    </tfoot>
                    <% end if %>
                </table>
            </div>
            <!--// E : 구매내역 리스트 -->
            <p class="txt-guide mt10">*주문상품 변경은 <a href="/_pay/cart/cart.asp" class="txt-link color-blue">장바구니</a> 단계에서 가능합니다.</p>

            <hr class="mt30">

            <!-- S : 구매자정보 -->
            <h4 class="table-tit border-none mt30">구매자정보</h4>
            <div class="form-defult form-defult2">
                <form action="" method="">
                <table>
                    <!-- <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup> -->
                    <tbody>
                        <tr>
                            <td colspan="3">홍길동</td>
                        </tr>
                        <tr>
                            <!-- <td>
                                <select class="select">
                                    <option value="010">010</option>
                                </select>
                            </td>
                            <td><input type="text" class="input-text"></td>
                            <td><input type="text" class="input-text"></td> -->
                            <td>
                                <div class="form-tel">
                                    <div class="form-select">
                                        <select>
                                            <option value="010">010</option>
                                        </select>
                                    </div>

                                    <div class="form-input">
                                        <input type="text">
                                    </div>

                                    <div class="form-input">
                                        <input type="text">
                                    </div>
                                </div>

                                <p class="txt-guide mt5">*주문/배송정보를 SMS로 안내해 드리오니 정확하게 입력하세요.</p>
                            </td>
                        </tr>
                        <!-- <tr>
                            <td colspan="3" class="alert-msg"></td><% '알럿 메시지 %>
                        </tr>
                        <tr class="info-txt">
                            <td colspan="3">
                                <span class="txt-guide">*주문/배송정보를 SMS로 안내해 드리오니 정확하게 입력하세요.</span>
                            </td>
                        </tr> -->
                        <tr>
                            <td colspan="2">
                                <div class="form-input form-email">
                                    <input type="text">
                                    <span class="dash">@</span>
                                    <input type="text">
                                </div>
                            </td>
                            <td>
                                <div class="form-select">
                                    <select>
                                        <option value="">선택</option>
                                        <option value="1">직접입력</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="hotmail.com">hotmail.com</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="korea.com">korea.com</option>
                                    </select>
                                </div>                                
                            </td>
                        </tr>
                        <!-- <tr>
                            <td colspan="3" class="alert-msg"></td><% '알럿 메시지 %>
                        </tr> -->
                    </tbody>
                </table>
                </form>
            </div>
            <!--// E : 구매자정보 -->

            <!-- S : 배송 정보 -->
            <hr class="mt30">
            
            <ul class="list-link">
                <% if true then '강좌 구매 시 노출 X %>
                <li class="no-data">
                    저장되어 있는 배송지가 없습니다.<br>배송지를 추가해주세요.<br><br>
                    <!-- <a href="delv_list_my_add_pop.asp" class="btn btn-black btn-sm">배송지 추가</a> -->
                    <button type="button" class="btn btn-black btn-sm" onclick="fnOpenLayer('delv-list-my-add-pop');">배송지 추가</button>
                </li>
                <li><a href="javascript:void(0);" onclick="fnOpenLayer('delv-list-my-pop')" class="link-right">
                    <strong class="tit">배송정보</strong>
                    <span>홍길동</span>
                    <span>서울시 강남구 삼성로 434 쥬비스타워</span>
                    <span>010-1234-5678 / 02-1234-5678</span>
                    <span>배송 전 연락주세요.</span>
                </a></li>
                <% end if %>
            </ul>
            <!--// E : 배송 정보 -->

            <% '신규 수정 영역 19/08 %>
            <hr>

            <!-- S : 쿠폰/캐시 -->
            <h4 class="table-tit border-none mt30">쿠폰 / 캐시</h4>
            <div class="form-defult3 form-coupon">
                <form action="" method=""></form>
                <table>
                    <colgroup>
                        <col style="width:80px;">
                        <col style="width:auto;">
                    </colgroup> 
                    <tbody>
                        <tr>
                            <th>할인쿠폰</th>
                            <td>
                                <span class="price-txt"><em>1,000,000</em>원</span>
                                <a href="javascript:void(0);" onclick="fnOpenLayer('coupon-pop');" class="btn btn-black btn-sm2">할인쿠폰</a>
                            </td>
                        </tr>
                        <tr>
                            <th>배송비쿠폰</th>
                            <td>
                                <span class="price-txt"><em>2,500</em>원</span>
                                <a href="javascript:void(0);" onclick="fnOpenLayer('coupon-delivery-pop');" class="btn btn-black btn-sm2">배송비쿠폰</a>
                            </td>
                        </tr>
                        <tr>
                            <th>캐시</th>
                            <td class="form-cash">
                                <div class="form-input">
                                    <input type="text">
                                </div>
                                <label class="form-checkbox">
                                    <input type="checkbox">
                                    <span class="ico ico-checkbox"></span>
                                    전액사용 (잔여 1,000,500원)
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--// E : 쿠폰/캐시 -->

            <hr class="mt10">

            <!-- S : 자동 결제 안내 -->
            <h4 class="table-tit border-none mt30">자동 결제 안내</h4>
            <ul class="list-dotted">
                <li>자동 결제 안내111</li>
                <li>자동 결제 안내111</li>
                <li>자동 결제 안내111</li>
                <li>교재가 포함된 상품 또는 강좌의 결제를 취소하시면 해당 교재도 함께 취소됩니다.</li>
                <li>수강 중인 강좌와 교재는 수강 중 재구매 할 수 없습니다.</li>
            </ul>
            <!--// E : 자동 결제 안내 -->

            <hr class="mt30">

            <!-- S : 결제 정보 -->
            <ul class="list-link">
                <li><a href="javascript:void(0);" onclick="fnOpenLayer('payment-pop')" class="link-right">
                    <strong class="tit">결제정보</strong>
                    <span>신용카드 결제</span>
                </a></li>
            </ul>

            <hr>

            <div class="form-defult3 mt20">
                <form action="" method="">
                <table>
                    <colgroup>
                        <col style="width:80px;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>총 상품금액</th>
                            <td class="fs18"><span><em>1,000,000</em>원</span></td>
                        </tr>
                        <tr>
                            <th>할인금액</th>
                            <td class="fs18"><span class="color-red strong">10,500원</span></td>
                        </tr>
                        <tr>
                            <th>배송비</th>
                            <td class="fs18"><span><em>-</em> 2,500원</span></td>
                        </tr>
                        <tr>
                            <th>캐시</th>
                            <td class="fs18"><span>10,000원</span></td>
                        </tr>
                        <tr>
                            <th class="total-line">총 결제금액</th>
                            <td class="total-line fs18"><span class="color-black strong">1,000,500원</span></td>
                        </tr>
                    </tbody>
                </table>
                </form>
            </div>
            <!--// E : 결제 정보 -->

            <hr class="mt20">

            <ul class="list-link">
                <li>
                    <strong class="tit">약관동의</strong>
                    <label class="form-checkbox">
                        <input type="checkbox">
                        <span class="ico ico-checkbox"></span>
                        <b>주문할 상품의 상품명, 상품가격, 배송정보, 환불규정을 확인하였으며 구매에 동의합니다. (전자상거래법 제8조 제2항)</b>
                    </label>
                </li>
            </ul>
            <% '// 신규 수정 영역 19/08 %>

            <% if false then %>
            <!-- S : 장바구니 안내 -->
            <div class="gray-box2 txt-left mt10">
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
        <a href="payend.asp" class="btn btn-black">결제하기</a>
    </div>
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->



<script type="text/javascript">

$(function(){
    
});

</script>