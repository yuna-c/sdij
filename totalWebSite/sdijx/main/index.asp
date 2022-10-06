<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 메인
' 모듈기능 : 시대인재 Digital > 메인
' 파 일 명 : index.asp
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

<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/lib/jquery.fullPage.css">
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/scrolloverflow.js"></script>
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.fullPage.js"></script>
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/main.css?ver=<%=Now()%>">
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/main.js?ver=<%=Now()%>"></script>

<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="index-container">
        <!-- S : lnb-main -->
        <div class="lnb-main">
            <h1 class="logo"><i class="ico-ci-w">시대인재</i></h1>

            <ul>
                <li><a href="#main" data-menuanchor="main">
                    <span class="num">01</span>
                    <span class="tit">main</span>
                </a></li>
                <li><a href="#feature" data-menuanchor="feature">
                    <span class="num">02</span>
                    <span class="tit">feature</span>
                </a></li>
                <li><a href="#result" data-menuanchor="result">
                    <span class="num">03</span>
                    <span class="tit">result</span>
                </a></li>
                <li><a href="#tutor" data-menuanchor="tutor">
                    <span class="num">04</span>
                    <span class="tit">tutor</span>
                </a></li>
                <li><a href="#location" data-menuanchor="location">
                    <span class="num">05</span>
                    <span class="tit">location</span>
                </a></li>
                <li><a href="#notice" data-menuanchor="notice">
                    <span class="num">06</span>
                    <span class="tit">notice</span>
                </a></li>
            </ul>
        </div>
        <!--// E : lnb-main -->

        <!-- S : main -->
        <div class="main-content section ani-action">
            <div class="video-area video-main">
                <video muted loop>
                    <source src="//img.sdij.com/sdijx/main/main_video.mp4" type="video/mp4" id="main-video">
                </video>
            </div>

            <div class="tit-main1">
                <small>
                    <span class="ani1">M</span>
                    <span class="ani2">a</span>
                    <span class="ani1">s</span>
                    <span class="ani2">t</span>
                    <span class="ani1">e</span>
                    <span class="ani2">r&nbsp;</span>

                    <span class="ani1">k</span>
                    <span class="ani2">e</span>
                    <span class="ani1">y&nbsp;</span>
                        
                    <span class="ani2">t</span>
                    <span class="ani1">o&nbsp;</span>

                    <span class="ani2">S</span>
                    <span class="ani1">u</span>
                    <span class="ani2">c</span>
                    <span class="ani1">c</span>
                    <span class="ani2">e</span>
                    <span class="ani1">s</span>
                    <span class="ani2">s</span>
                </small>
                
                <p><span>현존하는 가장 진보된</span></p>
                <p><span>디지털 만점구조 시스템</span></p>
            </div>
        </div> 
        <!--// E : main -->

        <!-- S : feature -->
        <div class="feature-content section">
            <div class="swiper-container swiper-slide-back">
                <div class="swiper-wrapper">
                    <div class="swiper-slide bg01"></div>
                    <div class="swiper-slide bg02"></div>
                    <div class="swiper-slide bg03"></div>
                </div>
            </div>

            <div class="swiper-container swiper-slide-cont">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="cont01">
                            <div class="tit-main2">
                                <small>Neo-standard</small>
                                <p>극상위권<br>생태계의 결정체</p>
                            </div>
                            <div class="txt-main">
                                내 주위를 둘러싼 최상위 학생들과의 시너지로<br>
                                가장 밀도 있는 극상위 집단의 생태계 속에서<br>
                                나의 정확한 위치를 파악하고 동시에 성장합니다.
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="cont02">
                            <div class="tit-main2">
                                <small>Selected top-ranked students</small>
                                <p>대체 불가 컨텐츠</p>
                            </div>
                            <div class="txt-main">
                                매해 급격하게 변화하는 수능 트렌드에<br>
                                가장 예민하게, 가장 정확하게 반응한 컨텐츠로<br>
                                좋은 강의 일지라도 직면하게 되는 불확실성을 넘어<br>
                                학생 자신의 궁극의 시간가치와 결과가치를 구현합니다.
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="cont03">
                            <div class="tit-main2">
                                <small>Selected top-ranked students</small>
                                <p>명확한 정확도의<br>입시 컨설팅</p>
                            </div>
                            <div class="txt-main">
                                학부모 스스로 고1 시작부터<br>
                                학생의 진학 로드맵 최적화를 이끌고<br>
                                고3 수시원서 6장과 정시원서 3장을 확신 있게<br>
                                쓸 수 있도록 치열한 R&D 과정을 통한<br>
                                비교 불가의 컨설팅을 제공합니다.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-pager"></div>
            </div>
        </div>
        <!--// E : feature -->

        <!-- S : result -->
        <div class="result-content section fp-auto-height">
            <h2 class="tit-main2">대체불가의 만점구조시스템</h2>
            <p class="txt-main">최상의 실적을 배출하며 학생 자신의 궁극의 시간가치와 결과가치를 구현합니다.</p>

            <div class="swiper-container swiper-slide-record">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p class="num">
                            <span class="ani1">9</span>
                            <span>/</span>
                            <span class="ani2">30</span>
                        </p>
                        <p class="txt">정시 30명중 9명 최초합격</p>
                    </div>
                    <div class="swiper-slide">
                        <p class="num">
                            <span class="ani1">8</span>
                            <span>/</span>
                            <span class="ani2">23</span>
                        </p>
                        <p class="txt">정시 23명중 8명 최초합격</p>
                    </div>
                    <div class="swiper-slide">
                        <p class="num">
                            <span class="ani1">8</span>
                            <span>/</span>
                            <span class="ani2">30</span>
                        </p>
                        <p class="txt">정시 30명중 8명 최초합격</p>
                    </div>
                    <div class="swiper-slide">
                        <p class="num">
                            <span class="ani1">4</span>
                            <span>/</span>
                            <span class="ani2">10</span>
                        </p>
                        <p class="txt">정시 10명중 4명 최초합격</p>
                    </div>
                    <div class="swiper-slide">
                        <p class="num">
                            <span class="ani1">3</span>
                            <span>/</span>
                            <span class="ani2">20</span>
                        </p>
                        <p class="txt">정시 20명중 3명 최초합격</p>
                    </div>
                    <div class="swiper-slide">
                        <p class="num">
                            <span class="ani1">12</span>
                            <span>/</span>
                            <span class="ani2">38</span>
                        </p>
                        <p class="txt">정시 38명중 12명 최초합격</p>
                    </div>
                </div>
            </div>

            <div class="swiper-container swiper-slide-tab">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="tit">2020 서울대의대</div>
                    </div>

                    <div class="swiper-slide">
                        <div class="tit">2020 연세대의대</div>
                    </div>

                    <div class="swiper-slide">
                        <div class="tit">2020 카톨릭의대</div>
                    </div>

                    <div class="swiper-slide">
                        <div class="tit">2020 울산대의대</div>
                    </div>

                    <div class="swiper-slide">
                        <div class="tit">2020 성균관대의대</div>
                    </div>

                    <div class="swiper-slide">
                        <div class="tit">2020 고려대의대</div>
                    </div>
                </div>
            </div>
        </div>
        <!--// E : result -->

        <!-- S : tutor -->
        <div class="tutor-content section">
            <div class="slide-area">
                <div class="swiper-container swiper-slide-teachers">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="//img.sdij.com/sdijx/main/img_teacher1.jpg" alt="선생님 이미지1"></div>
                        <div class="swiper-slide"><img src="//img.sdij.com/sdijx/main/img_teacher2.jpg" alt="선생님 이미지2"></div>
                        <div class="swiper-slide"><img src="//img.sdij.com/sdijx/main/img_teacher3.jpg" alt="선생님 이미지3"></div>
                    </div>
                </div>
            </div>
            <div class="cont-area">
                <div class="tit-main1">
                    <small>
                        <span class="ani1">N</span>
                        <span class="ani2">E</span>
                        <span class="ani1">W&nbsp;</span>
                        <span class="ani2">S</span>
                        <span class="ani1">T</span>
                        <span class="ani2">A</span>
                        <span class="ani1">N</span>
                        <span class="ani2">D</span>
                        <span class="ani1">A</span>
                        <span class="ani2">R</span>
                        <span class="ani1">D</span>
                    </small>

                    <p><span>한 차원 다른 강사의</span></p>
                    <p><span>대체 불가한 커리큘럼을</span></p>
                    <p><span>제공 합니다.</span></p>
                </div>

                <a href="/totalWebSite/sdijx/teachers/index.asp" class="btn btn-L btn-green">시대인재 강사 바로가기</a>
            </div>
        </div>
        <!--// E : tutor -->

        <!-- S : location -->
        <div class="location-content section fp-auto-height">
            <h2 class="tit-main1">LOCATION</h2>

            <div class="swiper-container swiper-slide-location">
                <div class="swiper-wrapper">
                    <% for i = 1 to 10 %>
                    <a href="#" class="swiper-slide">
                        <span class="tit-dep4">시대인재 N재수종합<%= i %></span>

                        <span class="txt">
                            <i class="ico-pin"></i>
                            서울특별시 관악구 남부순환로 1783
                        </span>
                        <span class="txt">
                            <i class="ico-phone"></i>
                            대표번호 02 3435 35333
                        </span>

                        <span class="btn-cir btn-M"><i class="ico-next"></i></span>
                    </a>
                    <% next %>
                </div>
            </div>
        </div>
        <!--// E : location -->

        <!-- S : notice -->
        <div class="notice-content section fp-auto-height">        
            <div class="wide-layout">
                <h2 class="tit-main2">
                    <span>notice</span>
                </h2>

                <div class="list-board">
                    <ul>
                        <% for i = 1 to 3 '최대 공지글 3개 노출 %>
                        <li>
                            <a href="/sdijx/help/noticeView.asp">
                                <div class="visual-area">
                                    5/14
                                </div>

                                <div class="tit-area">개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.</div>
                                <div class="txt-area">개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다</div>

                                <i class="ico-next"></i>
                            </a>
                        </li>
                        <% next %>
                    </ul>

                    <a href="/totalWebSite/sdijx/help/noticeList.asp" class="btn-cir btn-L btn-more"><i class="ico-down">리스트 더보기</i></a>
                </div>
            </div>
        </div>
        <!--// E : notice -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->