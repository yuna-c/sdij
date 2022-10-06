<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 강좌 > 플레이어
' 모듈기능 : 시대인재 Digital > 강좌 > 플레이어
' 파 일 명 : player.asp
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

            <!-- S : 플레이어 -->
            <article class="player-article mt30">
                <h3 class="tit-dep3 tit-bg mobile-blind">
                    <span class="num">1강</span>
                    강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명
                </h3>

                <div class="player-area float-area">
                    <div class="fl">
                        <div class="video-area"><!-- 4k 영상일 경우 class="wide-area" 추가 -->
                            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/WYsXVxapHZs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                        </div>

                        <div class="video-pager">
                            <a href="/renew2019/digital/lecture/list.asp"><i class="ico-back"></i>목록으로</a>

                            <a href="/renew2019/digital/lecture/player.asp" class="pager-right">다음<i class="ico-more"></i></a>
                        </div>
                    </div>

                    <div class="fr">
                        <div class="list-type1">
                            <ul>
                                <% for i = 1 to 10 %>
                                <li><a href="/totalWebSite/renew2019/digital/lecture/player.asp" <% if i = 1 then '현재 플레이 영상일경우 %>class="play-on"<% end if %>>
                                    <span class="tit" data-num="<%= i  %>강">강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</span>
                                </a></li>
                                <% next %>
                            </ul>
                        </div>
                    </div>
                </div>
            </article>
            <!--// E : 플레이어 -->
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->