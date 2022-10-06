<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <div class="layer-top">
            <a href="javascript:history.back();"><span class="ico ico-close"></span></a>
        </div>

        <h2 class="page-tit">입실번호발급 인증하기</h2>

        <p class="mb20 small-t">
            - 학원에 등록한 학생이름과 핸드폰번호로 인증하세요. <br>
            - 인증받은 핸드폰번호로 입실번호 발급 신청을 위한 <br/>
            &nbsp; 아이디와 비번이 발송됩니다. <br>
            - 아이디, 비번은 해당 수업이 종료되면 폐기되므로, 매 수업 <br/>
            &nbsp; 회차마다 인증을 새롭게 받으셔야 합니다. <br>
            - SMS 발송오류 등으로 아이디, 비번 수신을 못한 경우 이름과 <br/>
            &nbsp; 핸드폰번호 기재 후 아이디 문자 재발송 신청 메일을 <br/>
            &nbsp; 보내주세요.
        </p>

        <div class="small-t bg mb20">
            문자 재발송 신청기간: <span class="txt-link color-red">인증시작시간 ~ 익일 오전 10시까지, 기간 엄수</span> <br>
            메일주소: <span class="txt-link color-blue">sdij@sdij.com</span> <br>
            관리자가 인증내역 확인 후 1회에 한하여 재발송하며,<br>
            인증이력이 없거나 이름, 핸드폰번호 정보가 다른 경우 처리가 어려운 점 양지하시기 바랍니다. (전화 응대 불가)
        </div>

        <!-- S : 입실번호발급 인증하기 -->
        <div class="form-defult">

            <form id="searchForm" name="searchForm" method="post">
            <input type="hidden" id="briefNm" name="briefNm" value="">
            <input type="hidden" id="briefHp" name="briefHp" value="">

            <!-- 인증 Set s -->
            <input type="hidden" id="authIdx" name="authIdx" value="">
            <input type="hidden" id="authTimeFlag" name="authTimeFlag" value="N">
            <input type="hidden" id="authConfirmFlag" name="authConfirmFlag" value="N">
            <!-- 인증 Set e -->

            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th colspan="3">이름 *</th>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text" id="brieNm" name="brieNm" maxlength="15"></td>
                    </tr>
                    <tr>
                        <th colspan="3">휴대폰번호 *</th>
                    </tr>
                    <tr>
                        <td>
                            <select class="select" title="휴대폰번호 앞 세자리" name="brieHp1">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                        </td>
                        <td><input type="text" maxlength="4" class="input-text onlyNumber" title="휴대폰번호 가운데 네자리" name="brieHp2"></td>
                        <td><input type="text" maxlength="4" class="input-text onlyNumber" title="휴대폰번호 가운데 네자리" name="brieHp3"></td>
                    </tr>
                    <tr>
                        <td><input type="button" value="인증번호 받기" class="btn btn-darkgray" id="ipa" onclick="IfPhoneAuth()" style="cursor:pointer"></td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <th>인증번호 *</th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div class="cert-form">
                                <input type="text" maxlength="6" class="input-text onlyNumber" id="authNumber" name="authNumber">
                                <span class="cert-txt" id="authTimer">3:00</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                          <label class="check mb10">
                                <input type="checkbox" id="check" name="check">
                                    <span>
                                       개인정보 수집 및 이용에 동의합니다.
                                    </span>
                            </label>
                             <div class="agree-box">
                                시대인재  N 재수종합 학원은 부엉이라이브러리 자리 예약 서비스 제공을 위한 최소한의 개인정보를 수집·이용합니다. <br>
                                [수집항목] 이름, 핸드폰번호, 재원정보, 예약정보[수집목적] 학원 재원 정보 조회, 학원 수강 관련 정보제공 등에 사용[개인정보의 보유 및 이용기간] 서비스 종료 후 30일 이내 파기 단, 재원생 인증 결과 조회된 재원정보(학원, 수강반, 정보)는 회원 탈퇴 시 파기<br> <br>
                                <em>* 개인정보 수집 및 이용 동의를 하지 않을 경우 관련 서비스의 제한이 있을 수 있습니다.</em>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- S : board-btn -->
            <div class="board-btn txt-center mt30">
                <input type="button" class="btn btn-lg btn-strong btn-black" value="확인" onclick="location.href='library_list.asp'" style="cursor:pointer">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
        <!--// E : 입실번호발급 인증하기 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->