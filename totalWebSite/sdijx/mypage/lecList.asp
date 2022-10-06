<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 마이페이지 > 나의 강의
' 모듈기능 : 시대인재 Digital > 마이페이지 > 나의 강의
' 파 일 명 : lecList.asp
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
    <section id="container" class="lecture-container mt40">
        <div class="content-layout">
            <h2 class="tit-dep1">
                <span class="tit">마이페이지</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <!-- S : 최근 본 강좌 -->
            <div class="lecture-content">
                <h4 class="tit-dep4">최근 본 강좌</h4>

                <ul class="preview-lecture">
                    <% for i = 1 to 2 '최근 본 강좌 2개 노출 %>
                    <li>
                        <a href="/totalWebSite/sdijx/mypage/lecView.asp" class="tit">[S반 수학 (가) 서바이벌 정규반 Shorcut 기하벡터 [S반 수학 (가) 서바이벌 정규반 Shorcut 기하벡터</a>

                        <div class="graph-area">
                            <div class="bar">
                                <div class="bar-progress" style="<% if i = 1 then %>right:82.14%;<% else %>right:7.15%;<% end if %>"></div><!-- 100% - ( 수강한 강의 / 전체 강의 ) -->
                            </div>

                            <div class="legend">
                                <div>OT</div>
                                <div class="point1">7강</div><!-- 현재 강의 / 전체 강의 -->
                                <div class="point2">14강</div><!-- 현재 강의 / 전체 강의 -->
                                <div class="point3">21강</div><!-- 현재 강의 / 전체 강의 -->
                                <div>28강(완강)</div>
                            </div>
                        </div>

                        <div class="float-area">
                            <div class="btn-area fl">
                                <a href="/totalWebSite/sdijx/teachers/qnaWrite.asp" class="btn btn-M">질문하기</a>
                                <!-- <a href="javascript:void(0);" class="btn btn-M">후기쓰기</a> : 미사용 -->
                            </div>

                            <div class="btn-area fr">
                                <!-- <a href="javascript:void(0);" class="btn btn-M">교재 자세히보기</a> : 미사용 -->
                                <a href="/totalWebSite/sdijx/player/player.asp" class="btn btn-M">강좌 이어보기</a>
                            </div>
                        </div>
                    </li>
                    <% next %>
                </ul>
            </div>
            <!--// E : 최근 본 강좌 -->

            <!-- S : 수강 중인 강좌 -->
            <div class="card-content">
                <div class="tit-area">
                    <h4 class="tit-dep4">수강 중인 강좌</h4>
                    <!-- <div class="tit-side"><a href="/lecture/index.asp" class="tit-dep5 txt-line mb0">
                        강좌 추가 하기
                        <i class="ico-next"></i>
                    </a></div> : 미사용 -->
                </div>

                <!-- S : 강좌 리스트 -->
                <div class="tab-type1">
                    <ul>
                        <li class="selected"><a href="javascript:void(0);">전체</a></li>
                        <li><a href="javascript:void(0);">국어</a></li>
                        <li><a href="javascript:void(0);">영어</a></li>
                        <li><a href="javascript:void(0);">수학</a></li>
                        <li><a href="javascript:void(0);">과탐</a></li>
                        <li><a href="javascript:void(0);">사탐</a></li>
                        <li><a href="javascript:void(0);">한국사</a></li>
                    </ul>
                </div>

                <div class="tab-type2">
                    <ul>
                        <li class="selected"><a href="javascript:void(0);">김은양 선생님</a></li>
                        <li><a href="javascript:void(0);">홍길동 선생님</a></li>
                        <li><a href="javascript:void(0);">홍길동 선생님</a></li>
                        <li><a href="javascript:void(0);">홍길동 선생님</a></li>
                    </ul>
                </div>

                <div class="list-card col-50">
                    <ul>
                        <% for i = 1 to 6 '최대 강좌 6개 노출 이 후 더보기 버튼 클릭 시 6개씩 노출 %>

                        <% if i < 3 then '완강예정일 경우 %>
                        <li>
                            <a href="/totalWebSite/sdijx/mypage/lecView.asp">
                                <div class="hash-area">
                                    <span class="sticker-red">LIVE</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>완강예정일 2020/01/01</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>

                        <% else '완강일 경우 %>
                        <li>
                            <a href="/totalWebSite/sdijx/mypage/lecView.asp">
                                <div class="hash-area">
                                    <span class="sticker-yellow">완강</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>52강 완강</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>
                        <% end if %>

                        <% next %>
                    </ul>
                </div>

                <div class="btn-area txt-center mt30">
                    <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
                </div>
                <!--// E : 내 강좌 리스트 -->

                <!-- S : 수강 중인 강좌가 없을 경우 -->
                <div class="no-data">
                    <i class="ico-alert"></i>
                    수강 중인 강좌가 없습니다.
                </div>
                <!--// E : 수강 중인 강좌가 없을 경우 -->
            </div>
            <!--// E : 수강 중인 강좌 -->

            <!-- S : 수강 종료된 강좌 -->
            <div class="card-content">
                <h4 class="tit-dep4">수강 종료된 강좌</h4>

                <!-- S : 강좌 리스트 -->
                <div class="tab-type1">
                    <ul>
                        <li class="selected"><a href="javascript:void(0);">전체</a></li>
                        <li><a href="javascript:void(0);">국어</a></li>
                        <li><a href="javascript:void(0);">영어</a></li>
                        <li><a href="javascript:void(0);">수학</a></li>
                        <li><a href="javascript:void(0);">과탐</a></li>
                        <li><a href="javascript:void(0);">사탐</a></li>
                        <li><a href="javascript:void(0);">한국사</a></li>
                    </ul>
                </div>

                <div class="tab-type2">
                    <ul>
                        <li class="selected"><a href="javascript:void(0);">김은양 선생님</a></li>
                        <li><a href="javascript:void(0);">홍길동 선생님</a></li>
                        <li><a href="javascript:void(0);">홍길동 선생님</a></li>
                        <li><a href="javascript:void(0);">홍길동 선생님</a></li>
                    </ul>
                </div>

                <div class="list-card col-50">
                    <ul>
                        <% for i = 1 to 6 '최대 강좌 6개 노출 이 후 더보기 버튼 클릭 시 6개씩 노출 %>
                        <li>
                            <a href="/totalWebSite/sdijx/lecture/view.asp">
                                <div class="hash-area">
                                    <span class="sticker-gray">수강종료</span>
                                    <span>2020/12 ~ 2022/02</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 종료</span>
                                        <span>99강 완강</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>
                        <% next %>
                    </ul>
                </div>

                <div class="btn-area txt-center mt30">
                    <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
                </div>
                <!--// E : 내 강좌 리스트 -->

                <!-- S : 수강 종료된 강좌가 없을 경우 -->
                <div class="no-data">
                    <i class="ico-alert"></i>
                    수강 종료된 강좌가 없습니다.
                </div>
                <!--// E : 수강 종료된 강좌가 없을 경우 -->
            </div>
            <!--// E : 수강 종료된 강좌 -->
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->