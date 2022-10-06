<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">
        부엉이 라이브러리 좌석 예약 서비스
    </h2>

    <div class="board-layout">
        <table class="line-t">
            <tbody>
                <tr>
                    <th>
                        신청방법
                    </th>
                    <td>
                        - 시대인재 N 재종 재원생만 본 서비스를 이용할 수 있습니다. <br/>
                        - 핸드폰 번호 인증 후 원하는 좌석 번호를 선택하세요.
                    </td>
                </tr>
                <tr>
                    <th>
                        문의
                    </th>
                    <td>
                        - 부엉이라이브러리 이용 관련 문의: 02-538-2321 <br/>
                        - 좌석 신청 및 변경 등 절차 문의: 1522-0568 (시대인재 ON)
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="board-btn mb30 txt-right">
            <a href="javascript:void(0);" class="btn btn-sm btn-gray" onclick="db_pop('pop_01'); return false;">예약내역 조회</a>
        </div>
        <div class="step-list m_b45">
            <div class="on"><em>1</em>본인인증</div>
            <div><em>2</em>좌석선택</div>
            <div><em>3</em>완료</div>
        </div>
        <div class="form-defult" style="width:100%;">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>이름 *</th>
                        <td colspan="3"><input type="text" class="input-text" id="authNm" name="authNm" placeholder="이름"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>휴대폰 번호 *</th>
                        <td>
                            <select class="select" title="휴대폰번호 앞 세자리" name="authHp1" id="authHp1">
                                <option>010</option>
                                <option>011</option>
                                <option>017</option>
                                <option>018</option>
                                <option>019</option>
                            </select>
                        </td>
                        <td><input type="text" title="휴대폰번호 가운데 네자리" name="authHp2" id="authHp2" maxlength="4" class="input-text"></td>
                        <td><input type="text" title="휴대폰번호 뒤 네자리" name="authHp3" id="authHp3" maxlength="4" class="input-text"></td>
                        <td>
                            <button type="button" id="ipa" onclick="IfPhoneAuth();" class="btn btn-darkgray">인증번호받기</button>
                        </td>
                    </tr>
                     <tr>
                        <th>인증번호 *</th>
                        <td colspan="2"><input type="text" class="input-text" id="authNumber" name="authNumber"></td>
                        <td><span class="timer"><em>인증번호 입력 남은시간</em><span id="authTimer">3:00</span></span></td>
                        <td>
                           <button type="button" onclick="javascript:IfSend();" class="btn btn-darkgray">확인</button>
                        </td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            * 입력한 핸드폰 번호로 인증번호가 발송됩니다. <br/>
                            * 인증된 핸드폰 번호로 추후 예약내역 조회 및 취소가 가능합니다.
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <label class="check mb10">
                                <input type="checkbox" id="agree" name="agree" value="Y">
                                    <span class="b">
                                       개인정보 수집 및 이용에 동의합니다.
                                    </span>
                            </label>
                            <div class="agree-box">
                                시대인재  N 재수종합 학원은 부엉이라이브러리 자리 예약 서비스 제공을 위한 최소한의 개인정보를 수집·이용합니다. <br>
                                [수집항목] 이름, 핸드폰번호, 재원정보, 예약정보[수집목적] 학원 재원 정보 조회, 학원 수강 관련 정보제공 등에 사용[개인정보의 보유 및 이용기간] 서비스 종료 후 30일 이내 파기 단, 재원생 인증 결과 조회된 재원정보(학원, 수강반, 정보)는 회원 탈퇴 시 파기<br> <br>
                                <em>* 개인정보 수집 및 이용 동의를 하지 않을 경우 관련 서비스의 제한이 있을 수 있습니다.</em>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3" class="pt30">
                           <button type="button" class="btn btn-black">좌석 선택</button>
                        </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">
    var db_pop = function(url){
        var popWidth =  "500"
        var popHeight =  "600"
        var winHeight = document.body.clientHeight; // 현재창의 높이
        var winWidth = document.body.clientWidth;   // 현재창의 너비
        var winX = window.screenLeft;   // 현재창의 x좌표
        var winY = window.screenTop;    // 현재창의 y좌표

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"",tOpt);

    };

</script>