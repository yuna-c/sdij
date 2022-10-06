<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 취소/교환/환불 신청 > 취소/교환/환불 신청완료
' 모듈기능 : 시대인재 Digital > 취소/교환/환불 신청 > 취소/교환/환불 신청완료
' 파 일 명 : orderCancleEnd.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/pay.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="end-container">
        <div class="content-layout info-layout">
            <i class="ico-check"></i>
            
            <h3 class="tit-dep2">
                <span class="tit">취소 신청이 완료되었습니다.</span><!-- 신청 타입에 따라 취소/교환/환불 신청으로 타이틀 변경 -->
                <small>자세한 사항은 주문상세보기 페이지에서 확인이 가능합니다.</small>
            </h3>

            <div class="goods-area">
                <div class="book-img">
                    <img src="https://via.placeholder.com/60x90" alt="상품 이미지">
                </div>

                <div class="tit-area">
                    상품명상품명상품명상품명 외 3건
                </div>

                <a href="/totalWebSite/sdijx/pay/orderView.asp" class="btn btn-M">주문 상세보기</a>
            </div>
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->