<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 취소/반품완료
' 모듈기능 : 공통 > 마이페이지 > 취소/반품완료
' 파 일 명 : order_check_cancel_end.asp
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
            <h2 class="step-tit"><% if true then '취소 신청 시 %>취소<% else '반품 신청 시 %>반품<% end if %>신청완료</h2>

            <!-- S : STEP -->
            <div class="step-box mb0">
                <ul class="step">
                    <li class="prev">1</li>
                    <li class="on">2</li>
                </ul>
            </div>
            <!--// E : STEP -->

            <div class="info-box mt50">
                <p class="tit"><% if true then '취소 신청 시 %>취소<% else '반품 신청 시 %>반품<% end if %> 신청이 완료되었습니다.<br></p>
            </div>
            
            <!-- S : 취소/반품 리스트 -->
            <div class="board-list board-cart">
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
                </table>
            </div>
            <!--// E : 취소/반품 리스트 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 --> 

    <div class="board-btn page-btn">
        <a href="/totalMobileSite/renew2019/sdijS/_mypage/order/order_check_detail.asp" class="btn btn-lightgray">취소상세보기</a>
        <a href="#" class="btn btn-black">메인으로</a>
    </div>
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
 
});

</script>