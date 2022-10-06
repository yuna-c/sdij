<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 강좌 > 라이브 플레이어
' 모듈기능 : 시대인재 Digital > 강좌 > 라이브 플레이어
' 파 일 명 : player_live.asp
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
            <article class="live-info-article mt50">
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
                <div class="player-area">
                    <div class="video-area"><!-- 4k 영상일 경우 class="wide-area" 추가 -->
                        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/WYsXVxapHZs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                    </div>
                </div>
            </article>
            <!--// E : 플레이어 -->
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->