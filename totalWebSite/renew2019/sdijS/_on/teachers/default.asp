<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 선생님 전체보기
' 모듈기능 : 선생님 > 선생님 전체보기
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/teachers.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mb0">
            <!-- S : 커리큘럼 배너 -->
            <div class="curri-banner" style="background-color:#ccc"><!-- style="background-color:배너배경컬러" -->
                <button type="button">
                    <img src="http://placehold.it/1100x389" alt="커리큘럼 배너">
                </button>
            </div>
            <!--// E : 커리큘럼 배너 -->

            <!-- S : 과목 탭 -->
            <div class="subject-tab">
                <ul>
                    <li class="selected"><a href="javascript:void(0);"><i class="ico ico-all-off"></i><br>전체</a></li>
                    <li><a href="javascript:void(0);"><i class="ico ico-korea-off"></i><br>국어</a></li>
                    <li><a href="javascript:void(0);"><i class="ico ico-math-a-off"></i><br>수학</a></li>
                    <li><a href="javascript:void(0);"><i class="ico ico-english-off"></i><br>영어</a></li>
                    <li><a href="javascript:void(0);"><i class="ico ico-physic-off"></i><br>물리</a></li>
                    <li><a href="javascript:void(0);"><i class="ico ico-chemistry-off"></i><br>화학</a></li>
                    <li><a href="javascript:void(0);"><i class="ico ico-life-off"></i><br>생명과학</a></li>
                    <li><a href="javascript:void(0);"><i class="ico ico-earth-off"></i><br>지구과학</a></li>
                </ul>
            </div>
            <!--// E : 과목 탭 -->

            <!-- S : 선생님 리스트 -->
            <div class="bg-teachers">
                <div class="list-teachers">
                    <ul>
                        <% for i = 1 to 10 %>
                        <li><a href="/totalWebSite/renew2019/sdijS/_on/teachers/main.asp">
                            <span class="teacher"><img src="http://img.sdij.com/sd2019/pc/teachers/id/list_img.png" alt="이동준(수학) 선생님"></span>
                            <span class="teacher-on"><img src="http://img.sdij.com/sd2019/pc/teachers/id/list_img_on.png" alt="이동준(수학) 선생님"></span>
                        </a></li>
                        <% next %>
                    </ul>
                </div>
            </div>
            <!--// E : 선생님 리스트 -->
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">

$(function(){
    // 과목 탭 selected
    $('.subject-tab li a').on('click', function(){
		$(this).parent().addClass('selected').siblings().removeClass('selected');
	});
});

</script>
<!--// E : 페이지별 스크립트 -->
