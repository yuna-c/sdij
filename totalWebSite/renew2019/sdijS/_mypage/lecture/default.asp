<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 내강좌 > 메인
' 모듈기능 : 마이페이지 > 내강좌 > 메인
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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mypage-container">
			<!-- S : SNB -->
			<!--#include virtual="/totalWebSite/renew2019/sdijS/_mypage/inc.snb.asp"-->
			<!--// E : SNB -->
            <div class="content-layout">


                <div class="board-layout">
                    <!-- S : 최근 본 강좌 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit mt0">최근 본 강좌</h3>

                        <div class="tit-side lec-legend">
                            <span class="black">진도율</span>
                            <span class="dark-gray">강의 업로드율</span>
                        </div>
                    </div>

                    <div class="lec-info">
                        <table>
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:166px;">
                            </colgroup>
                            <tbody>
                                <% for i = 1 to 2 %>
                                <tr>
                                    <th><a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp" class="tit-txt">[S반 수학 (가)] 서바이벌 정규반 Shotcut_기하벡터 강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명v</a></th>
                                    <th>
                                        <div class="btn-info">
                                            <a href="/totalWebSite/renew2019/sdijS/_on/teachers/qna_write.asp" class="btn">질문하기</a>
                                            <a href="/totalWebSite/renew2019/sdijS/_on/teachers/review_write.asp" class="btn">후기쓰기</a>
                                        </div>
                                    </th>
                                </tr>
                                <tr>
                                    <td>
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
                                    </td>
                                    <td>
                                        <div class="play-info">
                                            <a href="/totalWebSite/renew2019/sdijS/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>강좌 이어보기</a>
                                            <a href="#" class="btn">8-3 교재 배송 중</a>
                                        </div>
                                    </td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 최근 본 강좌 -->

                    <!-- S : 내 강좌 -->
                    <h3 class="dep2-tit">상품명 _ 시대인재S S반</h3>

                    <!-- S : dep1-tab -->
                    <ul class="dep1-tab">
                        <li class="selected"><a href="javascript:void(0);">Pass</a></li>
                        <li><a href="javascript:void(0);">단강좌</a></li>
                        <li><a href="javascript:void(0);">패키지</a></li>
                    </ul>
                    <!--// E : dep1-tab -->

                    <div class="search-area">
                        <input type="text" placeholder="추가하고 싶은 강좌를 검색해보세요.">
                        <button type="button" class="btn-search"><span class="ico ico-search2">검색하기</span></button>
                    </div>

                    <div class="result-area">
                        <div class="tit">
                            총 <span class="color-black">000</span>개의 강좌가 검색 되었습니다.

                            <a href="javasscript:void(0);" class="btn-toggle">검색 닫기<span class="ico ico-snb-top"></span></a>
                        </div>

                        <div class="board-lec">
                            <table>
                                <colgroup>
                                    <col style="width:80px;">
                                    <col style="width:auto;">
                                    <col style="width:110px;">
                                </colgroup>
                                <tbody>
                                    <% for i = 1 to 3 %>
                                    <tr>
                                        <td class="img-area"><img src="https://via.placeholder.com/80x80" alt="강좌 이미지"></td>
                                        <td class="lec-area">
                                            <div class="data-tit">
                                                <a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
                                            </div>
                                            <div class="data-info">
                                                <span>강좌구성 05강</span>
                                                <span>수강기간 135일</span>
                                            </div>
                                        </td>
                                        <td class="play-area">
                                            <input type="button" class="btn btn-sm" value="추가하기">
                                        </td>
                                    </tr>
                                    <% next %>
                                </tbody>
                            </table>

                            <div class="board-pager">
                                <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
                                <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>

                                <div class="pager-num">
                                    <a href="javascript:void(0);" class="on">1</a>
                                    <a href="javascript:void(0);">2</a>
                                    <a href="javascript:void(0);">3</a>
                                    <a href="javascript:void(0);">4</a>
                                    <a href="javascript:void(0);">5</a>
                                    <a href="javascript:void(0);">6</a>
                                    <a href="javascript:void(0);">7</a>
                                    <a href="javascript:void(0);">8</a>
                                    <a href="javascript:void(0);">9</a>
                                    <a href="javascript:void(0);">10</a>
                                </div>

                                <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
                                <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
                            </div>
                        </div>
                    </div>

                    <!-- S : dep3-btn -->
                    <!-- <div class="dep3-btn">
                        <a href="javascript:void(0)" onclick="window.open('./pop.passlec.asp','PASS 강좌 추가','width=840, height=1100, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="ico ico-lec-plus"></span>Pass 강좌 추가하기</a>
                        <a href="javascript:void(0)" onclick="window.open('./pop.timetable.asp','시간표 보기','width=1000, height=720, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="ico ico-date-b"></span>시간표 보기</a>
                    </div> -->
                    <!--// E : dep3-btn -->

                    <!-- S : 내 강좌 모두보기 리스트 -->
                    <h4 class="dep3-tit">[내 강좌 모두 보기]</h4>

                    <!-- S : dep2-tab -->
                    <ul class="dep2-tab">
                        <li class="selected"><a href="javascript:void(0);">전체</a></li>
                        <li><a href="javascript:void(0);">수학(가)</a></li>
                        <li><a href="javascript:void(0);">영어</a></li>
                        <li><a href="javascript:void(0);">생명과학</a></li>
                        <li><a href="javascript:void(0);">화학</a></li>
                        <li><a href="javascript:void(0);">물리</a></li>
                    </ul>
                    <!--// E : dep2-tab -->

                    <div class="board-lec">
                        <table>
                            <colgroup>
                                <col style="width:80px;">
                                <col style="width:auto;">
                                <col style="width:110px;">
                            </colgroup>
                            <tbody>
                                <% for i = 1 to 5 %>
                                <tr>
                                    <td class="img-area"><img src="https://via.placeholder.com/80x80" alt="강좌 이미지"></td>
                                    <td class="lec-area">
                                        <div class="data-tit">
                                            <a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
                                        </div>
                                        <div class="data-info">
                                            <span>강좌구성 05강</span>
                                            <span>수강기간 135일</span>
                                        </div>
                                    </td>
                                    <td class="play-area">
                                        <% if i = 1 then %>
                                        <a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/lecture_detail.asp" class="btn btn-sm btn-black">강좌 보기</a>
                                        <% else %>
                                        <input type="button" class="btn btn-sm" value="수강 대기" disabled>
                                        <% end if %>
                                    </td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 내 강좌 모두보기 리스트 -->
                    <!--// E : 내 강좌 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    $('.btn-toggle').on('click', function(){
        $(this).parent().next('.board-lec').slideToggle();

        if( $(this).find('.ico').hasClass('ico-snb-bottom') === true ){
            $(this).html('검색 닫기<span class="ico ico-snb-top"></span>');
        }else{
            $(this).html('검색 열기<span class="ico ico-snb-bottom"></span>');
        }
    });
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
