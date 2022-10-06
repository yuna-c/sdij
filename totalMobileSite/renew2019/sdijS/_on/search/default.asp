<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 온라인 > 검색 > 과목별 강좌
' 모듈기능 : 온라인 > 검색 > 과목별 강좌
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
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/search.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->
<style>
</style>

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container">
        <div class="content-layout">

            <div class="search mt15">
                <div class="search-filter flex-area">
                    <div class="search-area">
                        <input type="text" placeholder="검색어입력폰트">
                        <button type="button" class="btn-search"><span class="ico ico-search2">검색하기</span></button>
                    </div>
                    <button class="btn btn-black" onclick="fnOpenLayer('pop-filter');">
                        <i class="ico ico-filter"></i>
                        필터
                    </button>
                </div>

                <!-- S : 검색어 검색 시 노출 -->
                <div class="search-restxt mt15" style="display:none;">
                    <span class="color-black">'수학 서바이벌'</span>에 대한 <span class="color-black">0,000개</span>의 검색 결과
                </div>
                <!-- //E : 검색어 검색 시 노출 -->

                <!-- S : 필터 검색 시 노출 -->
                <div class="hash-align mt15" style="display:none;">

                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                        </div>
                    </div>
                </div>
                <!-- E : 필터 검색 시 노출 -->
            </div>

            <hr class="mt15">

            <!-- S : 과목 별 강좌 : 페이지 진입 시 노출 영역 -->
            <div>
                <h2 class="dep2-tit">과목별 강좌<small>999개 강좌</small></h2>
                <div class="swiper-container-1">
                    <ul class="swiper-wrapper box">
                        <li class="swiper-slide">
                            <a href="#">
                                <span class="score">999</span>
                                <span class="bg"><i class="ico ico-all"></i></span>
                            </a>
                            <span class="tit">전체</span>
                        </li>
                      <li class="swiper-slide">
                          <a href="#">
                              <span class="score">999</span>
                              <span class="bg"><i class="ico ico-korea"></i></span>
                          </a>
                          <span class="tit">국어</span>
                      </li>
                      <li class="swiper-slide">
                          <a href="#">
                              <span class="score">999</span>
                              <span class="bg"><i class="ico ico-math-a"></i></span>
                          </a>
                          <span class="tit">수학</span>
                      </li>
                      <li class="swiper-slide">
                          <a href="#">
                              <span class="score">999</span>
                              <span class="bg"><i class="ico ico-english"></i></span>
                          </a>
                          <span class="tit">영어</span>
                      </li>
                      <li class="swiper-slide">
                          <a href="#">
                              <span class="score">999</span>
                              <span class="bg"><i class="ico ico-life"></i></span>
                          </a>
                          <span class="tit">생명과학</span>
                      </li>
                      <li class="swiper-slide">
                          <a href="#">
                              <span class="score">999</span>
                              <span class="bg"><i class="ico ico-physic"></i></span>
                          </a>
                          <span class="tit">물리</span>
                      </li>
                      <li class="swiper-slide">
                          <a href="#">
                              <span class="score">999</span>
                              <span class="bg"><i class="ico ico-chemistry"></i></span>
                          </a>
                          <span class="tit">화학</span>
                      </li>
                      <li class="swiper-slide">
                          <a href="#">
                              <span class="score">999</span>
                              <span class="bg"><i class="ico ico-earth"></i></span>
                          </a>
                          <span class="tit">지구과학</span>
                      </li>
                    </ul>
                </div>

            </div>
            <!-- E : 과목 별 강좌 : 페이지 진입 시 노출 영역 -->

            <hr class="mt15">

            <h2 class="dep2-tit">인기강좌</h2>

            <!-- S : 인기강좌 리스트 -->
            <div class="list-lec-type1">
                <ul class="float-area">
                    <% for i = 1 to 2 '인기강좌 페이지 진입 시 강좌별 2개씩(총 14개) 노출 / 강좌 검색 시 4개 노출 과목 상관 없이 %>
                    <li>
                        <a href="/totalMobileSite/renew2019/sdijS/_on/lecture/detail.asp">
                            <div class="img-area">
                                <img src="https://via.placeholder.com/265x220" alt="선생님 이미지">

                                <div class="data-btn">
                                    <button type="button" onclick="confirm('내 PASS강좌에 강좌를 추가하시겠습니까?')"><i class="ico ico-plus-lec">PASS강좌 추가하기</i></button>
                                </div>
                            </div>

                            <div class="tit-area">
                                <div class="data-tit">
                                    강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명
                                </div>
                                <div class="data-info">
                                    <span>박종민</span>
                                    <span>99강 예정</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/totalMobileSite/renew2019/sdijS/_on/lecture/detail.asp">
                            <div class="img-area">
                                <img src="https://via.placeholder.com/265x220" alt="선생님 이미지">

                                <div class="data-btn">
                                    <button type="button" onclick="confirm('내 PASS강좌에 강좌를 추가하시겠습니까?')"><i class="ico ico-plus-lec">PASS강좌 추가하기</i></button>
                                </div>
                            </div>

                            <div class="tit-area">
                                <div class="data-tit">
                                    강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명
                                </div>
                                <div class="data-info">
                                    <span>박종민</span>
                                    <span>99강 예정</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <% next %>
                </ul>
            </div>
            <!--// E : 인기강좌 리스트 -->

            <hr class="mt15">

            <h2 class="dep2-tit flex-justify">
                <span>전체강좌</span>

                <div class="gnb-select-wrap">
					<select name="" id="tmpSelect" class="gnb-select">
						<option value="" selected="selected">최신순</option>
						<option value="">강좌</option>
					</select>
				</div>
            </h2>
            <!-- S : 전체강좌 리스트 -->
            <div class="list-lec-type2">
                <ul>
                    <% for i = 1 to 6 '강좌 검색 시 페이지 당 6개씩 노출 %>
                    <li>
                        <div class="sticker-area">
                            <div class="data-sticker">
                                <span class="sticker">BEST</span>
                                <span class="sticker">NEW</span>
                            </div>

                            <div class="data-btn">
                                <button type="button" onclick="confirm('내 PASS강좌에 강좌를 추가하시겠습니까?')" class="btn btn-sm2">추가하기</button>
                            </div>
                        </div>

                        <a href="/totalMobileSite/renew2019/sdijS/_on/lecture/detail.asp">
                            <div class="tit-area">
                                <div class="data-tit">
                                    강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명
                                </div>
                                <div class="data-info">
                                    <span>박종민</span>
                                    <span>99강 예정</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <% next %>
                </ul>

                <div class="board-btn">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
            </div>
            <!--// E : 전체강좌 리스트 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <!-- S : dim-layer -->
    <link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/popup.css?d=<%= now() %>">

    <div class="dim-layer">
        <div class="dim-bg"></div>

        <!-- S : 검색 필터 -->
        <!--#include virtual="/totalMobileSite/renew2019/sdijS/_on/search/pop.filter.asp"-->
        <!--// E : 검색 필터 -->

    </div>
    <!--// E : dim-layer -->


<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
