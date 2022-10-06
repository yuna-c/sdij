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
<div class="modal-container modal-M modal-coupon">
    <div class="modal-header">
        <h3 class="tit-dep4">쿠폰 등록하기</h3>
    </div>

    <div class="modal-content">
        <!-- S :쿠폰 등록하기 -->
        <div class="noti-content mb10">
			<span>쿠폰 번호를 정확하게 입력 후 등록 버튼을 클릭하세요.</span>
        </div>

		 <div class="form-type1">
            <dl>
                <dt>쿠폰번호입력</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="" id="" placeholder="쿠폰번호를 입력해주세요.">
                    </label>
					<p class="txt-info color-black">쿠폰 번호는 영문, 숫자 혼합으로 이루어져 있습니다.<i class="ico-alert">!</i></p>
					<p class="txt-info color-black">대소문자 구분 없이 입력 가능합니다.<i class="ico-alert">!</i></p>
					<p class="txt-info color-black">쿠폰 마다 등록/사용 기간이 다르니, 등록 후 <br> My coupon > 쿠폰확인하기를 통해서 확인해 주세요.<i class="ico-alert">!</i></p>
				</dd>
			</dl>
        <!--// E : 쿠폰 등록하기 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-coupon');" class="btn btn-black">확인</a>
    </div>
</div>