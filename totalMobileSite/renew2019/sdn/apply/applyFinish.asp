<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->


<link rel="stylesheet" href="/totalMobileSite/renew2019/common/css/apply.css">
<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <!-- S : 자연계 무시험 응시원서접수 -->
    <div class="content-layout">
        <h2 class="page-tit border-tit">응시원서 접수내역</h2>

        <div class="form-detail">
            <ul class="list-dotted mt30">
                <li>응시원서는 제출 후 수정, 취소가 불가능하며 파일 업로드 및 접수상태 조회만 가능합니다.</li>
                <li>문의 : 02-538-2321</li>
            </ul>

            <div class="border-table">
                <table>
                    <colgroup>
                        <col style="width:140px;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>전형구분</th>
                            <td>무시험</td>
                        </tr>
                        <tr>
                            <th>계열</th>
                            <td>자연계</td>
                        </tr>
                        <tr>
                            <th>응시과목</th>
                            <td>한국지리, 생활과 윤리</td>
                        </tr>
                        <tr>
                            <th>접수일시</th>
                            <td>2019-01-01</td>
                        </tr>
                        <tr>
                            <th>접수상태</th>
                            <td>정상</td>
                        </tr>
                        <tr>
                            <th>제출된 성적표</th>
                            <td>
                                <a href="javascript:void(0)">업로드한 파일명.jpg  <span class="ico ico-delete"></span></a>
                            </td>
                        </tr>
                        <tr>
                            <th>성적표 제출</th>
                            <td>
                                <div class="float-area">
                                    <button type="button" class="file-btn fl" onclick="IfGCardUpload('5954', '', '', 'jaejong/exam_app', '')">파일찾기</button>
                                    <button type="button" class="file-btn fl ml10" onclick="IfGCardFileSend('5954')">등록</button>
                                    <a href="#" class="small-btn">영수증</a>
                                </div>
                                <span class="add-txt color_01 small">
                                    jpg, bmp, png 이미지 파일만<br>업로드 가능합니다.
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th>성적표 확인</th>
                            <td>
                                <table class="small-date">
                                    <colgroup>
                                        <col width="30%" />
                                        <col width="70%" />
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>국어</th>
                                            <td class="txt-left">150</td>
                                        </tr>
                                        <tr>
                                            <th>수학(가)</th>
                                            <td class="txt-left">130</td>
                                        </tr>
                                        <tr>
                                            <th>영어</th>
                                            <td class="txt-left">11</td>
                                        </tr>
                                        <tr>
                                            <th>물리 Ⅰ</th>
                                            <td class="txt-left">67</td>
                                        </tr>
                                        <tr>
                                            <th>응시안함</th>
                                            <td class="txt-left">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <th>한국사</th>
                                            <td class="txt-left">1</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- S : board-btn -->
            <div class="board-btn txt-center">
                <input type="button" class="btn btn-strong btn-black" value="확인">
            </div>
            <!--// E : board-btn -->
        </div>
    </div>
    <!--// E : 자연계 무시험 응시원서접수 -->
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->