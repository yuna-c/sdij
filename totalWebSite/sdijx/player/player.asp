<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 플레이어
' 모듈기능 : 시대인재 Digital > 플레이어
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/player.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="player-container">
        <div class="wide-layout lnb-layout">
            <!-- S : 강좌 목차 -->
            <div class="lnb-lec">
                <p class="tit-lec txt-line strong">개요</p>

                <a href="javascript:void(0);" onclick="$(this).parent().toggleClass('lnb-open');" class="btn-lec">개요</a>

                <dl class="toggle-type1 mt10">
                    <% for i = 1 to 5 %>
                    <dt <% if i = 1 then %>class="selected"<% end if %>><a href="javascript:void(0)"><span>
                        단원명단원명단원명단원명단원명단원명단원명단원명
                    </span></a></dt>
                    <dd <% if i = 1 then %>class="selected"<% end if %>>
                        <ul>
                            <% for j = 1 to 5 %>
                            <li><a href="/totalWebSite/sdijx/mypage/lecView.asp"><%= j %>강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a></li>
                            <% next %>
                        </ul>
                    </dd>
                    <% next %>
                </dl>
            </div>
            <!--// E : 강좌 목차 -->

            <div class="content-layout fr">
                <!-- S : 타이틀 영역 -->
                <div class="tit-area tit-lec">
                    <h2 class="tit-dep1">
                        <span class="tit">강좌명 타이틀 강좌명 타이틀 강좌명 타이틀 강좌명 타이틀 강좌명 타이틀</span>
                    </h2>

                    <div class="btn-area tit-side">
                        <a href="/totalWebSite/sdijx/teachers/qnaWrite.asp" class="btn btn-M">질문하기</a>
                        <!-- <a href="javascript:void(0);" class="btn btn-M">후기쓰기</a> : 미사용 -->
                        <a href="/totalWebSite/sdijx/lecture/view.asp" class="btn btn-M">강좌정보</a>
                    </div>
                </div>
                <!-- S : 타이틀 영역 -->

                <!-- S : 이미지 영역 -->
                <div class="banner-content">
                    <!-- S : PC 이미지 -->
                    <span class="rw-pc">
                        <img src="//img.sdij.com/sdijx/teachers/teacherID/pc/banner_img.jpg" alt="홍길동 선생님 이미지">
                        <!-- img src="//img.sdij.com/sdijx/teachers/선생님ID/pc/banner_img.jpg" -->
                    </span>
                    <!--// E : PC 이미지 -->

                    <!-- S : MOBILE 이미지 -->
                    <span class="rw-mo">
                        <img src="//img.sdij.com/sdijx/teachers/teacherID/mobile/banner_img.jpg" alt="홍길동 선생님 이미지">
                        <!-- img src="//img.sdij.com/sdijx/teachers/선생님ID/mobile/banner_img.jpg" -->
                    </span>
                    <!--// E : MOBILE 이미지 -->
                </div>
                <!--// E : 이미지 영역 -->

                <!-- S : 플레이어 -->
                <div class="player-content">
                    <div class="tit-area tit-player">
                        <h3 class="tit-dep5">1강 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</h3>

                        <div class="btn-area tit-side">
                            <a href="javascript:void(0);" class="btn btn-M btn-gray">DOWNLOAD</a>
                        </div>
                    </div>

                    <div class="video-area">
                        <iframe src="https://www.youtube.com/embed/v7AcmMdwqDw" width="100%" height="100%" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <!--// E : 플레이어 -->
            </div>
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->