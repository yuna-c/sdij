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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
			<!-- S : SNB -->
			<!--#include virtual="/totalWebSite/renew2019/sdijS/_mypage/inc.snb.asp"-->
			<!--// E : SNB -->
            <div class="board-layout">
                <h2 class="page-tit">장바구니</h2>

                <!-- S : STEP -->
                <div class="step-box mb0">
                    <h4 class="tit">step1. 장바구니</h4>
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
                            <col style="width:50px;">
                            <col style="width:120px;">
                            <col style="width:auto;">
                            <col style="width:80px;">
                            <col style="width:130px;">
                            <col style="width:130px;">
                            <col style="width:50px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>
                                    <label class="form-checkbox">
                                        <input type="checkbox" class="check-all">
                                        <span class="ico ico-checkbox"></span>
                                    </label>
                                </th>
                                <th colspan="2">상품정보</th>
                                <th>수량</th>
                                <th>판매가</th>
                                <th>합계</th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i = 1 To 2 %>
                            <tr>
                                <td>
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                    </label>
                                </td>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                </td>
                                <td>
                                    <div class="form-select form-amount">
                                        <select>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    <% '상품 정가가 있을 경우 %>
                                    <del>1,100,000원</del>
                                    <% '// 상품 정가가 있을 경우 %>

                                    1,000,000원
                                </td>
                                <td><b>1,100,000원</b></td>
                                <td>
                                    <button class="txt-link color-gray">삭제</button>
                                </td>
                            </tr>
                            <% next %>
                            <!-- S : 장바구니 버튼 -->
                            <tr class="btn-area">
                                <td colspan="7">
                                    <button class="btn btn-xs2">전체상품 삭제</button>
                                    <button class="btn btn-xs2">선택상품 삭제</button>
                                </td>
                            </tr>
                            <!--// E : 장바구니 버튼 -->
                        </tbody>
                        <tfoot>
                            <tr class="total-area">
                                <td colspan="7">
                                    <!-- S : 장바구니 금액 -->
                                    <div class="total-line">
                                        <dl>
                                            <dt>총 상품금액</dt>
                                            <dd><b>1,000,000</b>원</dd>
                                        </dl>
                                        <dl>
                                            <dt>배송비</dt>
                                            <dd><b>2,500</b>원</dd>
                                        </dl>
                                        <dl>
                                            <dt>총 결제예정금액</dt>
                                            <dd><b>1,002,500</b>원</dd>
                                        </dl>
                                    </div>
                                    <!--// E : 장바구니 금액 -->
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>

                <div class="board-btn txt-center mt50">
                    <a href="checkout.asp" class="btn btn-black btn-lg">주문/결제</a>
                </div>
                <!--// E : 장바구니 리스트 -->

                <% if false then %>
                <!-- S : 장바구니 안내 -->
                <div class="gray-box2 txt-left mt50">
                    <ul class="list-number">
                        <li>장바구니에 담겨진 상품/강좌/교재/도서는 30일 동안 보관됩니다.<br>(단, 판매종료 상품은 별도 고지없이 삭제)</li>
                        <li>교재 배송비는 주문 1건당 2,500원입니다. (만원이상 구매 시 무료배송)</li>
                        <li>단순 변심에 의한 반송 시, 환불금액에서 왕복 배송비가 제외됩니다.</li>
                        <li>교재가 포함된 상품 또는 강좌의 결제를 취소하시면 해당 교재도 함께 취소됩니다.</li>
                        <li>수강 중인 강좌와 교재는 수강 중 재구매 할 수 없습니다.</li>
                    </ul>
                    <div class="txt-right mt50">
                        <a href="http://www.sdijbooks.com/board/faq_list.asp?mcd=175" target="_blank" class="txt-link2"><b>시대인재 상품별 환불규정</b></a>
                        <a href="http://www.sdijbooks.com/board/faq_list.asp?mcd=175" target="_blank" class="txt-link2"><b>교재 배송 및 구매 안내</b></a>
                    </div>
                </div>
                <!--// E : 장바구니 안내 -->
                <% end if %>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
    // 체크박스 all
    $('.check-all').on('click', function(){
        $(this).parents('table').children('tbody').find('input[type="checkbox"]').prop('checked', this.checked);
    });
});

</script>
