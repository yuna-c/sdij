<%
'-----------------------------------------------------------------------
' 업 무 명 : 결제 > 캐쉬/쿠폰 > 캐시충전하기
' 모듈기능 : 결제 > 캐쉬/쿠폰 > 캐시충전하기
' 파 일 명 : pop.cashCharge.asp
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
<div class="dim-full dim-fixed pop-cashcharge">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit border-none">캐시 충전하기</h4>
    </div>

    <div class="content-layout">
        <div class="dim-select">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <b cclass="tit">충전 금액</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-multi col3">
                                <label><input type="radio" onclick="chargeCash('20000');">+ 2만원</label>
                                <label><input type="radio" onclick="chargeCash('50000');">+ 5만원</label>
                                <label><input type="radio" onclick="chargeCash('100000');">+ 10만원</label>
                                <label><input type="radio" onclick="chargeCash('300000');">+ 30만원</label>
                                <label><input type="radio" onclick="chargeCash('500000');">+ 50만원</label>
                                <label><input type="radio" onclick="chargeCash('ect');">다른금액</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-input">
                                <input type="text" value="충전 금액을 선택해 주세요." class="chargeNum" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="info-txt">
                            충전 가능 금액 : 50만원<br>
                            1회 50만원 / 월 100만원 충전 가능
                        </td>
                    </tr>
                    <tr>
                        <td class="pt30">
                            <b cclass="tit">결제정보</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="form-radio">
                                <input type="radio">
                                <span class="ico ico-radio"></span>
                                무통장 입금
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="form-radio">
                                <input type="radio">
                                <span class="ico ico-radio"></span>
                                실시간 계좌이체
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="form-radio">
                                <input type="radio">
                                <span class="ico ico-radio"></span>
                                카드결제
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="board-btn page-btn">
        <button type="button" class="btn btn-lightgray btn-cancle">취소</button>
        <a href="javascript:void(0);" class="btn btn-black btn-confirm">충전하기</a>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

// 캐시금액 입력
function chargeCash(num){
    var num = num;

    if( num == 'ect' ){
        $('.chargeNum').removeProp('readonly');
    }else{
        $('.chargeNum').prop({
            readonly: true,
            value: num
        });
    }
}

//-->
</script>
<!--// E : 페이지별 스크립트 -->