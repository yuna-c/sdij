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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/teachers.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container mb0">
        <!-- S : 커리큘럼 배너 -->
        <div class="curri-banner" style="background-color:#ccc"><!-- style="background-color:배너배경컬러" -->
            <button type="button">
                <img src="https://via.placeholder.com//640x120" alt="커리큘럼 배너">
            </button>
        </div>
        <!--// E : 커리큘럼 배너 -->

        <!-- S : 과목 탭 -->
        <div class="subject-tab">
            <ul class="float-area">
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
        <div class="list-teachers bg-teachers">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <!-- S : 전체 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 전체 -->

                    <!-- S : 국어 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 국어 -->

                    <!-- S : 수학 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 수학 -->

                    <!-- S : 영어 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 영어 -->

                    <!-- S : 물리 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 물리 -->

                    <!-- S : 화학 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 화학 -->

                    <!-- S : 생명과학 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 생명과학 -->

                    <!-- S : 지구과학 -->
                    <div class="swiper-slide">
                        <ul class="float-area">
                            <% for i = 1 to 6 %>
                            <li><a href="/totalMobileSite/renew2019/sdijS/_on/teachers/main.asp" style="background-color:#9ea5cc;"><!-- style="background-color:선생님 별 배경 컬러" -->
                                <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_img.png" alt="이동준 선생님 이미지"></span>
                                <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/list_name.png" alt="이동준 수학"></span>
                            </a></li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 지구과학 -->
                </ul>
            </div>
        </div>
        <!--// E : 선생님 리스트 -->
    </div>
    <!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    // 과목 탭 selected
    $('.subject-tab li a').on('click', function(){
        $this = $(this).parent();
        $itemIndex = $this.index();

		$this.addClass('selected').siblings().removeClass('selected');
        swiper.slideTo($itemIndex);
	});

    // 과목 별 리스트 swiper
    var swiper = new Swiper('.swiper-container', {
        onSlideChangeEnd: function(swiper){
            var swiperIndex = swiper.activeIndex;
            $('.subject-tab li').removeClass('selected').eq(swiperIndex).addClass('selected');
        }
    });
});
//-->
</script>
<!--// E : 페이지별 스크립트 -->
