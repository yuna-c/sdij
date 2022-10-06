<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <!-- S : 자연계 무시험 응시원서접수 -->
    <div class="board-layout">
        <h2 class="page-tit border-tit">자연계 무시험 응시원서접수</h2>

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
                        <td colspan="3">자연계</td>
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
                    <tr>
                        <th>이름 *</th>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th>사진 *</th>
                        <td colspan="3">
                            <div class="set-input">
                               <input type="text" class="input-text" placeholder="jpg, bmp, png 이미지 파일만 업로드 가능" readonly="readonly">
                                <div class="file">
                                      <!-- <input type="file" id="fileup" name="fileup" class="file_hidden">
                                      <label for="fileup">파일찾기</label> -->
                                      <a href="#" class="file-btn" onclick="IfFileUpload('rec_tec_img', '', '', 'recruit/tec', 'tec', 'image/*')">
                                        파일찾기
                                    </a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>성별 *</th>
                        <td colspan="3">
                            <label class="radio">
                                <input type="radio" name="radio2">
                                <span>남</span>
                            </label>
                            <label class="radio">
                                <input type="radio" name="radio2">
                                <span>여</span>
                            </label>
                        </td>
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
                    <tr>
                        <th>성적입력 *</th>
                        <td colspan="3">
                            <table class="small-date">
                                <colgroup>
                                    <col width="45%" />
                                    <col width="45%" />
                                    <col width="10%" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>국어</th>
                                        <td>
                                            <input type="text" class="input-text" placeholder="표준점수">
                                        </td>
                                        <td>
                                            3
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>수학(가)</th>
                                        <td>
                                            <input type="text" class="input-text" placeholder="표준점수">
                                        </td>
                                        <td>
                                            3
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>영어</th>
                                        <td>
                                            <input type="text" class="input-text" placeholder="등급">
                                        </td>
                                        <td>
                                            3
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="select">
                                                <option value="탐구 1 선택">탐구 1 선택</option>
                                            </select>
                                        </th>
                                        <td>
                                            <input type="text" class="input-text" placeholder="표준점수">
                                        </td>
                                        <td>
                                            3
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="select">
                                                <option value="탐구 2 선택">탐구 2 선택</option>
                                            </select>
                                        </th>
                                        <td>
                                            <input type="text" class="input-text" placeholder="표준점수">
                                        </td>
                                        <td>
                                            3
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>한국사</th>
                                        <td>
                                            <input type="text" class="input-text" placeholder="등급">
                                        </td>
                                        <td>
                                            3
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-dotted mt30">
                <li>최초 등록 후 수정이 불가하므로 정확한 내용을 기입하시기 바랍니다.</li>
                <li>추후 성적표 원본을 대조하므로 반드시 본인의 성적을 기입하세요.</li>
            </ul>

            <div class="form-agree">
                <h4 class="tit">개인정보 수집 및 이용 동의</h4>
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

            <!-- S : board-btn -->
            <div class="board-btn txt-center">
                <input type="submit" class="btn btn-strong btn-black" value="확인">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
    </div>
    <!--// E : 자연계 무시험 응시원서접수 -->
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



 // 파일 업로드
    var IfFileUpload = function(sTagNm, sFileNm, sFolderCd, sFolderNm, sGubun, sAccExt) {
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
            tUrl += "&sExtGubun=" + sGubun;
            tUrl += "&sAccExt=" + sAccExt;
        var tOpt = "width=580,height=300,location=no, directories=no,resizable=no,status=no,toolbar=no,menubar=no,scrollbar=no";

        window.open(tUrl,"fileUploadPop",tOpt);
    };

    // 파일 업로드 완료한 파일명 및 이미지 표기 ( 페이지 마다 처리방식 다름 )
    var file_add = function(tagNm, resultFile) {
        // 도메인 체크
        var URL_FILE = "http://dfile.sdij.com";
        if (location.host == "www.sdij.com") {
            URL_FILE = "http://file.sdij.com";
        }

        var innerHtml = '';
            innerHtml += '<img src="'+ URL_FILE +'/upfile/recruit/tec/'+ resultFile +'">';


        if(tagNm == "rec_tec_img"){
            $("#img_pic_file").html(innerHtml);
            $("#tec_pic_fname").val(resultFile);
            $('<style>.recruit_form .apply_t td.my_photo .img:before{content:""; padding:0;}</style>').appendTo('head');
        }
        else if(tagNm == "rec_tec_resume"){
            $("#recr_resume_file").val(resultFile);
            $("#recr_file").val(resultFile);
        }
        else if(tagNm == "rec_tec_movie"){
            $("#recr_mov_file").val(resultFile);
            $("#mov_file").val(resultFile);
        }

    };

</script>

