<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 주문/결제 > (M)배송지 목록
' 모듈기능 : 시대인재 Digital > 주문/결제 > (M)배송지 목록
' 파 일 명 : incModalDelivery.asp
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
<div class="modal-container modal-M modal-cash">
    <div class="modal-header">
        <h3 class="tit-dep4">캐시 충전하기</h3>
    </div>

    <div class="modal-content">
        <!-- S : 캐시 충전하기 -->
        <div class="form-type1">
            <dl>
                <dt>충전할 금액</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="" id="" placeholder="충전할 금액을 입력해주세요.">
                    </label>
					<p class="txt-info color-black">충전가능금액 50만원, 1회50만원/월50만원 충전 가능<i class="ico-alert">!</i></p>
				</dd>
				<dt>결제금액</dt>
                <dd>
					<div class="form-toggle">
						<label class="toggle-radio">
							<input type="radio" id="toggle1" name="toggle" checked>
							<span>2만원</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="toggle2" name="toggle">
							<span>5만원</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="toggle3" name="toggle">
							<span>10만원</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="toggle4" name="toggle">
							<span>20만원</span>
						</label>
					</div>
				</dd>
				<dt>결제수단</dt>
                <dd>
					<div class="form-toggle">
						<label class="toggle-radio">
							<input type="radio" id="toggle-pay1" name="toggle-pay" checked>
							<span>무통장입금</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="toggle-pay2" name="toggle-pay">
							<span>계좌이체</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="toggle-pay3" name="toggle-pay">
							<span>카드결제</span>
						</label>
					</div>	
				</dd>
			</dl>
		</div>
        <!--// E : 캐시 충전하기 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-cash');" class="btn btn-black">확인</a>
    </div>
</div>