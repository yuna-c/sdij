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
            <h2 class="step-tit">주문완료</h2>

            <!-- S : STEP -->
            <div class="step-box mb0">
                <ul class="step">
                    <li class="prev">1</li>
                    <li class="prev">2</li>
                    <li class="on">3</li>
                </ul>
            </div>
            <!--// E : STEP -->

            <div class="info-box mt50">
                <p class="tit mb10">주문이 완료되었습니다.<br></p>
                <p class="txt">구매해주셔서 감사합니다.</p>
            </div>

            <hr class="mt30">

            <!-- S : 구매내역 리스트 -->
            <h4 class="table-tit border-none mt30">주문상품</h4>
            <div class="board-list board-cart mb0">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <% For i = 1 To 2 %>
                        <tr>
                            <td class="info-area">
                                <div class="img"><a href="#"><img src="https://via.placeholder.com//100x100" alt="상품 이미지"></a></div>
                                <div class="txt">
                                    <a href="#">
                                        [<span>모의고사</span>]
                                        상품명
                                    </a>
                                    <p class="option">1</p>
                                </div>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                    <tfoot>
                        <tr class="total-area mt0">
                            <td>
                                <div>
                                    <dl class="total-line">
                                        <dt>총 결제금액</dt>
                                        <dd><b>1,002,500</b>원</dd>
                                    </dl>
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <!--// E : 구매내역 리스트 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <a href="/totalMobileSite/renew2019/sdijS/_mypage/order/order_check_detail.asp" class="btn btn-black">주문상세보기</a>
        <a href="#" class="btn btn-darkgray">메인으로</a>
    </div>
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
    
});

</script>