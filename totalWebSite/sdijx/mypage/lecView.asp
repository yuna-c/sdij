<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 마이페이지 > 나의 강의 > 강좌 상세
' 모듈기능 : 시대인재 Digital > 마이페이지 > 나의 강의 > 강좌 상세
' 파 일 명 : lecView.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/mypage.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="lecview-container">
        <div class="lnb-layout">
            <!-- S : 강좌 목차 -->
            <div class="lnb-lec">
                <p class="tit-lec txt-line strong">개요</p>

                <a href="javascript:void(0);" onclick="$(this).parent().toggleClass('lnb-open');" class="btn-lec">개요</a>

                <dl class="toggle-type1 mt10">
                    <% for i = 1 to 5 %>
                    <dt <% if i = 1 then %>class="selected"<% end if %>><a href="javascript:void(0)"><span>
                        단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명단원명
                    </span></a></dt>
                    <dd <% if i = 1 then %>class="selected"<% end if %>>
                        <ul>
                            <% for j = 1 to 5 %>
                            <li><a href="/sdijx/mypage/lecView.asp"><%= j %>강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a></li>
                            <% next %>
                        </ul>
                    </dd>
                    <% next %>
                </dl>
            </div>
            <!--// E : 강좌 목차 -->

            <div class="content-layout fr">
                <div class="page-loc">
                    <span>마이페이지</span>
                    <span>강좌</span>
                    <span class="color-black">강좌 상세</span>
                </div>

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

                <!-- S : 수강 그래프 -->
                <ul class="preview-lecture">
                    <li>
                        <span class="tit">[S반 수학 (가) 서바이벌 정규반 Shorcut 기하벡터 [S반 수학 (가) 서바이벌 정규반 Shorcut 기하벡터 [S반 수학 (가) 서바이벌 정규반 Shorcut 기하벡터 [S반 수학 (가) 서바이벌 정규반 Shorcut 기하벡터 [S반 수학 (가) 서바이벌 정규반 Shorcut 기하벡터</span>

                        <div class="graph-area">
                            <div class="bar">
                                <div class="bar-progress" style="right:64%;"></div><!-- 100% - ( 수강한 강의 / 전체 강의 ) -->
                            </div>

                            <div class="legend">
                                <div>OT</div>
                                <div class="point1">7강</div><!-- 현재 강의 / 전체 강의 -->
                                <div class="point2">14강</div><!-- 현재 강의 / 전체 강의 -->
                                <div class="point3">21강</div><!-- 현재 강의 / 전체 강의 -->
                                <div>28강(완강)</div>
                            </div>

                            <div class="upload" style="right:36%">업로드 완료</div><!-- 100% - ( 수강한 강의 / 업로드 된 강의 ) -->
                        </div>
                    </li>
                </ul>
                <!--// E : 수강 그래프 -->

                <!-- S : 교재정보 -->
                <div class="book-content">
                    <div class="tit-area">
                        <h4 class="tit-dep5">교재</h4>

                        <div class="btn-area tit-side">
                            <!-- <a href="#" class="btn btn-M">교재안내보기</a> : 미사용 -->
                            <a href="javascript:void(0);" class="btn btn-M">8/2 배송완료</a>
                        </div>
                    </div>

                    <div class="content-area float-area">
                        <div class="book-img fl">
                            <img src="https://via.placeholder.com/480x640" alt="교재명 이미지">
                        </div>

                        <ul class="book-list fr">
                            <li>
                                <span class="sticker-red">주교재</span>
                                교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명
                            </li>

                            <% for i = 1 to 2 %>
                            <li>
                                <span class="sticker-yellow">부교재</span>
                                교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명
                            </li>
                            <% next %>
                        </ul>
                    </div>
                </div>
                <!--// E : 교재정보 -->

                <!-- S : 목차정보 -->
                <div class="index-content">
                    <dl class="toggle-type1">
                        <% for i = 1 to 5 %>
                        <dt <% if i = 1 then %>class="selected"<% end if %>><a href="javascript:void(0)"><span>
                                <%= i %>단원 단원명이 들어갑니다.
                        </span></a></dt>
                        <dd <% if i = 1 then %>class="selected"<% end if %>>
                            <ul class="list-index">
                                <% for j = 1 to 3 %>
                                <li>
                                    <div class="cont-area">
                                        <div class="txt">
                                            <span><%= j %>강</span>
                                            <span class="color-gray">47분</span>
                                        </div>
        
                                        <div class="tit">강의명이 들어갑니다.</div>
                                    </div>

                                    <div class="btn-area">
                                        <a href="/totalWebSite/sdijx/player/player.asp" class="btn btn-M btn-green">PLAY</a>
                                        <a href="javascript:void(0);" class="btn btn-M btn-gray">DOWNLOAD</a>
                                    </div>
                                </li>
                                <% next %>
                            </ul>
                        </dd>
                        <% next %>
                    </dl>
                </div>
                <!--// E : 목차정보 -->
            </div>
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->