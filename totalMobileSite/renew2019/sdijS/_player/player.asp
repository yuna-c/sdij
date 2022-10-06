<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 플레이어
' 모듈기능 : 플레이어
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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container mypage-container">
        <div class="player-layout">
            <!-- S : 플레이 영역 -->
            <div class="video-area wide-area"><!-- 4k 영상일 경우 class="wide-area" 추가 -->
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/lyXET-AxEOc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <!--// E : 플레이 영역 -->

            <!-- S : 강좌 정보 -->
            <div class="content-layout">
                <h3 class="lec-tit"><a href="/_mypage/lecture/lecture_detail.asp">
                    [S반 수학 (가)] 서바이벌 정규반 Shotcut 기하벡터 강의가 길면두줄 [S반 수학 (가)] 서바이벌 정규반 Shotcut 기하벡터 강의가 길면두줄 
                </a></h3>

                <h4 class="player-tit">1강. 강의명 강의명 강의명 강의강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명 강의명</h4>

                <div class="btn-area">
                    <input type="button" class="btn btn-mid2" value="북마크 추가">
                    <input type="button" class="btn btn-mid2" value="자료다운로드">
                </div>

                <div class="list-tit">
                    <dl>
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
            </div>
            <!--// E : 강좌 정보 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    // 영상영역 스크롤 시 top정렬
    $(window).scroll(function(){
        $('.player-layout .video-area').css({'position':'fixed', 'top':'0', 'left':'0', 'right':'0'});

        var winTop = $(document).scrollTop();
        var headerHeight = $('#header').height();
        if( winTop < headerHeight ){
            $('.player-layout .video-area').css({'position':'relative'});
        }
    });

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->