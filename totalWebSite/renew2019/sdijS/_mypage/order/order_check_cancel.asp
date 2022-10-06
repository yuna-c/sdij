<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 취소/반품
' 모듈기능 : 공통 > 마이페이지 > 취소/반품
' 파 일 명 : order_check_cancel.asp
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
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="board-layout">
                <h2 class="page-tit">
                    <% if true then '취소 신청 시 %>
                    취소 신청
                    <% else '반품 신청 시 %>
                    반품 신청
                    <% end if %>
                </h2>

                <!-- S : STEP -->
                <div class="step-box mb0">
                    <h4 class="tit">step1. 
                        <% if true then '취소 신청 시 %>
                        취소 신청
                        <% else '반품 신청 시 %>
                        반품 신청
                        <% end if %>
                    </h4>
                    <ul class="step">
                        <li class="on">1</li>
                        <li>2</li>
                    </ul>
                </div>
                <!--// E : STEP -->

                <!-- S : 취소/반품 리스트 -->
                <div class="board-list board-cart">
                    <table>
                        <colgroup>
                            <col style="width:50px;">
                            <col style="width:120px;">
                            <col style="width:auto;">
                            <col style="width:80px;">
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
                                    <span>10,000원</span>
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
                            </tr>
                            <% next %>
                        </tbody>
                        <tfoot>
                            <tr class="pay-area">
                                <td class="type2-box" colspan="4">
                                    <dl>
                                        <dt>상품금액</dt>
                                        <dd><b>1,000,000</b>원</dd>
        
                                        <dt>할인쿠폰</dt>
                                        <dd><b>2,500</b>원</dd>
        
                                        <dt>배송비</dt>
                                        <dd><b>2,500</b>원</dd>
        
                                        <dt>캐시</dt>
                                        <dd><b>12,500</b>원</dd>
        
                                        <dt class="mt5">총 결제금액</dt>
                                        <dd class="mt5"><b>1,002,500</b>원</dd>
                                    </dl>
                                    
                                    <% '취소, 반품 시에만 노출 %>
                                    <dl class="refund-list">
                                        <dt class="mt5">총 환불금액</dt>
                                        <dd class="mt5"><b>1,002,500</b>원</dd>
                                    </dl>
                                    <% '// 취소, 반품 시에만 노출 %>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!--// E : 취소/반품 리스트 -->

                <% if true then '강좌 구매 시 노출 X %>
                <!-- S : 상품 회수 주소 -->
                <h4 class="table-tit border-none">
                    회수지 정보
                    <small><button onclick="window.open('/_pay/cart/delv_list_my_pop.asp','회수지 목록에서 선택','width=820, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="btn btn-sm">회수지 변경</button></small>
                </h4>
                <div class="form-defult form-defult2">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>이름</th>
                                <td colspan="3">홍길동</td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td colspan="3">서울시 강남구 삼성로 434 쥬비스타워 5층</td>
                            </tr>
                            <tr>
                                <th>휴대폰 번호</th>
                                <td colspan="3">010-1234-5678</td>
                            </tr>
                            <tr>
                                <th>전화번호</th>
                                <td>02-1234-5678</td>
                            </tr>
                            <tr>
                                <th>회수요청사항</th>
                                <td colspan="3">배송 전 연락주세요.</td>
                            </tr>
                        </tbody>
                    </table>
                </div> 
                <!--// E : 상품 회수 주소 -->
                <% end if %>

                <!-- S : 환불 계좌 정보 -->
                <h4 class="table-tit border-none">환불 계좌 정보</h4>
                <div class="form-defult form-defult2">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>예금주</th>
                                <td>
                                    <div class="form-input">
                                        <input type="text">
                                    </div>
                                </td>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <th>은행 / 계좌번호</th>
                                <td>
                                    <div class="form-select">
                                        <select>
                                            <option hidden disabled selected>은행선택</option>
                                            <option value="">신한은행</option>
                                        </select>
                                    </div>
                                </td>
                                </td>
                                <td colspan="2">
                                    <div class="form-input">
                                        <input type="text">
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 환불 계좌 정보 -->

                <!-- S : 취소/반품 신청 사유 -->
                <h4 class="table-tit border-none">
                    <% if true then %>
                    취소
                    <% else '반품일 경우 %>
                    반품
                    <% end if %> 
                    신청 사유
                </h4>
                <div class="form-defult form-defult2">
                    <table>
                        <colgroup>
                            <col style="width:200px;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>신청사유</th>
                                <td>
                                    <div class="form-select">
                                        <select class="etc-select">
                                            <option hidden disabled selected>신청 사유 선택</option>
                                            <option value="313001">파손된 교재가 배송 됐어요.</option>
                                            <option value="313002">결제한 상품 외에 다른 상품이 배송 됐어요.</option>
                                            <option value="313003">이 상품은 이용하고 싶지 않아요.(고객 변심)</option>
                                            <option value="313004">다른 상품으로 재구매 할 거예요.(고객 변심)</option>
                                            <option value="313005">직접 입력</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr class="ect-input" style="display:none;">
                                <td>
                                    <div class="form-input">
                                        <input type="text" class="input-text">
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 취소/반품 신청 사유 -->

                <div class="board-btn txt-center mt50">
                    <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_cancel_end.asp" class="btn btn-black btn-lg">신청</a>
                </div>
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

    // 신청 사유 -> 직접 입력
    $(".etc-select").on('change', function() {
        if ($(this).val() == "313005") {
            $(".ect-input").show();
            $(".ect-input").prev().children('th').attr('rowspan', 2);
        } else {
            $(".ect-input").hide();
            $(".ect-input").prev().children('th').attr('rowspan', 1);
        }
    });
});

</script>