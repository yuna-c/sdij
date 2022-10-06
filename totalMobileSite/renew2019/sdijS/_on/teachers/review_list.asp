<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 수강후기
' 모듈기능 : 선생님 > 수강후기
' 파 일 명 : review_list.asp
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
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container">
        <div class="content-layout">
            <h2 class="dep1-tit">수강후기</h2>

            <div class="board-layout">
                <!-- S : 수강후기 검색 -->
                <div class="board-search">
                    <div class="form-input">
                        <input type="text" placeholder="검색어를 입력하세요">
                    </div>

                    <button type="button" class="btn btn-search"><span class="ico ico-search">검색</span></button>
                </div>
                <!--// E : 수강후기 검색 -->

                <!-- S : 수강후기 리스트 -->
                <div class="board-list board-list2">
                    <ul>
                    <% for i = 1 to 10 %>
                        <li class="<% if i = 1 or i = 1 then '베스트글 일 경우 %>on<% end if %>">

                            <div class="data-sticker">
                            <% if i = 1 then '베스트 아이콘 %>
                                <span class="sticker-board sticker-orange">best</span>
                            <% end if %>

                                <div class="review-box">
                                    <span class="ico ico-star ico-star-on">별점 1점</span>
                                    <span class="ico ico-star ico-star-on">별점 2점</span>
                                    <span class="ico ico-star">별점 3점</span>
                                    <span class="ico ico-star">별점 4점</span>
                                    <span class="ico ico-star">별점 5점</span>
                                </div>
                            </div>

                            <div class="data-tit">
                                <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/review_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
                                    가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                </a>
                            <% if i = 1 then '신규 게시글 일 경우 %>
                                <span class="ico ico-new">신규 게시물</span>
                            <% end if %>
                            </div>

                            <div class="data-day">
                                <span class="name">홍길동</span>
                                <span>2019-01-01</span>
                            </div>
                        </li>
                    <% next %>
                    </ul>
                </div>
                <!--// E : 수강후기 리스트 -->

                <div class="boara-btn mt10">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
