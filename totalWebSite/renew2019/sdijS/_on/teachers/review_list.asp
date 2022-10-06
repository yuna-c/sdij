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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="content-layout">
                <h2 class="dep1-tit">
                    수강후기
                    <small>홍길동 선생님 수업 후기를 남겨 주세요</small>
                </h2>

                <div class="board-layout">
                    <!-- S : 수강후기 검색 -->
                    <div class="board-search float-area">
                        <div class="input-area fl">
                            <div class="form-select">
                                <select>
                                    <option value="">전체</option>
                                </select>
                            </div>

                            <div class="form-input">
                                <input type="text">
                            </div>

                            <button type="button" class="btn btn-search"><span class="ico ico-search">검색</span></button>
                        </div>
                    </div>
                    <!--// E : 수강후기 검색 -->

                    <!-- S : 수강후기 리스트 -->
                    <div class="board-list board-list2">
                        <table>
                            <colgroup>
                                <col style="width:80px;">
                                <col style="width:110px;">
                                <col style="width:auto;">
                                <col style="width:100px;">
                                <col style="width:100px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>만족도</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for i = 1 to 15 %>
                                <tr>
                                    <td>
                                    <% if i = 1 then '베스트' 아이콘 %>
                                        <span class="sticker-board sticker-orange">best</span>
                                    <% else %>
                                        <% = i %>
                                    <% end if %>
                                    </td>
                                    <td class="review-box">
                                        <span class="ico ico-star ico-star-on">별점 1점</span>
                                        <span class="ico ico-star ico-star-on">별점 2점</span>
                                        <span class="ico ico-star">별점 3점</span>
                                        <span class="ico ico-star">별점 4점</span>
                                        <span class="ico ico-star">별점 5점</span>
                                    </td>
                                    <td class="tit-box">
                                        <a href="review_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
                                        <% if i = 1 then '베스트글 일 경우 %>
                                            <b>가나다라가나다라가나다라가나다라가나다라</b>
                                        <% else %>
                                            가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                        <% end if %>
                                        </a>
                                    <% if i = 1 then '신규 게시글 일 경우 %>
                                        <span class="ico ico-new">신규 게시물</span>
                                    <% end if %>
                                    </td>
                                    <td>
                                        <% if i = 1 then '베스트글 일 경우 %>
                                        <span class="color-black">홍길동</span>
                                        <% else %>
                                        <span>홍길동</span>
                                        <% end if %>
                                    </td>
                                    <td>2019-01-01</td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 수강후기 리스트 -->
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