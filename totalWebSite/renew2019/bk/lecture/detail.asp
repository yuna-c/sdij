<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > 강좌 상세보기
' 모듈기능 : 보충강좌 서비스 > 강좌 > 강좌 상세보기
' 파 일 명 : detail.asp
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
            <a href="javascript:window.history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">강좌 상세</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <!-- S : 강좌 정보 -->
        <article class="container-view content-layout">
            <h4 class="tit-dep4">[박종민 선생님] 리바이벌 미적분II</h4>

            <ul class="list-tit float-area">
                <li>
                    <span class="tit">강사명</span>
                    <span class="txt">박종민 선생님</span>
                </li>
                <li>
                    <span class="tit">과목명</span>
                    <span class="txt">생명과학Ⅱ</span>
                </li>
                <li>
                    <span class="tit">진행시기</span>
                    <span class="txt">19/12/03(화) ~ 19/12/20(금)</span>
                </li>
                <li>
                    <span class="tit">수강일수</span>
                    <span class="txt">7일</span>
                </li>
            </ul>
        </article>
        <!--// E : 강좌 정보 -->

        <hr class="hr">
        
        <!-- S : 강의 리스트 -->
        <article class="container-list content-layout">
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:25%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>강의명</th>
                            <th>강의수강</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 10 '첫 페이지 열줄 노출 %>
                        <tr>
                            <td>1강. Ⅰ. 지수함수와 로그함수 (Thm01.~Thm04)</td>
                            <td class="txt-center"><a href="/totalWebSite/renew2019/bk/lecture/player.asp" class="btn btn-black btn-M">PLAY</a></td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>

            <div class="list-btn mt1">
                <a href="javascript:void(0);" class="btn btn-more">더 보기</a>
            </div>
        </article>
        <!--// E : 강의 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/bk/common/include/incFooter.asp"-->