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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mypage-container mt60">
            <div class="landing-layout">                
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
                                    <div class="btn-info">
                                        <a href="/totalWebSite/renew2019/sdijS/_on/teachers/qna_write.asp" class="btn">질문하기</a>
                                        <a href="/totalWebSite/renew2019/sdijS/_on/teachers/review_write.asp" class="btn">후기쓰기</a>
                                        <a href="#" class="btn">강좌정보</a>
                                    </div>
                                </th>
                            </tr>
                            <tr>
                                <td class="img-area book-img"><img src="https://via.placeholder.com/140x164" alt="교재 이미지"></td>
                                <td class="lec-area">
                                    <ul class="list-dash">
                                        <li>[주교재] 교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명교재명</li>
                                        <li>[부교재] 교재명교재명교재명</li>
                                        <li>[부교재] 교재명교재명교재명</li>
                                        <li>[부교재] 교재명교재명교재명</li>
                                        <li>[부교재] 교재명교재명교재명</li>
                                    </ul>
                                </td>
                                <td>
                                    <div class="play-info">
                                        <a href="javascript:void(0)" class="btn btn-black btn-tootip">교재 안내 보기</a>

                                        <!-- S : 교재 정보 -->
                                        <div class="tootip-layer book-view">
                                            <a href="javascript:void(0);" class="btn-close"><span class="ico ico-close">팝업창 닫기</span></a>
                                            
                                            <div class="tit">[홍길동T] NEW 2020 씹어먹는 EBS 수능완성 타 EBS 수능완성 타 EBS 수능완성 타이틀 두줄 일 때</div>
                                            
                                            <div class="float-area">
                                                <div class="slide-container fl">
                                                    <div class="slide-view">
                                                        <div><img src="https://via.placeholder.com/140x164?text=1" alt="교재명"></div>
                                                    </div>            
                                                </div>
                                        
                                                <div class="list-tit fr">
                                                    <dl>
                                                        <dt>판매가</dt>
                                                        <dd>
                                                            <del>99,900원</del>
                                                            →
                                                            <span class="color-red">90,000원 (10%할인)</span>
                                                        </dd>
                                        
                                                        <dt>책소개</dt>
                                                        <dd>
                                                            <ul class="list-dash">
                                                                <li>시험장에서 ''진짜'' 써 먹을 수 있는 EBS 지문 분석</li>
                                                                <li>단순히 EBS 공부만이 아닌, 국어 자체에 대한 실력을 키워주는 수업</li>
                                                            </ul>
                                                        </dd>
                                                    </dl>
                                        
                                                    <div class="form-select mt20">
                                                        <select>
                                                            <option hidden disabled selected>이 교재로 수강할 수 있는 강좌</option>
                                                            <option value="">강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--// E : 교재 정보 -->
                                        
                                        <a href="#" class="btn">8-3 교재 배송 중</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 강좌정보 -->

                <!-- S : 강의 수강현황 -->
                <div class="tit-area">
                    <h3 class="dep2-tit">강의 수강현황</h3>

                    <div class="tit-side lec-legend">
                        <span class="black">진도율</span>
                        <span class="dark-gray">강의 업로드율</span>
                    </div>
                </div>

                <div class="lec-info">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th style="padding-right:0;">
                                    <div class="lec-graph">
                                        <div class="info-area"><span class="txt">OT</span></div>

                                        <!-- S : 총 강의 -->
                                        <div class="graph1">
                                            <div class="info-area">
                                                <span class="tit"><em class="ff-serif">Ⅳ</em>단원</span>
                                                <span class="txt">34강 예정</span>
                                            </div>
                                        </div>
                                        <!--// E : 총 강의 -->

                                        <!-- S : 오픈 강의 -->
                                        <div class="graph2" style="width:58%">
                                            <div class="info-area">
                                                <span class="tit"><em class="ff-serif">Ⅲ</em>단원</span>
                                                <span class="txt">20강</span>
                                            </div>
                                        </div>
                                        <!--// E : 오픈 강의 -->

                                        <!-- S : 수강 중 강의 -->
                                        <div class="graph3" style="width:6%">
                                            <div class="info-area">
                                                <span class="tit"><em class="ff-serif">Ⅰ</em>단원</span>
                                                <span class="txt">2강</span>
                                            </div>
                                        </div>
                                        <!--// E : 수강 중 강의 -->
                                    </div>
                                </th>
                            </tr>
                        </tbody>
                    </table>
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
                            <h4 class="tit">[강의 목록]</h4>
                            <div class="unit-info">
                                <table>
                                    <colgroup>
                                        <col style="width:auto;">
                                        <col style="width:150px;">
                                        <col style="width:95px;">
                                        <col style="width:165px;">
                                    </colgroup>
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
                            <h4 class="tit">[강의 목록]</h4>
                            <div class="unit-info">
                                <table>
                                    <colgroup>
                                        <col style="width:auto;">
                                        <col style="width:150px;">
                                        <col style="width:95px;">
                                        <col style="width:165px;">
                                    </colgroup>
                                    <tbody>
                                        <% for i = 1 to 10 %>
                                        <tr <% if i = 5 then '마지막 수강한 강좌만 노출 %>class="lec-line"<% end if %>>
                                            <td>
                                                <div class="graph-info">
                                                    <div class="pie-chart" data-percent="0"></div><!-- 강의수강률(%) data-percent="숫자" -->
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
                            <h4 class="tit">[강의 목록]</h4>
                            <div class="unit-info">
                                <table>
                                    <colgroup>
                                        <col style="width:auto;">
                                        <col style="width:150px;">
                                        <col style="width:95px;">
                                        <col style="width:165px;">
                                    </colgroup>
                                    <tbody>
                                        <% for i = 1 to 10 %>

                                        <tr <% if i = 5 then '마지막 수강한 강좌만 노출 %>class="lec-line"<% end if %>>
                                            <td>
                                                <div class="graph-info">
                                                    <div class="pie-chart" data-percent="77"></div><!-- 강의수강률(%) data-percent="숫자" -->
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
                            <!--// E : 강의 목록 -->
                        </div>
                    </dd>
                </dl>
                <!--// E : 강의 수강현황 -->

                <!-- S : 선배들의 수강후기 및 학습법 -->
                <h3 class="dep2-tit">선배들의 수강후기 및 학습법</h3>

                <div class="board-tab review-tab">
                    <div class="tab-list">
                    <% for i = 1 to 5 %>
                        <% if i = 1 then '이미지 없을 경우 %>
                        <a href="javascript:void(0);" class="selected">
                            <img src="http://img.sdij.com/sd2019/pc/ico/bg_review_tab.png" alt="홍길동 선배 이미지">
                        </a>
                        <% else %>
                        <a href="javascript:void(0);">
                            <img src="https://via.placeholder.com/60x60/fff" alt="홍길동 선배 이미지">
                        </a>
                        <% end if %>
                    <% next %>
                    </div>
            
                    <% for i = 1 to 5 %>
                    <div class="tab-content<% if i = 1 then %> tab-on<% end if %>">
                        <div class="review-info">
                            <span class="name">홍길동</span>
                            <span>서울대</span>
                        </div>

                        <div class="review-content">
                            <% = i %>
                            리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용
                        </div>
                    </div>
                    <% next %>
                </div>
                <!--// E : 선배들의 수강후기 및 학습법 -->
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