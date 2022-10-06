<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 결제에러페이지
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 결제에러페이지
' 파 일 명 : payerror.asp
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
pg_menu_code = ""	' DB 등록 메뉴 코드 기재






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

<!-- S : container -->
<div id="container">
	<!-- S : 컨텐츠 영역 -->
	<div class="layout-container">
		<div class="content-layout">
			<h2 class="step-tit">페이지 오류 안내</h2>

			<div class="info-box mt0 pt50">
				<p class="tit mb20">
                    결제가 정상적으로 이루어지지 않았습니다.
				</P>
				<p class="txt">이용에 불편을 드려 죄송합니다.<br>잠시 후에 이용해 주십시요.</p>
			</div>

			<!-- S : board-btn -->
			<div class="board-btn mt30 txt-center">
				<a href="/" class="btn btn-lg btn-black">홈으로가기</a>
			</div>
			<!--// E : board-btn -->
		</div>
	</div>
	<!--// E : 컨텐츠 영역 -->
</div>
<!--// E : container -->

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->