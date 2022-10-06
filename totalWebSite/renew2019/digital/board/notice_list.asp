<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 게시판 > 공지사항 리스트
' 모듈기능 : 시대인재 Digital > 게시판 > 공지사항 리스트
' 파 일 명 : notice_list.asp
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
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="bbs-container">
        <div class="content-layout">
            <h2 class="tit-dep1 tit-page">공지사항</h2>

            <!-- S : 마이페이지 메뉴 -->
            <!--#include virtual="/totalWebSite/renew2019/digital/mypage/inc.lnb.asp"-->
            <!--// E : 마이페이지 메뉴 -->

            <!-- S : 공지사항 리스트 -->
            <article class="notice-list-article">
                <div class="table-type1">
                    <table>
                        <colgroup>
                            <col class="mobile-blind" style="width:2.333333333rem;">
                            <col style="width:auto;">
                            <col style="width:3.666666667rem;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="mobile-blind">리스트</th>
                                <th>제목</th>
                                <th class="txt-center">작성일</th>
                            </tr>
                        </thead>

                        <tbody>
                            <% for i = 1 to 10 %>
                            <tr>
                                <td class="mobile-blind"><%= i %></td>
                                <td class="tit-area"><a href="/totalWebSite/renew2019/digital/board/notice_detail.asp">
                                    제목제목제목제목제목제목제목제목제목제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목
                                </a></td>
                                <td class="txt-center">2020-01-01</td>
                            </tr>
                            <% next %>

                            <tr>
                                <td colspan="3" class="no-data">공지사항이 없습니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="list-btn">
                    <a href="javascirpt:void(0);" class="btn btn-M">더보기</a>
                </div>
            </article>
            <!--// E : 공지사항 리스트 -->
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->