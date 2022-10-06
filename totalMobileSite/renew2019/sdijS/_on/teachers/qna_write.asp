<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 학습 질문/답변 질문하기
' 모듈기능 : 선생님 > 학습 질문/답변 질문하기
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
            <h2 class="dep1-tit">학습 질문/답변</h2>

            <div class="board-layout">
                <!-- S : 학습 질문/답변 질문하기 -->
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
                                        강좌
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        교재
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        학습법
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        커리큘럼
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        기타
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <th>질문 강좌</th>
                                <td>
                                    <div class="form-select">
                                        <select>
                                            <option hidden disabled selected>질문하고 싶은 강좌를 선택해 주세요</option>
                                            <option value="">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">질문 강의</th>
                                <td>
                                    <div class="form-select">
                                        <select>
                                            <option hidden disabled selected>질문하고 싶은 강의를 선택해 주세요</option>
                                            <option value="">강의명강의명강의명강의명강의명강의명강의명강의명</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-input form-time">
                                        <span class="ico ico-clock">강의 타임코드</span>
                                        <input type="text" maxlength="2">
                                        <span class="txt">:</span>
                                        <input type="text" maxlength="2">
                                        <span class="txt">:</span>
                                        <input type="text" maxlength="2">
                                    </div>

                                    <p class="txt-guide">* 강의 타임코드를 입력해 주세요</p>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">질문 교재</th>
                                <td>
                                    <div class="form-select">
                                        <select>
                                            <option hidden disabled selected>질문하고 싶은 교재를 선택해 주세요</option>
                                            <option value="">강의명강의명강의명강의명강의명강의명강의명강의명</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-input form-page">
                                        <span class="ico ico-page">교재 페이지</span>
                                        <input type="text">
                                        <span class="txt">page</span>
                                    </div>
                                    <P class="txt-guide">* 교재 페이지를 입력해 주세요</P>
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
                                <th>공개여부</th>
                                <td>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        공개
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        비공개
                                    </label>
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
                                        카카오톡
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        SMS
                                    </label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </form>
                </div>
                <!--// E : 학습 질문/답변 질문하기 -->
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <input type="submit" value="질문하기" class="btn btn-black">
        <a href="#" class="btn btn-lightgray">취소</a>
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
