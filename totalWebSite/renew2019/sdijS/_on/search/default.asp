<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 검색하기 > 메인
' 모듈기능 : 검색하기 > 메인
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/search.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mypage-container mt60">
            <div class="content-layout snb-layout">
                <!-- S : SNB -->
                <!--#include virtual="/totalWebSite/renew2019/sdijS/_on/search/inc.filter.asp"-->
                <!--// E : SNB -->

                <div class="board-layout">
                    <!-- S : Search 검색창 -->
	                <div class="search">
	                    <div class="search-area">
	                        <input type="text" placeholder="수강하고자 하는 강좌를 검색해보세요.">
	                        <button type="button" class="btn-search"><span class="ico ico-search2">검색하기</span></button>
                        </div>

                        <!-- S : 검색어 검색 시 노출 -->
                        <div class="search-restxt mt20">
                            <span class="color-black">'수학 서바이벌'</span>에 대한 <span class="color-black">0,000개</span>의 검색 결과
                        </div>
                        <!--// E : 검색어 검색 시 노출 -->

                        <!-- S : 필터 검색 시 노출 -->
	                    <div class="hash-area mt20">
	                        <span class="stiker-filter">선택한 필터:</span>
                            <div class="hash-align">

							</div>
                        </div>
                        <!--// E : 필터 검색 시 노출 -->
                    </div>
    				<!--// E : Search 검색창 -->

                    <!-- S : 시기별 특강 배너 : 페이지 진입 시 노출 영역 -->
                    <div class="search-line-banner">
                        <div class="cycle-slideshow"
                            data-cycle-fx="scrollHorz"
                            data-cycle-timeout="3000"
                            data-cycle-pager=".cycle-pager"
                            data-cycle-slides="> .slide"
                        >
                            <div class="cycle-pager"></div>

                            <a href="#" class="slide first-slide"><img src="http://placehold.it/840x150" class="" alt="배너 이미지"></a>
                            <a href="#" class="slide"><img src="http://placehold.it/840x150" class="" alt="배너 이미지"></a>
                            <a href="#" class="slide"><img src="http://placehold.it/840x150" class="" alt="배너 이미지"></a>
                        </div>
                    </div>
                    <!--// E : 시기별 특강 배너 -->

                    <!-- S : 과목 별 강좌 : 페이지 진입 시 노출 영역 -->
                    <h3 class="dep2-tit">
                        과목 별 강좌
                        <small>999개 강좌</small>
                    </h3>

                    <div class="subject-info">
                        <ul>
                            <li>
                                <a href="#">
                                    <span class="tit">전체</span>
                                    <span class="score">999</span>
                                    <span class="bg"><i class="ico ico-all"></i></span>
                                </a>
                            </li>
                            <li>
								<a href="#">
	                                <span class="tit">국어</span>
                                    <span class="score">999</span>
                                    <span class="bg"><i class="ico ico-korea"></i></span>
								</a>
							</li>
							<li>
								<a href="#">
                                    <span class="tit">수학</span>
                                    <span class="score">72</span>
                                    <span class="bg"><i class="ico ico-math-a"></i></span>
								</a>
							</li>
							<li>
								<a href="#">
                                    <span class="tit">영어</span>
                                    <span class="score">78</span>
                                    <span class="bg"><i class="ico ico-english"></i></span>
								</a>
							</li>
							<li>
								<a href="#">
                                    <span class="tit">물리</span>
                                    <span class="score">1</span>
                                    <span class="bg"><i class="ico ico-physic"></i></span>
								</a>
							</li>
							<li>
								<a href="#">
                                    <span class="tit">화학</span>
                                    <span class="score">24</span>
                                    <span class="bg"><i class="ico ico-chemistry"></i></span>
								</a>
							</li>
							<li>
								<a href="#">
                                    <span class="tit">생명과학</span>
                                    <span class="score">34</span>
                                    <span class="bg"><i class="ico ico-life"></i></span>
								</a>
							</li>
							<li>
								<a href="#">
                                    <span class="tit">지구과학</span>
                                    <span class="score">80</span>
                                    <span class="bg"><i class="ico ico-earth"></i></span>
								</a>
							</li>
                        </ul>
                    </div>
                    <!--// E : 과목 별 강좌 -->

                    <!-- S : 인기강좌 리스트 & 검색결과 -->
                    <h3 class="dep2-tit">인기 강좌</h3>

                    <div class="list-lec-type1">
                        <ul class="float-area">
                            <% for i = 1 to 6 '인기강좌 페이지 진입 시 강좌별 3개씩(총 24개) 노출 / 강좌 검색 시 6개 노출 %>
                            <li>
                                <div class="img-area"><a href="/totalWebSite/renew2019/sdijS/_on/lecture/detail.asp">
                                    <img src="http://placehold.it/262x224" alt="선생님 이미지">
                                </a></div>

                                <div class="tit-area">
                                    <div class="data-sticker">
                                        <span class="sticker">BEST</span>
                                        <span class="sticker">NEW</span>
                                    </div>
                                    <div class="data-tit">
                                        강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명
                                    </div>
                                    <div class="data-info">
                                        <span>박종민</span>
                                        <span>99강 예정</span>
                                    </div>

                                    <div class="bg-area">
                                        <div class="data-txt">
                                            강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명
                                        </div>

                                        <div class="data-btn">
                                            <button type="button" class="btn btn-black">추가하기</button>
                                            <a href="/totalWebSite/renew2019/sdijS/_on/lecture/detail.asp" class="btn">바로보기</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 인기강좌 리스트 & 검색결과 -->

                    <!-- S : 전체강좌 검색결과 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit">전체 강좌</h3>

                        <div class="dep3-tab tit-side mb0">
                            <a href="javascript:void(0);" class="selected">최신순</a>
                            <a href="javascript:void(0);">선생님명</a>
                            <a href="javascript:void(0);">인기순</a>
                            <a href="javascript:void(0);">완강순</a>
                        </div>
                    </div>

                    <!-- S : 전체강좌 리스트 -->
                    <div class="list-lec-type2">
                        <ul class="float-area">
                            <% for i = 1 to 6 '강좌 검색 시 페이지 당 6개씩 노출 %>
                            <li>
                                <div class="tit-area">
                                    <div class="data-sticker">
                                        <span class="sticker"><i class="ico ico-thumb">Best 아이콘</i></span>
                                        <span class="sticker">NEW</span>
                                    </div>
                                    <div class="data-info">
                                        <span>박종민</span>
                                        <span>99강 예정</span>
                                    </div>
                                    <div class="data-tit">
                                        <a href="/totalWebSite/renew2019/sdijS/_on/lecture/detail.asp">
                                            강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명
                                        </a>
                                    </div>
                                </div>

                                <div class="btn-area">
                                    <button type="button"><i class="ico ico-plus-lec">플러스 아이콘</i>추가하기</button>
                                    <a href="/totalWebSite/renew2019/sdijS/_on/lecture/detail.asp"><i class="ico ico-play-lec">플레이 아이콘</i>바로보기</a>
                                </div>

                                <div class="bg-area">
                                    <div class="data-txt">강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명</div>
                                </div>
                            </li>
                            <% next %>
                        </ul>
                    </div>
                    <!--// E : 전체강좌 리스트 -->

                    <!-- S : board-pager : 페이지 버튼 -->
    				<div class="board-pager mt20">
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
    				<!--// E : board-pager : 페이지 버튼 -->
                    <!--// E : 전체강좌 검색결과 -->
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
