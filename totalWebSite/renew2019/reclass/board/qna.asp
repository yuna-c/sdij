<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 게시판 > 1:1문의 리스트
' 모듈기능 : 보충강좌 서비스 > 게시판 > 1:1문의 리스트
' 파 일 명 : qna.asp
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

  
    <!-- S : header -->
    <!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incHeader.asp"-->
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <!-- S : 1:1 Q&amp;A -->
        <article class="container-list content-layout">
            <div class="tit-area">
                <div class="tit-dep1">1:1 문의<!--Q&amp;A--></div>

                <a href="qna_write.asp" class="btn btn-black btn-M tit-side">1:1 질문하기</a>
            </div>

            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:2.666666667rem;">
                        <col style="width:4.666666667rem;">
                        <col style="width:auto;">
                        <col style="width:4.666666667rem;">
                        <col style="width:4.666666667rem;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>질문유형</th>
                            <th>제목</th>
                            <th>답변현황</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 10 '첫 페이지 열줄 노출 %>
                        <tr>
                            <td class="txt-center"><%= i %></td>
                            <td class="txt-center">강좌</td>
                            <td><a href="/totalWebSite/renew2019/reclass/qna_detail.asp" class="tit-link">제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목</a></td>
                            <% if i = 1 then '답변 대기 일 경우 %>
                            <td class="txt-center color-gray">답변대기</td>
                            <% else %>
                            <td class="txt-center">답변완료</td>
                            <% end if %>
                            <td class="color-gray txt-center">2020-02-27</td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>

            <div class="list-btn mt1">
                <a href="javascript:void(0);" class="btn btn-more">더 보기</a>
            </div>
        </article>
        <!--// E : 1:1 Q&amp;A -->
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

<script type="text/javascript">
$(function() {

});

function IfFileDown(tblAttchFileIdx, fname) {
    
    location.href = "<%=URL_FILE%>/file_download.asp?fname="+fname;
}
</script>