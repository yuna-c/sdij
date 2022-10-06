<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 내강좌 > 강좌보기
' 모듈기능 : 마이페이지 > 내강좌 > 강좌보기
' 파 일 명 : lecture_detail.asp
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
    <div class="layout-container fixed-container mypage-container">
        <div class="content-layout">
            <h2 class="step-tit">My Lecture</h2>

            <!-- S : 강좌정보 -->
            <div class="board-lec border-none">
                <h4 class="lec-tit"><a href="/totalMobileSite/renew2019/sdijS/_on/lecture/detail.asp">
                    [S반 수학 (가)] 서바이벌 정규반 Shotcut 기하벡터 강의가 길면두줄 [S반 수학 (가)] 서바이벌 정규반 Shotcut 기하벡터 강의가 길면두줄
                </a></h4>

                <table>
                    <tbody>
                        <tr>
                            <td>
                                <ul class="list-dash">
                                    <li>[주교재] Extreme Shortcut</li>
                                    <li>[부교재] Shortcut</li>
                                </ul>
                            </td>
                            <td class="btn-area">
                                <input type="button" onclick="fnOpenLayer('pop-bookdetail')" class="btn btn-black" value="교재안내보기">
                                <input type="button" class="btn" value="배송현황보기">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--// E : 강좌정보 -->

            <hr>

            <!-- S : 강의 수강현황 -->
            <h3 class="dep2-tit">강의 수강현황</h3>

            <div class="lec-info">
                <ul>
                    <li class="border-black">
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
                    </li>
                </ul>
            </div>

            <dl class="list-toggle list-toggle2">
                <dt>
                    <a href="javascript:void(0);">
                        <span class="tit"><em class="ff-serif">Ⅰ</em>.단원</span>
                        <span class="txt">단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명</span>
                    </a>
                </dt>
                <dd>
                    <div class="lec-box">
                        <!-- S : 강의 목록 -->
                        <div class="unit-info">
                            <ul>
                                <% for i = 1 to 10 %>
                                <li>
                                    <div class="graph-info">
                                        <div class="pie-chart" data-percent="50"></div><!-- 강의수강률(%) data-percent="숫자" -->
                                    </div>
                                    <div class="tit-info">
                                        <a href="/renew2019/sdijS/_player/player.asp"><% = i %>강. 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명</a>
                                    </div>
                                    <% if i = 5 then '마지막 수강한 강좌만 노출 %>
                                    <div class="play-info">
                                        <a href="/totalMobileSite/renew2019/sdijS/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>계속 수강하기</a>
                                    </div>
                                    <% end if %>
                                </li>
                                <% next %>
                            </ul>
                        </div>
                        <!--// E : 강의 목록 -->
                    </div>
                </dd>
                <dt>
                    <a href="javascript:void(0);">
                        <span class="tit"><em class="ff-serif">Ⅱ.</em>단원</span>
                        <span class="txt">단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명</span>
                    </a>
                </dt>
                <dd>
                    <div class="lec-box">
                        <!-- S : 강의 목록 -->
                        <div class="unit-info">
                            <ul>
                                <% for i = 1 to 10 %>
                                <li>
                                    <div class="graph-info">
                                        <div class="pie-chart" data-percent="10"></div><!-- 강의수강률(%) data-percent="숫자" -->
                                    </div>
                                    <div class="tit-info">
                                        <a href="/totalMobileSite/renew2019/sdijS/_player/player.asp"><% = i %>강. 강의명 강의명 강의명 강의명</a>
                                    </div>
                                    <% if i = 5 then '마지막 수강한 강좌만 노출 %>
                                    <div class="play-info">
                                        <a href="/totalMobileSite/renew2019/sdijS/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>계속 수강하기</a>
                                    </div>
                                    <% end if %>
                                </li>
                                <% next %>
                            </ul>
                        </div>
                        <!--// E : 강의 목록 -->
                    </div>
                </dd>
                <dt>
                    <a href="javascript:void(0);">
                        <span class="tit"><em class="ff-serif">Ⅲ.</em>단원</span>
                        <span class="txt">단원명 </span>
                    </a>
                </dt>
                <dd>
                    <div class="lec-box">
                        <!-- S : 강의 목록 -->
                        <div class="unit-info">
                            <ul>
                                <% for i = 1 to 10 %>
                                <li>
                                    <div class="graph-info">
                                        <div class="pie-chart" data-percent="100"></div><!-- 강의수강률(%) data-percent="숫자" -->
                                    </div>
                                    <div class="tit-info">
                                        <a href="/totalMobileSite/renew2019/sdijS/_player/player.asp"><% = i %>강. 강의명 강의명 강의명 강의명</a>
                                    </div>
                                    <% if i = 5 then '마지막 수강한 강좌만 노출 %>
                                    <div class="play-info">
                                        <a href="/totalMobileSite/renew2019/sdijS/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>계속 수강하기</a>
                                    </div>
                                    <% end if %>
                                </li>
                                <% next %>
                            </ul>
                        </div>
                        <!--// E : 강의 목록 -->
                    </div>
                </dd>
            </dl>
            <!--// E : 강의 수강현황 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/qna_write.asp" class="btn btn-darkgray">질문하기</a>
        <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/review_write.asp" class="btn btn-black">리뷰작성</a>
    </div>
    
    <!-- S : dim-layer -->
    <link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/popup.css?d=<%= now() %>">

    <div class="dim-layer">
        <div class="dim-bg"></div>

        <!-- S : 교재 안내 팝업 -->
        <!--#include virtual="/totalMobileSite/renew2019/sdijS/_mypage/lecture/pop.bookdetail.asp"-->
        <!--// E : 교재 안내 팝업 -->
    </div>
    <!--// E : dim-layer -->
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    // 차트 그리기
    if( $('.graph-info .pie-chart').length > 0 ){ 

        $('.graph-info .pie-chart').each(function(){
            var $percent = $(this).data('percent');
            
            $(this).css('background', 'conic-gradient(rgb(0, 0, 0) 0%, rgb(0, 0, 0) ' + $percent + '%, rgb(255, 255, 255) ' + $percent + '%, rgb(255, 255, 255) 100%)');
        });
    };
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->