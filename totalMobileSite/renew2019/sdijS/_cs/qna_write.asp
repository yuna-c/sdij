<!--include virtual="/totalMobileSite/renew2019/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 고객센터 > 메인 > 1:1 문의 질문하기
' 모듈기능 : 고객센터 > 메인 > 1:1 문의 질문하기
' 파 일 명 : qna_write.asp
' 작성일자 :
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------





'------------------------------
' VARS
'------------------------------






'------------------------------
' QUERY
'------------------------------





'------------------------------
' ETC
'------------------------------






%>

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container">
        <div class="content-layout">
            <h2 class="dep1-tit">1:1 문의</h2>

            <div class="board-layout">
                <!-- S : 1:1문의 질문하기-->
                <div class="form-defult form-defult2">
                    <form action="" method="">
                    <table>
                        <tbody>
                            <tr>
                                <th>질문 유형</th>
                                <td>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        프리패스
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        강좌/동영상
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        교재
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        기타
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <th>세부 유형</th>
                                <td>
                                    <div class="form-select">
                                        <select>
                                            <option hidden disabled selected>세부 유형을 선택해 주세요</option>
                                            <option value="">세부 유형을 선택해 주세요</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>제목</th>
                                <td>
                                    <div class="form-input">
                                        <input type="text">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <div class="form-textarea">
                                        <textarea></textarea>
                                    </div>
                                </td>
                            </tr>
                            <!-- <tr>
                                <th>파일첨부</th>
                                <td>
                                    <label class="form-file">
                                        <input type="file">
                                        <span class="file-name"></span>
                                        <span class="btn btn-white">파일선택</span>
                                    </label>

                                    <p class="txt-guide">
                                        * 10MB 이하의 파일을 최대 5개까지 첨부하실 수 있습니다.<br>
                                        &nbsp;&nbsp;이미지 파일은 질문 내용에 반영 됩니다. (exe, zip 등 일부 파일은 첨부 제외)
                                    </p>
                                </td>
                            </tr> -->
                            <tr>
                                <th>파일첨부</th>
                                <td>
                                    <label class="form-file form-file2">
                                        <button type="button" class="btn btn-white" id="file_up">파일찾기</button>
                                    </label>

                                    <ul class="list-file mt10">
                                        <li><span>파일명파일명파일명</span> <button type="button" class="delete"><span class='hidden'>삭제</span></button></li>
                                    </ul>

                                    <p class="txt-guide mt10">
                                        * 10MB 이하의 파일을 최대 5개까지 첨부하실 수 있습니다.<br>
                                        &nbsp;&nbsp;이미지 파일은 질문 내용에 반영 됩니다. (exe, zip 등 일부 파일은 첨부 제외)
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <th>답변알림</th>
                                <td>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        선택안함
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        SMS알림받기
                                    </label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </form>
                </div>
                <!--// E : 1:1문의 질문하기 -->
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <input type="submit" value="등록" class="btn btn-black">
        <a href="qna_list.asp" class="btn btn-lightgray">취소</a>
    </div>

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
