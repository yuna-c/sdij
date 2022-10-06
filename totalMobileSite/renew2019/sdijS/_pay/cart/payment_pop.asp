<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 결제수단
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 결제수단
' 파 일 명 : payment_pop.asp
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
<div class="dim-full dim-fixed payment-pop">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit"><!-- <small>주문/결제</small> -->결제수단</h4>
    </div>

    <div class="content-layout">
        <div class="pop-form mt30">
        <form action="" method="">
            <dl>
                <dt class="blind">결제수단 선택</dt>
                <dd>
                    <label class="form-radio">
                        <input type="radio">
                        <span class="ico ico-radio"></span>
                        <span>신용/체크카드</span>
                    </label>
                </dd>
                <dd>
                    <label class="form-radio">
                        <input type="radio">
                        <span class="ico ico-radio"></span>
                        <span>계좌이체</span>
                    </label>
                </dd>
                <dd>
                    <label class="form-radio">
                        <input type="radio">
                        <span class="ico ico-radio"></span>
                        <span>무통장 입금</span>
                    </label>
                </dd>
                <dd>
                    <label class="form-radio">
                        <input type="radio">
                        <span class="ico ico-radio"></span>
                        <span>휴대폰 결제</span>
                    </label>
                </dd>
            </dl>     
        </form>
        </div>
    </div>

    <div class="board-btn page-btn">
        <a href="javascript:void(0);" onclick="fnCloseLayer(this);" class="btn btn-black">저장</a>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->
