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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container">
        <div class="content-layout">
            <h2 class="step-tit">
                <% if true then '취소 신청 시 %>
                취소 신청
                <% else '반품 신청 시 %>
                반품 신청
                <% end if %>
            </h2>

            <!-- S : STEP -->
            <div class="step-box mb0">
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
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <td class="check-area">
                                <label class="form-checkbox">
                                    <input type="checkbox" class="check-all">
                                    <span class="ico ico-checkbox"></span>
                                    <span>전체선택</span>
                                </label>

                                <!-- <div class="board-btn">
                                    <button class="btn btn-xs2">전체 삭제</button>
                                    <button class="btn btn-xs2">선택 삭제</button>
                                </div> -->
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
                                    [<span>모의고사</span>]
                                    상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명상품명
                                </label>
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

                                    <div class="form-select form-amount">
                                        <select>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>
            <!--// E : 취소/반품 리스트 -->

            <hr style="margin-top:-1px;">

            <!-- S : 환불 계좌 정보 -->
            <h4 class="table-tit border-none mt30">환불 계좌 정보</h4>
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
                            <td>
                                <div class="form-input">
                                    <input type="text" placeholder="이름">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-select">
                                    <select>
                                        <option value="은행 선택">은행선택</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-input">
                                    <input type="text" placeholder="계좌번호">
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </form>
            </div>
            <!--// E : 환불 계좌 정보 -->

            <hr class="mt30">

            <ul class="list-link">
                <% if true then '강좌 구매 시 노출 X %>
                <li><a href="javascript:void(0);" onclick="fnOpenLayer('delv-list-my-pop')" class="link-right">
                    <strong class="tit">
                        회수지 정보
                    </strong>
                    <span>홍길동</span>
                    <span>서울시 강남구 삼성로 434 쥬비스타워</span>
                    <span>010-1234-5678 / 02-1234-5678</span>
                    <span>배송 전 연락주세요.</span>
                </a></li>
                <% end if %>
                <li>
                    <strong class="tit">
                        <% if true then %>
                        취소
                        <% else '반품일 경우 %>
                        반품
                        <% end if %> 
                        신청 사유
                    </strong>
                    <div class="form-select">
                        <select class="etc-select">
                            <option value="">신청 사유 선택</option>
                            <option value="313001">파손된 교재가 배송 됐어요.</option>
                            <option value="313002">결제한 상품 외에 다른 상품이 배송 됐어요.</option>
                            <option value="313003">이 상품은 이용하고 싶지 않아요.(고객 변심)</option>
                            <option value="313004">다른 상품으로 재구매 할 거예요.(고객 변심)</option>
                            <option value="313005">직접 입력</option>
                        </select>
                    </div>
                    <div class="form-input ect-input mt10" style="display:none;">
                        <input type="text">
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 --> 

    <div class="board-btn page-btn">
        <input type="submit" onclick="location.href='/totalMobileSite/renew2019/sdijS/_mypage/order/order_check_cancel_end.asp'" class="btn btn-black" value="신청">
    </div>

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

    // 신청 사유 -> 직접 입력
    $(".etc-select").on('change', function() {
        if ($(this).val() == "313005") {
            $(".ect-input").show();
        } else {
            $(".ect-input").hide();
        }
    });
});

</script>