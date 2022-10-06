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

<!-- S : 컨텐츠 영역 -->
<div class="dim-full dim-fixed coupon-delivery-pop">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit">배송비쿠폰 선택</h4>
    </div>

    <div class="content-layout">       
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
            </form>
        </div>
    </div>

    <div class="board-btn page-btn">
        <button type="button" onclick="fnCloseLayer(this);" class="btn btn-black">적용하기</button>
        <button type="button" onclick="fnCloseLayer(this);" class="btn btn-darkgray">취소</button>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->