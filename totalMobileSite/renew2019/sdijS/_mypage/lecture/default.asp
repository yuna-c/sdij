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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container mypage-container">
        <div class="content-layout">
            <h2 class="step-tit">My Lecture</h2>

            <!-- S : 최근 본 강좌 -->
            <h3 class="dep2-tit border-tit mb0">최근 본 강좌</h3>

            <div class="lec-info">
                <ul>
                    <% for i = 1 to 2 %>
                    <li>
                        <a href="/_mypage/lecture/lecture_detail.asp" class="tit-txt">[S반 수학 (가)] 서바이벌 정규반 Shotcut_기하벡터 강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명v</a>

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
                            <a href="/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>강좌 이어보기</a>
                        </div>
                    </li>
                    <% next %>
                </ul>
            </div>
            <!--// E : 최근 본 강좌 -->

            <hr>

            <!-- S : 내 강좌 -->
            <h3 class="dep2-tit">상품명 _ 시대인재S S반</h3>

            <!-- S : dep1-tab -->
            <div class="dep1-tab border-gray">
                <ul>
                    <li class="selected"><a href="javascript:void(0);">Pass</a></li>
                    <li><a href="javascript:void(0);">단강좌</a></li>
                    <li><a href="javascript:void(0);">패키지</a></li>
                </ul>
            </div>
            <!--// E : dep1-tab -->

            <div class="search-area">
                <input type="text" placeholder="추가하고 싶은 강좌를 검색해보세요.">
                <button type="button" class="btn-search"><span class="ico ico-search2">검색하기</span></button>
            </div>

            <!-- S : 검색 결과 -->
            <div class="result-area">
                <div class="tit">
                    총 <span class="color-black">000</span>개의 강좌가 검색 되었습니다.

                    <a href="javasscript:void(0);" class="btn-toggle">검색 닫기<span class="ico ico-top"></span></a>
                </div>

                <div class="board-lec board-lec2">
                    <table>
                        <colgroup>
                            <col style="width:80px;">
                            <col style="width:auto;">
                            <col style="width:110px;">
                        </colgroup>
                        <tbody>
                            <% for i = 1 to 3 %>
                            <tr>
                                <td class="lec-area">
                                    <div class="data-tit">
                                        <a href="/_mypage/lecture/lecture_detail.asp">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
                                    </div>
                                    <div class="data-info">
                                        <span>강좌구성 05강</span>
                                        <span>수강기간 135일</span>

                                        <input type="button" class="btn btn-sm2" value="추가하기">
                                    </div>
                                </td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>

                    <div class="board-btn">
                        <button type="button" class="btn-more">더 보기</button>
                    </div>
                </div>
            </div>
            <!--// E : 검색 결과 -->

            <!-- S : 내 강좌 모두보기 리스트 -->
            <h4 class="dep3-tit">[내 강좌 모두 보기]</h4>

            <!-- S : dep2-tab -->
            <div class="dep2-tab">
                <div class="form-select">
                    <select>
                        <option value="">전체</option>
                    </select>
                </div>

                <div class="form-select">
                    <select>
                        <option value="">전체</option>
                    </select>
                </div>
            </div>
            <!--// E : dep2-tab -->

            <div class="board-lec board-lec2">
                <table>
                    <colgroup>
                        <col style="width:80px;">
                        <col style="width:auto;">
                        <col style="width:110px;">
                    </colgroup>
                    <tbody>
                        <% for i = 1 to 5 %>
                        <tr>
                            <td class="lec-area">
                                <div class="data-tit">
                                    <a href="/_mypage/lecture/lecture_detail.asp">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
                                </div>
                                <div class="data-info">
                                    <span>강좌구성 05강</span>
                                    <span>수강기간 135일</span>

                                    <% if i = 1 then %>
                                    <a href="/_mypage/lecture/lecture_detail.asp" class="btn btn-sm2 btn-black">강좌 보기</a>
                                    <% else %>
                                    <input type="button" class="btn btn-sm2" value="수강 대기" disabled>
                                    <% end if %>
                                </div>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>

            <div class="board-btn">
                <button type="button" class="btn-more">더 보기</button>
            </div>
            <!--// E : 내 강좌 모두보기 리스트 -->
            <!--// E : 내 강좌 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    $('.btn-toggle').on('click', function(){
        $(this).parent().next('.board-lec').slideToggle();

        if( $(this).find('.ico').hasClass('ico-btm') === true ){
            $(this).html('검색 닫기<span class="ico ico-top"></span>');
        }else{
            $(this).html('검색 열기<span class="ico ico-btm"></span>');
        }
    });
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->