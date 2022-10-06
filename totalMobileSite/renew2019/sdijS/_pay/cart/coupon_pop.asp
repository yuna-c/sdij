
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 할인쿠폰 선택 
' 파 일 명 : coupon_pop.asp
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
<div class="dim-full dim-fixed coupon-pop">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit">할인쿠폰 선택</h4>
    </div>

    <div class="content-layout">
        <div class="dim-coupon">
            <form action="" method="">
            <dl>
            <% for i = 1 to 5 %>
                <dt><div>[수학] 강좌명 강좌명 강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</div></dt>
                <dd>
                    <label class="form-radio">
                        <input type="radio">
                        <span class="ico ico-radio"></span>
                        <span class="tit">10,000원</span>
                        <span class="txt">신학기 할인 쿠폰 전체 금액 20% 할인</span>
                    </label>
                    <span class="date-txt">2019-08-16 까지</span>
                </dd>
                <dd>
                    <label class="form-radio">
                        <input type="radio">
                        <span class="ico ico-radio"></span>
                        <span class="tit">10,000원</span>
                        <span class="txt">신학기학기학기학기학기학기학기학기학기학기학기학기학기학기학기학기 할인 쿠폰 전체 금액 20% 할인</span>
                    </label>
                    <span class="date-txt">2019-08-16 까지</span>
                </dd>
    
                <dt><div>[국어] 강좌명 강좌명 강좌명강좌명강좌명강좌명강좌명강강좌명강좌명강강좌명강좌명강좌명강좌명강좌명강좌명</div></dt>
                <dd>
                    <label class="form-radio">
                        <input type="radio">
                        <span class="ico ico-radio"></span>
                        <span class="tit">10,000원</span>
                        <span class="txt">신학기 할인 쿠폰 전체 금액 20% 할인</span>
                    </label>
                    <span class="date-txt">2019-08-16 까지</span>
                </dd>
            <% next %>
            </dl>
            <div class="total-txt">
                총 할인금액 <strong>15,000원</strong>
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