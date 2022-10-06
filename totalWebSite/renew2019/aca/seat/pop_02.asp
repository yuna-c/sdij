<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/layout.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/board.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/reset.css">
<!-- S :  입실번호발급 인증하기 -->
    <div class="pop-content pop-form lg">
        <h4 class="pop-tit">입실번호발급 인증하기</h4>
        <p class="mb20 small-t">
            - 학원에 등록한 학생이름과 핸드폰번호로 인증하세요. <br/>
            - 인증받은 핸드폰번호로 입실번호 발급 신청을 위한 아이디와 비번이 발송됩니다. <br/>
            - 아이디, 비번은 해당 수업이 종료되면 폐기되므로, 매 수업 회차마다 인증을 새롭게 받으셔야 합니다. <br/>
            - SMS 발송오류 등으로 아이디, 비번 수신을 못한 경우 이름과 핸드폰번호 기재 후 아이디 문자 재발송 신청 메일을 보내주세요.
        </p>
        <div class="small-t bg mb30">
            문자 재발송 신청기간: <span class="txt-link color-red">인증시작시간 ~ 익일 오전 10시까지, 기간 엄수</span> <br/>
            메일주소: <span class="txt-link color-blue">sdij@sdij.com</span> <br/>
            관리자가 인증내역 확인 후 1회에 한하여 재발송하며,<br/>
            인증이력이 없거나 이름, 핸드폰번호 정보가 다른 경우 처리가 어려운 점 양지하시기 바랍니다. (전화 응대 불가)
        </div>
        <form action="" method="">
        <table>
            <colgroup>
                <col style="width:80px;">
                <col style="width:auto;">
                <col style="width:100px;">
            </colgroup>
            <tbody>
                <tr>
                    <th>이름</th>
                    <td colspan="2"><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>휴대폰 번호</th>
                    <td><input type="text" class="input-text"></td>
                    <td><input type="button" class="btn btn-white" value="인증번호 전송"></td>
                </tr>
                <tr>
                    <th>인증번호</th>
                    <td colspan="2"><div class="cert-form">
                        <input type="text" maxlength="6" class="input-text" placeholder="인증번호">
                        <span class="cert-txt">3:00</span>
                    </div></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <label class="check mb10">
                            <input type="checkbox" id="agree" name="agree" value="Y">
                                <span>
                                   개인정보 수집 및 이용에 동의합니다.
                                </span>
                        </label>
                        <div class="agree-box">
                            시대인재학원은 강의실 입실번호 발급 서비스 제공을 위한 최소한의 개인정보를 수집·이용합니다.<br/>
                            [수집항목] 이름, 핸드폰번호, 재원정보, 예약정보<br/>
                            [수집목적] 재원여부 확인 및 입실번호 발급 서비스 제공 목적 <br/>
                            [개인정보의 보유 및 이용기간] 재원 종료 시점으로부터 6개월 이내 파기 <br/><br/>
                            * 개인정보 수집 및 이용 동의를 하지 않을 경우 관련 서비스의 제한이 있을 수 있습니다
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="dim-btn txt-center">
            <button class="btn btn-black btn-confirm full">인증</button>
        </div>
        </form>
    </div>
    <!--// E :  입실번호발급 인증하기 -->