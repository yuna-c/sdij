<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 내강좌 > 강좌보기 > 단원보기
' 모듈기능 : 마이페이지 > 내강좌 > 강좌보기 > 단원보기
' 파 일 명 : unit_detail.asp
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
        <div class="layout-container mypage-container mt60">
            <div class="content-layout snb-layout">
                <!-- S : SNB -->
                <!--#include virtual="/totalWebSite/renew2019/sdijS/_mypage/lecture/inc.lec.snb.asp"-->
                <!--// E : SNB -->
                
                <div class="board-layout">
                    <!-- S : 강좌정보 -->
                    <div class="lec-info">
                        <table>
                            <colgroup>
                                <col style="width:140px;">
                                <col style="width:auto;">
                                <col style="width:166px;">
                            </colgroup>
                            <tbody>
                                <tr class="tit-line">
                                    <th class="img-area"><img src="https://via.placeholder.com/140x140" alt="선생님 이미지"></th>
                                    <th class="lec-area" colspan="2">
                                        <div class="tit-info">[S반 수학 (가)] 서바이벌 정규반 Shotcut_기하벡터강좌명강좌명강좌명강좌명강좌명강</div>
                                    </th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 강좌정보 -->

                    <!-- S : 강의 수강현황 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit">강의 수강현황</h3>
                    </div>

                    <div class="unit-info">
                        <table>
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:100px;">
                                <col style="width:60px;">
                                <col style="width:165px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="tit-info" colspan="4">
                                        <span class="tit"><em class="ff-serif">Ⅰ</em>.단원</span>
                                        <span class="txt">단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명 단원명</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for i = 1 to 10 %>
                                <tr <% if i = 5 then '마지막 수강한 강좌만 노출 %>class="lec-line"<% end if %>>
                                    <td>
                                        <div class="graph-info">
                                            <div class="pie-chart" data-percent="100"></div><!-- 강의수강률(%) data-percent="숫자" -->
                                        </div>
                                        <div class="tit-info">
                                            <a href="/totalWebSite/renew2019/sdijS/_player/player.asp"><% = i %>강. 강의명 강의명 강의명 강의명</a>
                                        </div>
                                    </td>
                                    <td class="color-gray">2시간 47분</td>
                                    <td>
                                        <button type="button"><span class="ico ico-file2">첨부파일</span></button>
                                    </td>
                                    <td>
                                        <% if i = 5 then '마지막 수강한 강좌만 노출 %>
                                        <div class="play-info">
                                            <a href="/totalWebSite/renew2019/sdijS/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>계속 수강하기</a>
                                        </div>
                                        <% end if %>
                                    </td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 강의 수강현황 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
$(function(){
    // 차트 그리기
    if( $('.graph-info .pie-chart').length > 0 ){ 

        $('.graph-info .pie-chart').each(function(){
            var $percent = $(this).data('percent');
            
            $(this).css('background', 'conic-gradient(rgb(0, 0, 0) 0%, rgb(0, 0, 0) ' + $percent + '%, rgb(255, 255, 255) ' + $percent + '%, rgb(255, 255, 255) 100%)');
        });
	};
});

</script>
<!--// E : 페이지별 스크립트 -->