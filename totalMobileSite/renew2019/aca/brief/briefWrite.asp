<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 설명회 신청 -->
    <div class="content-layout">
        <h2 class="page-tit">설명회 신청</h2>

        <!-- S : 설명회 안내 -->
        <div class="form-list">
            <table>
                <colgroup>
                    <col style="width:50px;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>주제</th>
                        <td>개정 과학탐구 설명회</td>
                    </tr>
                    <tr>
                        <th>일시</th>
                        <td>2019-01-01 (화) 11시 00분</td>
                    </tr>
                    <tr>
                        <th>장소</th>
                        <td>시대인재 2관 2층</td>
                    </tr>
                    <tr>
                        <th>학년</th>
                        <td>N수</td>
                    </tr>
                    <tr>
                        <th>개별</th>
                        <td>이과</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : 설명회 안내 -->

        <!-- S : 설명회 신청 -->
        <div class="form-defult mt30">
            <form action="" method="">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr class="info-txt">
                        <th colspan="3">학생과 학부모과 모두 설명회에 참석하실 경우<br>각각 별도로 예약하셔야 합니다.</th>
                    </tr>
                    <tr>
                        <th colspan="3">이름 *</th>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th colspan="3">휴대폰번호 *</th>
                    </tr>
                    <tr>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td><input type="button" onclick="fnAlertMsg('인증되었습니다.')" value="인증번호 받기" class="btn btn-darkgray"></td>
                    </tr>
                    <tr>
                        <th>인증번호 *</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="cert-form">
                                <input type="text" maxlength="6" class="input-text">
                                <span class="cert-txt">3:00</span>
                            </div>
                        </td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증이 실패되었습니다.<br>인증번호를 다시 입력하세요.')" value="확인" class="btn btn-darkgray">
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">학교 *</th>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th colspan="3">계열/학년</th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <select class="select select-mid">
                                <option value="선택">선택</option>
                            </select>
                            <select class="select select-mid">
                                <option value="학년">학년</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="form-agree">
                <div class="agree-box">약관내용</div>
                
                <div class="txt-left">
                    <label class="check">
                        <input type="checkbox">
                        <span>네, 개인정보 수집·이용에 동의합니다.</span>
                    </label>

                    <label class="check">
                        <input type="checkbox">
                        <span>설명회 참석안내 SMS를 받겠습니다.</span>
                    </label>
                </div>
            </div>

            <!-- S : board-btn -->
            <div class="board-btn txt-center">
                <input type="submit" class="btn btn-lg btn-strong btn-black" value="신청">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
        <!--// E : 설명회 신청 -->
    </div>
    <!--// E : 설명회 신청 -->    
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"--> 