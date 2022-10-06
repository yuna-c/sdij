<!--include virtual="/totalMobileSite/renew2019/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 메인
' 모듈기능 : 마이페이지 > 메인
' 파 일 명 : default.asp
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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container mypage-container">
        <div class="content-layout">
            <!-- S : 공부시간 -->
            <h3 class="dep2-tit">공부시간</h3>
            
            <div class="hr-graph">
                <ul>
                    <li>
                        <span class="tit">오늘</span>
                        <span class="hour1">8hr</span>
                    </li>
                    <li>
                        <span class="tit">이번주</span>
                        <span class="hour2">28hr</span>
                    </li>
                    <li>
                        <span class="tit"><em>8</em>월 누적</span>
                        <span class="hour3">160hr</span>
                    </li>
                </ul>
            </div>
            <!--// E : 공부시간 -->

            <hr>

            <!-- S : 부엉이 포스트, My lecture -->
            <div class="owl-info float-area">
                <dl class="fl">
                    <dt>부엉이 포스트</dt>
                    <dd>
                        <span class="tit">점수</span>
                        <span class="score">100점</span>
                    </dd>
                    <dd>
                        <span class="tit">등급</span>
                        <span class="score">1등급</span>
                    </dd>
                    <dd>
                        <span class="tit">예상 백분위</span>
                        <span class="score">100%</span>
                    </dd>
                </dl>

                <dl class="fr">
                    <dt>My lecture</dt>
                    <dd>
                        <span class="tit">수강 중</span>
                        <span class="score">5</span>
                    </dd>
                    <dd>
                        <span class="tit">수강 대기</span>
                        <span class="score">3</span>
                    </dd>
                    <dd>
                        <span class="tit">수강 종료</span>
                        <span class="score">1</span>
                    </dd>
                </dl>
            </div>
            <!--// E : 부엉이 포스트, My lecture -->

            <hr>

            <!-- S : 최근 본 강좌 -->
            <h3 class="dep2-tit border-tit mb0">최근 본 강좌</h3>

            <div class="lec-info">
                <ul>
                    <li>
                        <a href="/totalMobileSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp" class="tit-txt">[S반 수학 (가)] 서바이벌 정규반 Shotcut_기하벡터 강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명v</a>

                        <div class="lec-graph">
                            <div class="info-area"><span class="txt">OT</span></div>

                            <!-- S : 총 강의 -->
                            <div class="graph1">
                                <div class="info-area">
                                    <span class="txt">34강 예정</span>
                                </div>
                            </div>
                            <!--// E : 총 강의 -->

                            <!-- S : 오픈 강의 -->
                            <div class="graph2" style="width:58%">
                                <div class="info-area">
                                    <span class="txt">20강</span>
                                </div>
                            </div>
                            <!--// E : 오픈 강의 -->

                            <!-- S : 수강 중 강의 -->
                            <div class="graph3" style="width:6%">
                                <div class="info-area">
                                    <span class="txt">2강</span>
                                </div>
                            </div>
                            <!--// E : 수강 중 강의 -->
                        </div>

                        <div class="play-info">
                            <a href="/totalMobileSite/renew2019/sdijS/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>강좌 이어보기</a>
                        </div>
                    </li>
                </ul>
            </div>
            <!--// E : 최근 본 강좌 -->

            <hr>

            <!-- S : 시대인재 공지사항 -->
            <div class="tit-area border-tit mb0">
                <h3 class="dep2-tit">시대인재 공지사항</h3>

                <div class="tit-side">
                    <a href="/totalMobileSite/renew2019/sdijS/_on/board/notice_list.asp" class="more-link">전체보기</a>
                </div>
            </div>

            <div class="board-list board-list2">
                <ul class="border-none">
                    <% for i = 1 to 2 %>
                    <li>
                        <% if i = 1 then '공지 아이콘 %>
                        <div class="data-sticker">
                            <span class="sticker-board sticker-red">notice</span>
                        </div>
                        <% elseif i = 2 then '이벤트 아이콘 %>
                        <div class="data-sticker">
                            <span class="sticker-board sticker-purple">event</span>
                        </div>
                        <% end if %>

                        <div class="data-tit">
                            <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/notice_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
                                가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                            </a>
                        <% if i = 1 then '신규 게시글 일 경우 %>
                            <span class="ico ico-new">신규 게시물</span>
                        <% end if %>
                        </div>
                    
                        <div class="data-day">
                            <span>2019-01-01</span>
                        </div>
                    </li>
                    <% next %>
                </ul>
            </div>
            <!--// E : 시대인재 공지사항 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->