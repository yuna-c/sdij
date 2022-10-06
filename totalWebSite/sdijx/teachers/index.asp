<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 전체 선생님
' 모듈기능 : 시대인재 Digital > 전체 선생님
' 파 일 명 : index.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/teachers.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="index-container">
        <!-- S : 상단 배너 영역 -->
        <div class="banner-content">
            <div class="wide-layout swiper-container">
                <!-- S : PC/MOBILE 이미지 별도 -->
                <div class="swiper-wrapper">
                    <a href="#" class="swiper-slide"><img src="https://via.placeholder.com//2480x640/000000/" alt="국어 선생님"></a>
                    <a href="#" class="swiper-slide"><img src="https://via.placeholder.com//2480x640/aaaaaa/?text=slide2" alt="영어 선생님"></a>
                    <a href="#" class="swiper-slide"><img src="https://via.placeholder.com//2480x640/dddddd/?text=slide3" alt="수학 선생님"></a>
                    <a href="#" class="swiper-slide"><img src="https://via.placeholder.com//2480x640/f7f7f7/?text=slide4" alt="과탐 선생님"></a>
                    <a href="#" class="swiper-slide"><img src="https://via.placeholder.com//2480x640/fafafa/?text=slide5" alt="사탐 선생님"></a>
                    <a href="#" class="swiper-slide"><img src="https://via.placeholder.com//2480x640/999999/?text=slide6" alt="한국사 선생님"></a>
                </div>
                <!--// E : PC/MOBILE 이미지 별도 -->
            </div>
        </div>

        <script>
            $(function(){
                // 랜덤 slide
                var slideNum = $('.banner-content .swiper-container .swiper-slide').length;
                slideNum = parseInt(Math.floor( Math.random() * slideNum ));

                var swiper = new Swiper('.swiper-container', {
                    effect: 'fade',
                    autoplay: {
                        delay: 3000,
                    },
                    initialSlide: slideNum,
                    loop: true,
                });
            });

            window.onload = function(){
                $('.swiper-container .swiper-slide').each(function(){
                    $(this).css('visibility', 'visible');
                });
            }
        </script>
        <!--// E : 상단 배너 영역 -->

        <div class="wide-layout">
            <!-- S : 전체 선생님 리스트 -->
            <div class="tab-type1 tab-border">
                <ul>
                    <li class="selected">
                        <a href="javascript:void(0);">전체</a>
                        <span class="sub">24</span>
                    </li>
                    <li>
                        <a href="javascript:void(0);">국어</a>
                        <span class="sub">13</span>
                    </li>
                    <li>
                        <a href="javascript:void(0);">영어</a>
                        <span class="sub">6</span>
                    </li>
                    <li>
                        <a href="javascript:void(0);">수학</a>
                        <span class="sub">8</span>
                    </li>
                    <li>
                        <a href="javascript:void(0);">과탐</a>
                        <span class="sub">12</span>
                    </li>
                    <li>
                        <a href="javascript:void(0);">사탐</a>
                        <span class="sub">35</span>
                    </li>
                    <li>
                        <a href="javascript:void(0);">한국사</a>
                        <span class="sub">2</span>
                    </li>
                </ul>
            </div>

            <div class="tab-content tab-on">
                <div class="sort-area">
                    <p class="info-txt">135명의 선생님</p>

                    <div class="sort-side">
                        <label class="select select-sort">
                            <select>
                                <option hidden>정렬</option>
                                <option value="">최신순</option>
                            </select>
                        </label>
                    </div>
                </div>

                <div class="list-teachers">
                    <ul>
                        <% for i = 1 to 12 '12개씩 노출 이후 더보기 버튼으로 12개씩 노출 %>
                        <li><a href="main.asp">
                            <span class="img">
                                <img src="//img.sdij.com/sdijx/teachers/teacherID/list_img.jpg" alt="홍길동 선생님 이미지">
                                <!-- img src="//img.sdij.com/sdijx/teachers/선생님ID/list_img.jpg" -->
                            </span>
                            <span class="txt">강강사타이틀노출영역최대스물세글자띄어쓰기포함</span>
                            <span class="tit"><em class="color-black">홍길동</em> 선생님</span>
                            <span class="txt">#일홍보문구노출 #이최대일곱글자 #삼띄어쓰기포함</span>
                        </a></li>
                        <% next %>
                    </ul>
                </div>

                <div class="btn-area txt-center">
                    <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
                </div>
            </div>
            <!--// E : 전체 선생님 리스트 -->
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->