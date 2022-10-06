<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 마이페이지 메인
' 모듈기능 : 시대인재 Digital > 마이페이지 메인
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/mypage.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="index-container">
        <div class="content-layout">
            <h2 class="tit-dep1">
                <span class="tit">마이페이지</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <!-- S : LIVE 시간표 -->
            <div class="timetable-content">
                <div class="tit-area">
                    <h2 class="tit-dep4">LIVE 시간표</h2>

                    <div class="tit-side">
                        <a href="javascript:void(0)" class="btn-ico"><i class="ico-left">지난 주</i></a>
                        <span class="week">3월 5주차</span>
                        <a href="javascript:void(0)" class="btn-ico"><i class="ico-right">다음 주</i></a>
                    </div>
                </div>

                <div class="table-schd">
                    <dl class="list-time">
                        <dt><span class="blind">시간</span></dt>

                        <dd>
                            <p><span class="num">1</span>교시</p>
                            <p class="time">(9:30 ~ 12:30)</p>
                        </dd>
                        <dd>
                            <p><span class="num">2</span>교시</p>
                            <p class="time">(14:00 ~ 17:00)</p>
                        </dd>
                        <dd>
                            <p><span class="num">3</span>교시</p>
                            <p class="time">(18:30 ~ 22:00)</p>
                        </dd>
                    </dl>
                    <% for i = 1 to 7 %>
                    <dl <% if i = 3 then %>class="today"<% end if %>><!-- 오늘 날짜 class="today" -->
                        <dt>
                            월
                            <p class="day">03/23</p>
                        </dt>
                        
                        <dd><a href="/totalWebSite/sdijx/mypage/lecView.asp">
                            <span class="name">박종민 선생님</span>
                            <span class="tit">수학(가) 서바이벌</span>
                            <span class="time">9:00 ~ 12:00</span>
                        </a></dd>
                        <dd><a href="/totalWebSite/sdijx/mypage/lecView.asp">
                            <span class="name">박종민 선생님</span>
                            <span class="tit">수학(가) 서바이벌 정규과정 수학(가) 서바이벌 정규과정 수학(가) 서바이벌 정규과정 수학(가) 서바이벌 정규과정 수학(가) 서바이벌 정규과정 수학(가) 서바이벌 정규과정 수학(가) 서바이벌 정규과정</span>
                        </a></dd>
                        <dd <% if i = 3 then %>class="live"<% end if %>><a <% if i = 3 then %>href="/totalWebSite/sdijx/player/playerLive.asp"<% else %>href="/totalWebSite/sdijx/mypage/lecView.asp"<% end if %>><!-- 현재 라이브 class="live" -->
                            <span class="name">박종민 선생님</span>
                            <span class="tit">수학(가) 서바이벌 정규과정 수학(가) 서바이벌 정규과정</span>
                        </a></dd>
                    </dl>
                    <% next %>
                </div>
            </div>
            <!--// E : LIVE 시간표 -->

            <!-- S : 최근 본 VOD -->
            <div class="lecture-content">
                <h4 class="tit-dep4">최근 본 VOD</h4>

                <ul class="preview-lecture">
                    <% for i = 1 to 2 '최근 본 VOD 2개 노출 %>
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

                <!-- S : 최근 본 강좌가 없을 경우 -->
                <div class="no-data">
                    <i class="ico-alert"></i>
                    최근 본 강좌가 없습니다.
                </div>
                <!--// E : 최근 본 강좌가 없을 경우 -->
            </div>
            <!--// E : 최근 본 VOD -->

            <!-- S : 선생님 공지사항 -->
            <div class="notice-content">
                <h4 class="tit-dep4">선생님 공지사항</h4>

                <div class="list-board summary-board">
                    <ul>
                        <% for i = 1 to 3 '최대 공지글 3개 노출 %>
                        <li>
                            <a href="/totalWebSite/sdijx/teachers/noticeView.asp">
                                <div class="visual-area">
                                    <span class="name">국어 김은양</span>
                                    5/14
                                </div>

                                <div class="tit-area">
                                    <p>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</p>
                                    <p>제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목</p>
                                </div>

                                <div class="txt-area">
                                    개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다
                                </div>

                                <i class="ico-next"></i>
                            </a>
                        </li>
                        <% next %>
                    </ul>

                    <a href="/totalWebSite/sdijx/mypage/teacherList.asp" class="btn-cir btn-L btn-more"><i class="ico-plus">전체 글 보러가기</i></a>
                </div>
            </div>
            <!--// E : 선생님 공지사항 -->

            <!-- S : 나의 학습질문 / 답변  -->
            <div class="board-content">
                <h4 class="tit-dep4">나의 학습질문 / 답변</h4>

                <div class="table-type1">
                    <ul>
                        <% for i = 1 to 5 '최대 게시글 5개 노출 %>
                        <li>
                            <div class="type-area">
                                <% if i = 1 then '답변 대기중 일 경우 %>
                                <i class="ico-ellipsis"></i> 답변대기중
                                <% else %>
                                <i class="ico-check"></i> 답변완료
                                <% end if %>
                            </div>

                            <div class="tit-area">
                                <a href="/totalWebSite/sdijx/teachers/qnaView.asp" class="tit">
                                    질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요

                                    <i class="ico-new"></i><!-- 신규게시글 일 경우 노출 -->
                                </a>
                            </div>

                            <div class="name-area">홍길동</div>
                            <div class="date-area">2020/01/01</div>
                        </li>
                        <% next %>
                    </ul>
                </div>
            </div>
            <!--// E : 나의 학습질문 / 답변  -->
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->