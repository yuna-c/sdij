<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <!-- S : 인문계 무시험 응시원서접수 -->
    <div class="board-layout">
        <h2 class="page-tit border-tit">인문계 무시험 응시원서접수</h2>

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
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
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
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            국&middot;수(가)&middot;영 합 5등급 (성적 심사 후 합격여부 개별통지)
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
                    <tr class="info-txt">
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
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <div class="color-red mb10">
                                ※ 접수 후 과목 변경 불가합니다. <br/>
                                ※ 반 편성에 중요한 자료이니 정확하게 표시하시기 바랍니다.
                            </div>
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
                        <td colspan="2">
                            <select class="select select-sm">
                                <option value="010">010</option>
                            </select>
                            <input type="text" maxlength="4" class="input-text input-text-sm">
                            <input type="text" maxlength="4" class="input-text input-text-sm">
                        </td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증되었습니다.')" value="인증번호 받기" class="btn btn-black">
                        </td>
                    </tr>
                    <tr>
                        <th>인증번호 *</th>
                        <td colspan="2">
                            <div class="cert-form">
                                <input type="text" maxlength="6" class="input-text">
                                <span class="cert-txt">3:00</span>
                            </div>
                        </td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증이 실패되었습니다.<br>인증번호를 다시 입력하세요.')" value="확인" class="btn btn-black">
                        </td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">인증번호 입력 후 확인을 클릭해 주세요.</td>
                    </tr>
                    <tr>
                        <th>학부모 연락처 *</th>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td>
                            <input type="text" maxlength="4" class="input-text">
                        </td>
                        <td>
                            <input type="text" maxlength="4" class="input-text">
                        </td>
                    </tr>
                    <tr>
                        <th>성적표 업로드 *</th>
                        <td colspan="3">
                            <button type="button" class="file-btn" onclick="IfGCardUpload('', '', '', 'jaejong/exam_app', '')">파일찾기</button>
                            <ul id="GCardFileList" data-list="file"></ul>
                        </td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <label class="check">
                                <input type="checkbox">
                                <span>성적표 추후 보완(*접수 후 추후 성적표를 등록할 경우 체크하세요.)</span>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-dotted mt30">
                <li>최초 등록 후 수정이 불가하므로 정확한 내용을 기입하시기 바랍니다.</li>
                <li>추후 성적표 원본을 대조하므로 반드시 본인의 성적표를 업로드 하세요.</li>
            </ul>

            <div class="form-agree">
                <h4 class="tit">개인정보 수집 및 이용 동의</h4>
                <div class="agree-box">약관내용</div>

                <div class="txt-left mb20">
                    <label class="radio">
                        <input type="radio">
                        <span>동의합니다.</span>
                    </label>

                    <label class="radio">
                        <input type="radio">
                        <span>동의하지 않습니다.</span>
                    </label>
                </div>
                <div class="color-red mb10">
                    ※ 다음단계에서 응시료(20,000원) 결제를 하셔야 원서접수가 완료됩니다.
                </div>
                <span class="b mb10">결제 유의사항</span>
                <ul class="list-dotted dash mb30">
                    <li>
                        응시료는 신용카드, 실시간계좌이체, 휴대폰 소액결제로 결제 가능합니다.<br/>
                        (무통장입금 불가)
                    </li>
                    <li>실시간 계좌이체는 인터넷 공인인증서가 필요합니다.</li>
                    <li>휴대폰 결제 시 현금영수증은 발급 되지 않습니다.</li>
                </ul>
                <span class="b mb10">환불 안내</span>
                <ul class="list-dotted dash mb0">
                    <li>
                        응시료 환불은 접수기간 내에만 가능합니다. (접수 마감 후 응시료 환불 불가)
                    </li>
                    <li>환불접수 승인 관련 문의는 1522-0568로 전화 주시기 바랍니다. </li>
                </ul>
            </div>

            <!-- S : board-btn -->
            <div class="board-btn txt-center">
                <input type="submit" class="btn btn-strong btn-black" value="확인">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
    </div>
    <!--// E : 인문계 무시험 응시원서접수 -->
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">
    // 파일 업로드
var IfGCardUpload = function(sTagNm, sFileNm, sFolderCd, sFolderNm, sGubun) {
    var GCardFileRegCnt = $("#GCardFileList > li").length;

    // 파일 업로드 최대 5개 제한
    if (GCardFileRegCnt >= 5) {
        alert("최대 5개까지 등록할 수 있습니다.");
        return;
    }

    // 도메인 체크
    var URL_FILE = "http://dfile.sdij.com";

    if (location.host == "www.sdij.com") {
        URL_FILE = "http://file.sdij.com";
    }

    var tUrl = URL_FILE + "/common_file_up.asp";
        tUrl += "?sTagNm=" + sTagNm;
        tUrl += "&sFileNm=" + sFileNm;
        tUrl += "&sFolderCd=" + sFolderCd;
        tUrl += "&sFolderNm=" + sFolderNm;
        tUrl += "&sGubun=" + sGubun;
    var tOpt = "width=580,height=250,location=no, directories=no,resizable=no,status=no,toolbar=no,menubar=no,scrollbar=no";

    window.open(tUrl,"fileUploadPop",tOpt);
};

// 파일 UI 추가
var file_add = function(tagNm, resultFile) {
    var GCardFileIdx = $(".GCardFileNm").length + 1;
    var GCardFileId = "GCardFileId_" + GCardFileIdx;
    var GCardFileNm = "GCardFileNm_" + GCardFileIdx;

    var innerHtml = "";
        innerHtml += "<li id=" + GCardFileId + ">";
        innerHtml += "  <input type='hidden' name='" + GCardFileNm + "' value='" + resultFile + "'>";
        innerHtml += "  <span class='GCardFileNm'>" + resultFile + "</span>";
        innerHtml += "  <button type='button' class='delete' onclick=IfFileDel('" + GCardFileId + "')><span class='hidden'>삭제</span></button>";
        innerHtml += "</li>";

    $("#GCardFileList").append(innerHtml);
};

// 파일 UI 삭제
var IfFileDel = function(GCardFileId) {
    $("#" + GCardFileId).remove("");
};


</script>