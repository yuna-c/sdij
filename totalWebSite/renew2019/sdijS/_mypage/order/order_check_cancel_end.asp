<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 취소/반품완료
' 모듈기능 : 공통 > 마이페이지 > 취소/반품완료
' 파 일 명 : payend.asp
' 작성일자 : 2019-05-31
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
' 
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------
    'pg_menu_code = ""	   ' DB 등록 메뉴 코드 기재
    'SET_GOURL URL_SELF     ' 이동할 URL 주소 쿠키 설정 Reponse.cookies("go_url")
    'GO_LOGIN()            ' 로그인 인증 필용 시 사용, 불필요시 주석 처리






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
                    <% if true then '취소 신청 시 %>취소<% else '반품 신청 시 %>반품<% end if %>신청완료
                </h2>

                <!-- S : STEP -->
                <div class="step-box mb0">
                    <h4 class="tit">step1. 신청완료</h4>
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
                <div class="board-list board-cart mt50">
                    <table>
                        <colgroup>
                            <col style="width:140px;">
                            <col style="width:auto;">
                            <col style="width:70px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2">상품정보</th>
                                <th>수량</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                    <span>10,000원</span>
                                </td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                    <span>10,000원</span>
                                </td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 취소/반품 리스트 -->

                <div class="board-btn mt50 txt-center">
                    <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_detail.asp" class="btn btn-lg btn-black">
                        <% if true then '취소 신청 시 %>취소<% else '반품 신청 시 %>반품<% end if %>상세보기
                    </a>
                    <a href="#" class="btn btn-lg">메인으로</a>
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
    
});

</script>