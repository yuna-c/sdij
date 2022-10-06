<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 온라인 모의고사
' 모듈기능 : 온라인 모의고사 응시하기
' 파 일 명 : exam.asp
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
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

<style>
	@media print {#pdfviewer {display:none;}}
</style>

    <!-- S : container -->
    <section id="container" class="exam-container">
        <!-- S : 모의고사 응시하기 -->
        <article class="container-exam">
            <div class="exam-tit">
                <h2 class="tit-dep1">
                    <p class="tit-link">서바이벌 22회차 모의고사명</p>
                    <small>*OMR을 제출 후에는 다시 수정할 수 없습니다.</small>
                </h2>

                <div class="exam-timer">
                    <span>100</span>
                    :
                    <span>00</span>
                    :
                    <span>00</span>
                </div>
            </div>

            <div class="exam-content">
                <div class="tab-type1">
                    <a href="javascript:void(0);" class="selected"><span>시험지</span></a>
                    <a href="javascript:void(0);"><span>OMR 입력</span></a>
                </div>

                <!-- S : 시험지 PDF -->
                <div class="tab-content tab-on exam-view">
                    <% if true then %>
                    <div class="iframe-area">
                        <iframe name="pdfviewer" id="pdfviewer" src="https://dev.reclass.study/monthly/web/viewer.html?file=//file.reclass.study/fileup/monthly/test.pdf" style="width:100%; height:100%;"></iframe>
						<!-- <iframe name="pdfviewer" id="pdfviewer" src="/monthly/web/viewer.html?file=//file.reclass.study/fileup/monthly/test.pdf" style="width:100%; height:100%;"></iframe>-->
                    </div>
                    <% else %>
                    <div class="info-area">
                        안내 메시지
                    </div>
                    <% end if %>
                </div>
                <!--// E : 시험지 PDF -->

                <!-- S : OMR 카드 -->
                <div class="tab-content exam-omr">
                    <div class="table-type1">
                        <table>
                            <thead>
                                <tr>
                                    <th>문항<br>번호</th>
                                    <th>1</th>
                                    <th>2</th>
                                    <th>3</th>
                                    <th>4</th>
                                    <th>5</th>
                                </tr>
                            </thead>

                            <tbody>
                                <% for i = 1 to 30 %>
                                <tr>
                                    <th><% = i %>번</th>
                                    <% if i = 30 then '주관식 %>
                                    <td colspan="5">
                                        <div class="input-text">
                                            <input type="text" name="">
                                        </div>
                                    </td>
                                    <% else '객관식 %>
                                    <td>
                                        <label class="input-radio">
                                            <input type="radio" name="" value="">
                                            <span class="ico ico-radio"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <label class="input-radio">
                                            <input type="radio" name="" value="">
                                            <span class="ico ico-radio"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <label class="input-radio">
                                            <input type="radio" name="" value="">
                                            <span class="ico ico-radio"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <label class="input-radio">
                                            <input type="radio" name="" value="">
                                            <span class="ico ico-radio"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <label class="input-radio">
                                            <input type="radio" name="" value="">
                                            <span class="ico ico-radio"></span>
                                        </label>
                                    </td>
                                    <% end if %>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--// E : OMR 카드 -->
            </div>

            <div class="monthly-btn">
                <a href="javascript:void(0);" class="btn btn-L">OMG 임시저장</a>
                <a href="/totalWebSite/renew2019/reclass/monthly/finish.asp" class="btn btn-black btn-L">OMG 저장하기</a>
            </div>
        </article>
        <!--// E : 모의고사 응시하기 -->
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->