<!--include virtual="/totalWebSite/renew2019/sdijS/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 내강좌 > 플레이어
' 모듈기능 : 마이페이지 > 내강좌 > 플레이어
' 파 일 명 : player.asp
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
        <div class="layout-container player-container mt60">
            <div class="landing-layout">
                <!-- S : 강좌정보 -->
                <div class="lec-info">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr class="tit-line">
                                <th class="lec-area">
                                    <div class="tit-info">[S반 수학 (가)] 서바이벌 정규반 Shotcut_기하벡터강좌명강좌명강좌명강좌명_기하벡터강좌명강좌명강좌명강좌명_기하벡터강좌명강좌명강좌명강좌명_기하벡터강좌명강좌명강좌명강좌명_기하벡터강좌명강좌명강좌명강좌명_기하</div>
                                </th>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 강좌정보 -->

                <div class="player-layout">
                    <h3 class="player-tit">1강. 강의명 강의명 강의명 강의강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명</h3>

                    <div class="float-area">
                        <!-- S : 플레이 영역 -->
                        <div class="fl">
                            <div class="video-area wide-area"><!-- 4k 영상일 경우 class="wide-area" 추가 -->
                                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/DrN12SkV400" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>

                            <div class="btn-area">
                                <input type="button" class="btn btn-mid2" value="북마크 추가">
                                <input type="button" class="btn btn-mid2" value="자료다운로드">
                            </div>

                            <dl class="list-area">
                                <dt>[오늘의 수업]</dt>
                                <dd>서바이벌 모의고사 00회 0번 – 00번 해설</dd>

                                <dt>[오늘의 필수 학습]</dt>
                                <dd>
                                    <ul class="list-dash">
                                        <% for i = 1 to 5 %>
                                        <li>0<% = i %>번 : 학습 내용 학습 내용 학습 내용 학습 내용 학습 내용 학습 내용학습 내용 학습 내용</li>
                                        <% next %>
                                    </ul>
                                </dd>

                                <dt>[오늘의 필수 과제]</dt>
                                <dd>
                                    <ul class="list-dash">
                                        <% for i = 1 to 5 %>
                                        <li>ato 1단원 23페이지</li>
                                        <% next %>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                        <!--// E : 플레이 영역 -->

                        <!-- S : 북마크 영역 -->
                        <div class="fr board-tab bookmark-tab">
                            <div class="tab-list">
                                <a href="javascript:void(0);" class="selected"><span class="ico ico-bookmark"></span> 북마크</a>
                                <a href="javascript:void(0);"><span class="ico ico-lecplay"></span> 강좌단원</a>
                            </div>
                    
                            <!-- S : 북마크 리스트 -->
                            <div class="tab-content tab-on list-bookmark">
                                <ul>
                                    <% for i = 1 to 100 %>
                                    <li>
                                        <span>01:03:80</span>
                                        <a href="#"><span class="ico ico-play">북마크 재생하기</span></a>
                                        <a href="#"><span class="ico ico-delete2">북마크 삭제하기</span></a>
                                    </li>
                                    <% next %>
                                </ul>
                            </div>
                            <!--// E : 북마크 리스트 -->

                            <!-- S : 강좌단원 SNB -->
                            <div class="tab-content">
                                <!-- S : SNB -->
                                <div class="snb">
                                    <ul>
                                        <li>
                                            <a href="#">개요</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="snb-depth1 selected"><span class="ff-serif">Ⅰ</span>.단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원단원</a><!-- sub메뉴가 존재 할 경우 class="snb-depth1" 추가 / 진입 페이지 메뉴 class="selected" 추가 -->

                                            <div class="snb-depth2 on"><!-- 메뉴 펼칠 경우 class="on" 추가 -->
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp" class="selected">1강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a><!-- 선택된 메뉴 selected -->
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">2강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">3강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="snb-depth1"><span class="ff-serif">Ⅱ</span>.단원</a>

                                            <div class="snb-depth2">
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">1강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">2강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">3강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="snb-depth1"><span class="ff-serif">Ⅲ</span>.단원</a>

                                            <div class="snb-depth2">
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">1강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">2강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                                <a href="/totalWebSite/renew2019/sdijS/_player/player.asp">3강. 강의명강의명강의명강의명강의명강의명강의명강의명강의명강의명</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <script type="text/javascript">
                                    $(function(){
                                        // snb button
                                        $('.snb-depth1').on('click', function(){
                                            $(this).toggleClass('selected');
                                            $(this).next('.snb-depth2').slideToggle(500);
                                        });
                                    });
                                </script>
                                <!--// E : SNB -->
                            </div>
                            <!--// E : 강좌단원 SNB -->
                        </div>
                        <!--// E : 북마크 영역 -->
                    </div>
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

});

</script>
<!--// E : 페이지별 스크립트 -->