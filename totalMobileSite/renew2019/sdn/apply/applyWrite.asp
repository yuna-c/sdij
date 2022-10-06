<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>
    
    <h2 class="page-tit">무시험 응시원서접수</h2>

    <!-- S : 응시원서 접수 -->
    <div class="content-layout">
        <div class="form-defult">
            <form action="" method="">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>전형 *</th>
                        <td>무시험</td>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                        <td colspan="3" class="info-txt">
                            <label class="radio">
                                <input type="radio">
                                <span>우선선발</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>성적선발</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                        <td colspan="3" class="info-txt">
                            국수(나) 백분위 합 191 이상 (단, 영어 1등급 이상)
                        </td>
                    </tr>
                    <tr>
                        <th>계열</th>
                        <td colspan="3">인문계</td>
                    </tr>
                    <tr>
                        <th>응시과목선택 *</th>
                        <td colspan="3">- 수능 응시(예정) 과목을 선택하세요. 접수 후 과목 변경 불가합니다.</td>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                        <td>
                            <label class="check">
                                <input type="checkbox">
                                <span>한국지리</span>
                            </label>
                            <label class="check">
                                <input type="checkbox">
                                <span>세계사</span>
                            </label>
                            <label class="check">
                                <input type="checkbox">
                                <span>사회문화</span>
                            </label>
                        </td>
                        <td>
                            <label class="check">
                                <input type="checkbox">
                                <span>세계지리</span>
                            </label>
                            <label class="check">
                                <input type="checkbox">
                                <span>생활과윤리</span>
                            </label>
                            <label class="check">
                                <input type="checkbox">
                                <span>법과정치</span>
                            </label>
                        </td>
                        <td>
                            <label class="check">
                                <input type="checkbox">
                                <span>동아시아</span>
                            </label>
                            <label class="check">
                                <input type="checkbox">
                                <span>윤리와사상</span>
                            </label>
                            <label class="check">
                                <input type="checkbox">
                                <span>경제</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>이름 *</th>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th>생년월일 *</th>
                        <td>
                            <select class="select">
                                <option value="년">년</option>
                            </select>
                        </td>
                        <td>
                            <select class="select">
                                <option value="월">월</option>
                            </select>
                        </td>
                        <td>
                            <select class="select">
                                <option value="일">일</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>재학구분 *</th>
                        <td colspan="3">
                            <label class="radio">
                                <input type="radio">
                                <span>고교졸업</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>검정고시</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>본인 연락처 *</th>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                            <input type="text" maxlength="4" class="input-text">
                            <input type="text" maxlength="4" class="input-text">
                        </td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증되었습니다.')" value="인증번호 받기" class="btn btn-black">
                        </td>
                    </tr>
                    <tr>
                        <th>인증번호 *</th>
                        <td>
                            <div class="cert-form">
                                <input type="text" maxlength="6" class="input-text">
                                <span class="cert-txt">3:00</span>
                            </div>
                        </td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증이 실패되었습니다.<br>인증번호를 다시 입력하세요.')" value="확인" class="btn btn-black">
                        </td>
                    </tr>
                    <tr>
                        <th>학부모 연락처 *</th>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                            <input type="text" maxlength="4" class="input-text">
                            <input type="text" maxlength="4" class="input-text">
                        </td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증되었습니다.')" value="인증번호 받기" class="btn btn-black">
                        </td>
                    </tr>
                    <tr>
                        <th>성적표 업로드 *</th>
                        <td colspan="3">
                            
                        </td>
                    </tr>
                    <tr>
                        <th>계열/학년</th>
                        <td colspan="2">
                            <select class="select select-mid">
                                <option value="선택">선택</option>
                            </select>
                            <select class="select select-mid">
                                <option value="학년">학년</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div class="agree-box">약관내용</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <label class="check">
                                <input type="checkbox">
                                <span>네, 개인정보 수집·이용에 동의합니다.</span>
                            </label>

                            <label class="check">
                                <input type="checkbox">
                                <span>설명회 참석안내 SMS를 받겠습니다.</span>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- S : board-btn -->
            <div class="board-btn txt-center">
                <a href="#" class="btn btn-sm btn-gray">이전</a>
                <input type="submit" class="btn btn-sm btn-black" value="신청">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
    </div>
    <!--// E : 응시원서 접수 -->
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"--> 