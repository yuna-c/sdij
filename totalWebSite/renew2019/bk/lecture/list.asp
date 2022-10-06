<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > 강좌 리스트
' 모듈기능 : 보충강좌 서비스 > 강좌 > 강좌 리스트
' 파 일 명 : list.asp
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
<!--#include virtual="/totalWebSite/renew2019/bk/common/include/incMeta.asp"-->

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <h1 class="tit-dep1">보충 강좌</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <!-- S : 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:15%;">
                        <col style="width:15%;">
                        <col style="width:auto;">
                        <col style="width:15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>과목</th>
                            <th>선생님</th>
                            <th>강좌명</th>
                            <th>수강 기간</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 10 '첫 페이지 열줄 노출 %>
                        <tr>
                            <td class="txt-center">기하와 벡터</td>
                            <td class="txt-center">박종민 선생님</td>
                            <td><a href="/totalWebSite/renew2019/bk/lecture/detail.asp" class="tit-link">리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2</a></td>
                            <td class="txt-center">7일</td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>

            <div class="list-btn mt1">
                <a href="javascript:void(0);" class="btn btn-more">더 보기</a>
            </div>
        </article>
        <!--// E : 강좌 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/bk/common/include/incFooter.asp"-->