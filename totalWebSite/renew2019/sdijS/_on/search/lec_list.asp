<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 온라인 > 검색 > 검색 페이지 > 인기/검색결과 카드형 강좌 리스트
' 모듈기능 : 온라인 > 검색 > 검색 페이지 > 인기/검색결과 카드형 강좌 리스트
' 파 일 명 : lec_list.asp
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
        <div class="layout-container">
            <div class="content-layout board-layout">
                <h3 class="dep2-tit">인기강좌</h3>
                <!-- S : 인기강좌 리스트 -->
                <div class="list-lec-type1">
                    <ul class="float-area">
                        <% for i = 1 to 10 %>
                        <li>
                            <div class="img-area"><a href="#">
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
                                        <a href="javascript:void(0);" class="btn">바로보기</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <% next %>
                    </ul>
                </div>
                <!--// E : 인기강좌 리스트 -->

                <h3 class="dep2-tit">전체강좌</h3>
                <!-- S : 전체강좌 리스트 -->
                <div class="list-lec-type2">
                    <ul class="float-area">
                        <% for i = 1 to 10 %>
                        <li>
                            <div class="tit-area">
                                <div class="data-sticker">
                                    <span class="sticker">BEST</span>
                                    <span class="sticker">NEW</span>
                                </div>
                                <div class="data-info">
                                    <span>박종민</span>
                                    <span>99강 예정</span>
                                </div>
                                <div class="data-tit"><a href="#">
                                    강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명
                                </a></div>
                            </div>

                            <div class="btn-area">
                                <button type="button"><i class="ico ico-plus-lec">플러스 아이콘</i>추가하기</button>
                                <a href="javascript:void(0);"><i class="ico ico-play-lec">플레이 아이콘</i>바로보기</a>
                            </div>

                            <div class="bg-area">
                                <div class="data-txt">강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명 강좌설명</div>
                            </div>
                        </li>
                        <% next %>
                    </ul>
                </div>
                <!--// E : 전체강좌 리스트 -->
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
