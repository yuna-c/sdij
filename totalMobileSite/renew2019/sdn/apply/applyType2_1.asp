<!-- #include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp" -->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 응시원서접수 -->
    <div class="content-layout">
        <h2 class="page-tit border-tit line">
            인문계 무시험 <br/>
            응시원서접수
        </h2>
        <div class="form-apply">
            <form action="" method="">
                <table>
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:80%;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="th-txt">전형*</th>
                            <td>무시험</td>
                        </tr>
                        <tr class="info-txt">
                            <th>&nbsp;</th>
                            <td>
                                <label class="radio">
                                    <input type="radio" name="radio1">
                                    <span>우선선발</span>
                                </label>
                                <label class="radio">
                                    <input type="radio" name="radio1">
                                    <span>성적선발</span>
                                </label>
                                <span class="add-txt small">
                                    국·수(가)·영 합 5등급 <br/>
                                    (성적 심사 후 합격여부 개별통지)
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th class="th-txt">계열</th>
                            <td>인문계</td>
                        </tr>
                    </tbody>
                </table>
                <ul class="list-form">
                    <li>
                        <span class="th-txt">응시과목 선택*</span>
                        <ul class="dash-txt">
                            <li>
                                수능 응시(예정) 과목을 선택하세요.
                            </li>
                            <li>
                                접수 후 과목 변경 불가합니다.
                            </li>
                        </ul>
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
                    </li>
                    <li>
                        <span class="th-txt">이름*</span>
                        <input type="text" class="input-text">
                    </li>
                    <li>
                        <span class="th-txt">생년월일*</span>
                        <div class="set-input">
                            <input type="text" class="input-text">
                            <a href="#">선택</a>
                        </div>
                    </li>
                    <li>
                        <span class="th-txt">재학구분*</span>
                        <div class="txt-center">
                            <label class="radio">
                                <input type="radio">
                                <span>고교졸업</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>검정고시</span>
                            </label>
                        </div>
                    </li>
                    <li>
                        <span class="th-txt">본인 연락처*</span>
                        <div class="number-group">
                            <select class="select select-sm">
                                <option value="010">010</option>
                            </select>
                            <input type="text" maxlength="4" class="input-text input-text-sm">
                            <input type="text" maxlength="4" class="input-text input-text-sm">
                        </div>
                        <div class="btn-group right">
                            <a href="#">인증번호 전송</a>
                        </div>
                        <div class="certification-num">
                            <span class="th-txt">인증번호 **</span>
                            <div class="set-input">
                                <input type="text" class="input-text">
                                <a href="#">확인</a>
                            </div>
                            <span class="add-txt right">인증번호 입력 후 확인을 클릭해 주세요.</span>
                        </div>
                    <li>
                        <span class="th-txt">학부모 연락처 *</span>
                        <div class="number-group">
                            <select class="select select-sm">
                                <option value="010">010</option>
                            </select>
                            <input type="text" maxlength="4" class="input-text input-text-sm">
                            <input type="text" maxlength="4" class="input-text input-text-sm">
                        </div>
                    </li>
                    <li>
                        <span class="th-txt">성적표 업로드 *</span>
                        <div class="set-input">
                            <!--input type="text" class="input-text" placeholder="jpg, bmp, png 이미지 파일만 업로드 가능" readonly="readonly">
                            <div class="file">
                                  <input type="file" id="fileup" name="fileup" class="file_hidden">
                                  <label for="fileup">파일찾기</label>
                            </div> -->
                            <button type="button" class="file-btn" onclick="IfGCardUpload('', '', '', 'jaejong/exam_app', '')">파일찾기</button>
                        </div>
                        <ul id="GCardFileList" data-list="file"></ul>
                        <label class="check">
                            <input type="checkbox">
                            <span>성적표 추후 보완</span>
                        </label>
                        <span class="add-txt color_01 big">
                            원서 접수 후 추후 성적표를 등록할 경우 체크하세요.
                        </span>
                         <ul class="list-dotted mt30">
                            <li>최초 등록 후 수정이 불가하므로 정확한 내용을 기입하시기 바랍니다.</li>
                            <li>추후 성적표 원본을 대조하므로 반드시 본인의 성적표를 업로드 하세요.</li>
                        </ul>
                    </li>
                    <li>
                        <span class="th-txt">개인정보 수집 및 이용 동의</span>
                         <div class="form-agree pb0 mb20">
                            <div class="agree-box">
                                시대인재 N 학원은 재원생 확인을 위하여 아래와 같이개인 <br/>
                                정보를 수집·이용하고자 합니다. 내용을 자세히 읽으신 후 <br/>
                                동의여부를 결정하여 주십시오. <br/>
                                [수집항목] 이름, 생년월일, 연락처, 학교, 서적 <br/>
                                [수집목적] 학생관리, 상담, 학습 및 입시정보제공 등에
                            </div>
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
                        <div class="color-red mb10">
                            ※ 다음단계에서 응시료(20,000원) 결제를 하셔야 원서접수가 완료됩니다.
                        </div>
                        <div class="b mb10">결제 유의사항</div>
                        <ul class="list-dotted dash mb30">
                            <li>
                                응시료는 신용카드, 실시간계좌이체, 휴대폰 소액결제로 결제 가능합니다.<br/>
                                (무통장입금 불가)
                            </li>
                            <li>실시간 계좌이체는 인터넷 공인인증서가 필요합니다.</li>
                            <li>휴대폰 결제 시 현금영수증은 발급 되지 않습니다.</li>
                        </ul>
                        <div class="b mb10">환불 안내</div>
                        <ul class="list-dotted dash mb40">
                            <li>
                                응시료 환불은 접수기간 내에만 가능합니다. (접수 마감 후 응시료 환불 불가)
                            </li>
                            <li>환불접수 승인 관련 문의는 1522-0568로 전화 주시기 바랍니다. </li>
                        </ul>
                    </li>
                </ul>

                <!-- S : board-btn -->
                <div class="board-btn txt-center">
                    <input type="submit" class="btn btn-strong btn-black" value="확인">
                </div>
                <!--// E : board-btn -->
            </form>
        </div>
    </div>
    <!--// E : 응시원서접수 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!-- #include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp" -->


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
    if (location.host == "m.sdij.com") {
        URL_FILE = "http://file.sdij.com";
    }

    var tUrl = URL_FILE + "/common_file_up.asp";
        tUrl += "?sTagNm=" + sTagNm;
        tUrl += "&sFileNm=" + sFileNm;
        tUrl += "&sFolderCd=" + sFolderCd;
        tUrl += "&sFolderNm=" + sFolderNm;
        tUrl += "&sGubun=" + sGubun;

    window.open(tUrl,"fileUploadPop");
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
        innerHtml += "  <button type='button' data-btn='delete' onclick=IfFileDel('" + GCardFileId + "')><span class='hidden'>삭제</span></button>";
        innerHtml += "</li>";

    $("#GCardFileList").append(innerHtml);
};

// 파일 UI 삭제
var IfFileDel = function(GCardFileId) {
    $("#" + GCardFileId).remove("");
};
</script>