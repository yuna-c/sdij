<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 강좌 > 강좌 상세
' 모듈기능 : 시대인재 Digital > 강좌 > 강좌 상세
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
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/digital/common/css/lecture.css?ver=<%=now()%>" />
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <div class="content-layout">
            <!-- S : 강좌 정보 -->
            <article class="lecture-info-article mt50">
                <div class="info-type1">
                    <ul>
                        <li>
                            <p class="tit">과목</p>
                            <p class="txt">수학</p>
                        </li>
                        <li>
                            <p class="tit">강사</p>
                            <p class="txt">홍길동 <span class="mobile-blind">선생님</span></p>
                        </li>
                        <li class="sub-area">
                            <p class="tit">강의수</p>
                            <p class="txt">총 5강</p>
                        </li>
                        <li class="tit-area">
                            <p class="tit">강좌</p>
                            <p class="txt">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</p>
                        </li>
                    </ul>
                </div>
            </article>
            <!--// E : 강좌 정보 -->

            <!-- S : 강좌 리스트 -->
            <article class="lecture-list-article">
                <div class="table-type1">
                    <table>
                        <colgroup>
                            <col class="mobile-blind" style="width:2.333333333rem;">
                            <col style="width:auto;">
                            <col style="width:3.333333333rem;">
                            <col style="width:3rem;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="mobile-blind">리스트</th>
                                <th>강의명</th>
                                <th class="txt-center">수업자료</th>
                                <th class="txt-center">수강하기</th>
                            </tr>
                        </thead>

                        <tbody>
                            <% for i = 1 to 10 %>
                            <tr>
                                <td class="mobile-blind"><%= i %>강</td>
                                <td data-num="<%= i %>강" class="tit-area">강의명강의명강의명강의명강의명강의명강의명강의명강의명강명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</td>
                                <td class="txt-center"><a href="javasciprt:void(0);" class="btn btn-S">Download</a></td>
                                <td class="txt-center"><a href="/totalWebSite/renew2019/digital/lecture/player.asp" class="btn btn-S btn-black">Play</a></td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>

                <div class="list-btn">
                    <a href="javascirpt:void(0);" class="btn btn-M">더보기</a>
                </div>
            </article>
            <!--// E : 강좌 리스트 -->
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->