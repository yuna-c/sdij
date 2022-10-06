<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 마이페이지 > 메인
' 모듈기능 : 시대인재 Digital > 마이페이지 > 메인
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
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/digital/common/css/mypage.css?ver=<%=now()%>" />
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="mypage-container">
        <div class="content-layout">
            <h2 class="tit-dep1 tit-page">마이페이지</h2>

            <!-- S : 마이페이지 메뉴 -->
            <!--#include virtual="/totalWebSite/renew2019/digital/mypage/inc.lnb.asp"-->
            <!--// E : 마이페이지 메뉴 -->

            <!-- S : 공지사항 -->
            <article class="notice-article">
                <a href="/totalWebSite/renew2019/digital/board/notice_detail.asp">7/00(0) 최수준 선생님의 생명과학Ⅰ서바이벌 31강이 업로드 되었습니다.</a>
            </article>
            <!--// E : 공지사항 -->

            <!-- S : 시간표 -->
            <article class="timetable-article">
                <div class="tit-area">
                    <h3 class="tit-dep2 tit-bg">나의 시간표</h3>

                    <div class="tit-side">
                        <a href="javascript:void(0)" class="btn-type2 btn-prev">이전주</a>
                        <span class="week">3월 5주차</span>
                        <a href="javascript:void(0)" class="btn-type2 btn-next">다음주</a>
                    </div>
                </div>

                <div class="time-table">
                    <dl class="time-list">
                        <dt><span class="blind">시간</span></dt>
                        <dd>
                            <span><em class="num">1</em>교시</span>
                            <span class="time">(9:30-12:30)</span>
                        </dd>
                        <dd>
                            <span><em class="num">2</em>교시</span>
                            <span class="time">(14:00-17:00)</span>
                        </dd>
                        <dd>
                            <span><em class="num">3</em>교시</span>
                            <span class="time">(18:30-22:00)</span>
                        </dd>
                    </dl>
                    <% for i = 1 to 7 %>
                    <dl <% if i = 1 then %>class="today"<% end if %>><!-- 오늘 날짜 class="today" -->
                        <dt>
                            월
                            <p>03/23</p>
                        </dt>
                        <dd><a href="/totalWebSite/renew2019/digital/lecture/detail.asp" data-time="1교시 (9:30-12:30)">
                            <span class="name">박종민T</span>
                            <span class="tit">수학(가) 서바이벌 정규과정 블라블라블라블라블라블라블라</span>
                            <span class="time">9:00 ~ 12:00</span>
                        </a></dd>
                        <dd><a href="/totalWebSite/renew2019/digital/lecture/detail.asp" data-time="2교시 (14:00-17:00)">
                            <span class="name">박종민T</span>
                            <span class="tit">수학(가) 서바이벌 정규과정 블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블블라블라블라블라블라블라블라</span>
                        </a></dd>
                        <dd <% if i = 1 then %>class="live"<% end if %>><a <% if i = 1 then %>href="/totalWebSite/renew2019/digital/lecture/player_live.asp"<% else %>href="/totalWebSite/renew2019/digital/lecture/detail.asp"<% end if %> data-time="3교시 (18:30-22:00)"><!-- 현재 라이브 class="live" -->
                            <span class="name">박종민T</span>
                            <span class="tit">수학(가) 서바이벌 정규과정 블라블라블라블라블라블라블라</span>
                        </a></dd>
                    </dl>
                    <% next %>
                </div>
            </article>
            <!--// E : 시간표 -->

            <!-- S : 게시판 -->
            <article class="board-article">
                <div>
                    <h3 class="tit-dep2 tit-bg">시대인재 공지사항</h3>

                    <ul class="board-list">
                        <% for i = 1 to 4 '최근 4개의 게시글 뿌려짐 %>
                        <li><a href="/totalWebSite/renew2019/digital/board/notice_detail.asp">
                            <% if i = 1 then '공지 스티커 %>
                            <span class="sticker-pink">공지사항</span>
                            <% elseif i = 2 then '이벤트 %>
                            <span class="sticker-yellow">이벤트</span>
                            <% end if %>
                            <span class="tit">제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목</span>
                        </a></li>
                        <% next %>
                    </ul>

                    <a href="/totalWebSite/renew2019/digital/board/notice_list.asp" class="btn btn-S">더보기</a>
                </div>

                <div>
                    <h3 class="tit-dep2 tit-bg">학습질문답변</h3>

                    <ul class="board-list">
                        <% for i = 1 to 4 '최근 4개의 게시글 뿌려짐 %>
                        <li><a href="/totalWebSite/renew2019/digital/board/notice_detail.asp">
                            <% if i = 1 then '답변완료 일 경우 %>
                            <span class="sticker-green sticker-check">답변완료</span>
                            <% else '답변대기 일 경우 %>
                            <span class="sticker-gray">답변 대기중</span>
                            <% end if %>

                            <span class="tit">제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목</span>
                        </a></li>
                        <% next %>
                    </ul>

                    <a href="/totalWebSite/renew2019/digital/board/qna_list.asp" class="btn btn-S">더보기</a>
                </div>
            </article>
            <!--// E : 게시판 -->
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->