<!--include virtual="/totalWebSite/renew2019/sdijS/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 배송비쿠폰 선택 
' 파 일 명 : coupon_delivery_pop.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



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
<body>
<div class="pop-content">
    <h4 class="pop-tit txt-center">배송비쿠폰 선택</h4>

    <div class="dim-coupon">
        <form action="" method="">
        <ul>
        <% for i = 1 to 5 %>
            <li>
                <label class="form-radio">
                    <input type="radio">
                    <span class="ico ico-radio"></span>
                    <span class="tit">2,500원</span>
                    <span class="txt">배송비 무료 쿠폰</span>
                </label>
                <span class="date-txt">2019-08-16 까지</span>
            </li>
        <% next %>
        </ul>
        <div class="total-txt">
            총 할인금액 <strong>2,500원</strong>
        </div>

        <div class="dim-btn txt-center">
            <button class="btn btn-black btn-confirm">적용하기</button>
            <button class="btn btn-darkgray btn-confirm">취소</button>
        </div>
        </form>
    </div>
</div>
</body>
</html>