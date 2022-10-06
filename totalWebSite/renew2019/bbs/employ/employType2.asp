<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/employ.css">
<script type="text/javascript" src="/totalWebSite/renew2019/common/js/pc_employ.js"></script>

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <h2 class="page-tit">강사 입사지원서</h2>

    <div class="board-layout">
    <form action="" method="">
        <div class="form-radio">
            <h3 class="table-tit border-none">지원분야</h3>

            <div class="form-select">
                <select class="select">
                    <option value="선택">선택</option>
                </select>
                <select class="select">
                    <option value="선택">선택</option>
                </select>
                <select class="select">
                    <option value="선택">선택</option>
                </select>
            </div>
            
            <!-- S : 지원타입 선택 -->
            <ul>
                <li class="selected">
                    <label class="radio">
                        <input type="radio">
                        <span class="tit">파일로 지원하기</span>
                    </label>

                    <input type="file">

                    <span class="txt">
                        자유양식으로 작성하신 이력서, 자기소개서를 업로드하여 빠르게 지원하실 수 있습니다.<br>
                        이력서, 경력증명서, 자기소개서 등의 제출서류를 하나의 첨부파일로 업로드 하세요.
                    </span>
                </li>
                <li>
                    <label class="radio">
                        <input type="radio">
                        <span class="tit">지원서 작성하기</span>
                    </label>
                    <span class="txt">
                        자사 양식에 맞춰 입사지원서를 작성, 접수하실 수 있습니다. *표시는 필수 항목이며 작성 중인 지원서는<br>
                        자동 저장되지 않으니 작성에 주의하시기 바랍니다. 장시간 지원서 작성 시, 페이지 하단 임시저장 기능을 사용하세요.
                    </span>
                </li>
            </ul>
            <!--// E : 지원타입 선택 -->
        </div>

        <!-- S : 인적사항 -->
        <h3 class="table-tit">인적사항 *</h3>

        <div class="form-step1 float-area">
            <div class="fl">
                <div class="form-defult">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>이름 *</th>
                                <td colspan="3"><input type="text" class="input-text" placeholder="이름"></td>
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
                                <th>휴대폰 번호 *</th>
                                <td>
                                    <select class="select">
                                        <option value="010">010</option>
                                    </select>
                                </td>
                                <td><input type="text" class="input-text"></td>
                                <td><input type="text" class="input-text"></td>
                            </tr>
                            <tr>
                                <th>주소 *</th>
                                <td colspan="2"><input type="text" class="input-text"></td>
                                <td><input type="button" value="우편번호 찾기" class="btn btn-black"></td>
                            </tr>
                            <tr>
                                <th>&nbsp;</th>
                                <td colspan="3"><input type="text" class="input-text" placeholder="주소"></td>
                            </tr>
                            <tr>
                                <th>&nbsp;</th>
                                <td colspan="3"><input type="text" class="input-text" placeholder="나머지 주소"></td>
                            </tr>
                            <tr>
                                <th>이메일 *</th>
                                <td colspan="2">
                                    <input type="text" class="input-text input-text-mid">
                                    @
                                    <input type="text" class="input-text input-text-mid">
                                </td>
                                <td>
                                    <select class="select">
                                        <option value="선택">선택</option>
                                        <option value="옵션1">옵션1</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>장애여부 *</th>
                                <td colspan="3">
                                    <label class="radio">
                                        <input type="radio">
                                        <span>비대상</span>
                                    </label>
                                    <label class="radio">
                                        <input type="radio">
                                        <span>대상</span>
                                    </label>
                                    <select class="select select-mid">
                                        <option value="등급">등급</option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="info-txt">
                                <th>&nbsp;</th>
                                <td colspan="3">대상자는 관련법령에 의거 우대하고 있습니다.</td>
                            </tr>
                            <tr>
                                <th>보훈여부 *</th>
                                <td colspan="3">
                                    <label class="radio">
                                        <input type="radio">
                                        <span>비대상</span>
                                    </label>
                                    <label class="radio">
                                        <input type="radio">
                                        <span>대상</span>
                                    </label>
                                </td>
                            </tr>
                            <tr class="info-txt">
                                <th>&nbsp;</th>
                                <td colspan="3">대상자는 관련법령에 의거 우대하고 있습니다.</td>
                            </tr>
                            <tr>
                                <th>병역사항 *</th>
                                <td colspan="3">
                                    <select class="select select-mid">
                                        <option value="선택">선택</option>
                                    </select>
                                    <select class="select select-mid">
                                        <option value="선택">선택</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>&nbsp;</th>
                                <td colspan="3">
                                    복무기간&nbsp;&nbsp;
                                    <input type="text" class="input-text input-text-sm">
                                    ~
                                    <input type="text" class="input-text input-text-sm">
                                </td>
                            </tr>
                            <tr>
                                <th>&nbsp;</th>
                                <td colspan="3"><input type="text" class="input-text" placeholder="병역사항이 ‘면제’인 경우 사유를 기입해주세요."></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="fr">
                <label class="file-preview">
                    <input type="file">
                    <span class="txt">사진등록 *<br>(140 X 185)</span>
                    <span class="img"></span>
                </label>
            </div>
        </div>
        <!--// E : 인적사항 -->

        <!-- S : 학력사항 -->
        <h3 class="table-tit">학력사항 *</h3>

        <div class="form-step3">
            <div class="form-defult">
                <table>
                    <colgroup>
                        <col style="width:150px;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>최종학력 *</th>
                            <td>
                                <select class="select select-sm">
                                    <option value="선택">선택</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="form-defult form-defult2">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>학교명</th>
                            <th>전공</th>
                            <th>재학기간</th>
                            <th>이수형태</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input type="text" class="input-text input-text-mid">
                                <select class="select select-mid">
                                    <option value="선택">선택</option>
                                </select>
                            </td>
                            <td><input type="text" class="input-text"></td>
                            <td>
                                <input type="text" class="input-text input-text-xs">
                                ~
                                <input type="text" class="input-text input-text-xs">
                            </td>
                            <td>
                                <select class="select">
                                    <option value="선택">선택</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="form-more form-more-1">
                <a href="javascript:void(0);" class="btn btn-black btn-lg">추가하기</a>
                <div>
                    4년재 다중 학적자는 추가하기 버튼을 클릭하시면<br>
                    현재 입력폼에서 추가 학력사항을 작성하실 수 있습니다. (최대 10개)
                </div>
            </div>
        </div>
        <!--// E : 학력사항 -->

        <!-- S : 출강/경력사항 -->
        <h3 class="table-tit">출강/경력사항 *</h3>

        <p class="info-txt">과외 및 교육청에 신고되지 않은 교습시설(공부방 등) 경력은 인정되지 않습니다.</p>
        <div class="form-step3">
            <div class="form-defult form-defult2">
                <table>
                    <colgroup>
                        <col style="width:240px;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:200px;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>학원명(학교명)</th>
                            <th>근무지역(시/군/구)</th>
                            <th>강의대상</th>
                            <th>경력기간</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="text" class="input-text"></td>
                            <td><input type="text" class="input-text"></td>
                            <td>
                                <select class="select">
                                    <option value="선택">선택</option>
                                </select>
                            </td>
                            <td>
                                <input type="text" class="input-text input-text-xs">
                                ~
                                <input type="text" class="input-text input-text-xs">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="form-more form-more-3">
                <a href="javascript:void(0);" class="btn btn-black btn-lg">추가하기</a>
                <div>
                    추가하기 버튼을 클릭하시면<br>
                    현재 입력폼에서 추가 경력사항을 작성하실 수 있습니다. (최대 10개)
                </div>
            </div>
        </div>
        <!--// E : 출강/경력사항 -->

        <!-- S : 기타이력 -->
        <h3 class="table-tit">기타이력</h3>

        <div class="form-step5">
            <textarea class="textarea" placeholder="출강/강의 경력에 기입하지 않은 기타 이력이 있을 경우 작성해주십시오. (최대 3000자까지 기입가능)"></textarea>
        </div>
        <!--// E : 기타이력 -->

        <!-- S : 자기소개 -->
        <h3 class="table-tit">자기소개 *</h3>

        <div class="form-step5">
            <textarea class="textarea" placeholder="본인의 가치관 및 성과를 중심으로 자유롭게 작성해 주세요. (최대 5000자까지 기입가능)"></textarea>
        </div>
        <!--// E : 자기소개 -->

        <!-- S : 샘플영상 -->
        <h3 class="table-tit">샘플영상</h3>

        <p class="info-txt">높은 선발 가능성을 위해 샘플강의 업로드 또는 링크 첨부 권장드립니다.</p>
        <div class="form-radio">
            <ul>
                <li class="selected">
                    <label class="radio">
                        <input type="radio">
                        <span class="tit">파일업로드</span>
                    </label>

                    <input type="file">

                    <div class="txt">*hwp, pdf, zip 파일만 업로드 가능합니다.</div>
                </li>
                <li>
                    <label class="radio">
                        <input type="radio">
                        <span class="tit">링크첨부</span>
                    </label>

                    <input type="text" class="input-text" placeholder="url을 입력하세요.">
                </li>
            </ul>
        </div>
        <!--// E : 샘플영상 -->

        <!-- S : 개인정보 수집 및 활용 동의 (필수) -->
        <h3 class="table-tit">개인정보 수집 및 활용 동의 (필수) *</h3>

        <div class="form-step6 form-agree">
            <div class="agree-box">약관내용</div>
            
            <div class="txt-left">
                <label class="radio">
                    <input type="radio">
                    <span>동의합니다.</span>
                </label>

                <label class="radio">
                    <input type="radio">
                    <span>동의하지 않습니다.</span>
                </label>
            </div>
        </div>
        <!--// E : 개인정보 수집 및 활용 동의 (필수) -->

        <!-- S : 버튼영역 -->
        <div class="form-step-btn float-area">
            <div class="fl">
                <button class="btn btn-darkgray btn-lg">임시저장</button>
                <button class="btn btn-black btn-lg">제출하기</button>
            </div>
            <div class="fr">
                <button class="btn btn-darkgray btn-lg">취소하기</button>
            </div>
        </div>
        <!--// E : 버튼영역 -->
    </form>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : dim-layer -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incDimLayer.asp"-->
<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 