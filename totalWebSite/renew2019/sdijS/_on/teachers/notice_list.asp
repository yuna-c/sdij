<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 공지사항
' 모듈기능 : 선생님 > 공지사항
' 파 일 명 : notice_list.asp
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
                    공지사항
                    <small>홍길동 선생님의 실시간 소식과 함께 하세요</small>
                </h2>

                <div class="board-layout">
                    <!-- S : 공지사항 검색 -->
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
                    <!--// E : 공지사항 검색 -->

                    <!-- S : 공지사항 리스트 -->
                    <div class="board-list board-list2">
                        <table>
                            <colgroup>
                                <col style="width:80px;">
                                <col style="width:auto;">
                                <col style="width:80px;">
                                <col style="width:100px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>첨부파일</th>
                                    <th>작성일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for i = 1 to 15 %>
                                <tr>
                                    <td>
                                    <% if i = 1 then '공지 아이콘 %>
                                        <span class="sticker-board sticker-red">notice</span>
                                    <% elseif i = 2 then '이벤트 아이콘 %>
                                        <span class="sticker-board sticker-purple">event</span>
                                    <% else %>
                                        <% = i %>
                                    <% end if %>
                                    </td>
                                    <td class="tit-box">
                                        <a href="/totalWebSite/renew2019/sdijS/_on/teachers/notice_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
                                        <% if i = 1 or i = 2 then '공지글이거나 이벤트글 일 경우 %>
                                            <b>가나다라가나다라가나다라가나다라가나다라</b>
                                        <% else %>
                                            가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                        <% end if %>
                                        </a>
                                    <% if i = 1 then '신규 게시글 일 경우 %>
                                        <span class="ico ico-new">신규 게시물</span>
                                    <% end if %>
                                    </td>
                                <% if i = 1 then '첨부파일 있을 경우 %>
                                    <td><span class="ico ico-file2">첨부파일</span></td>
                                <% else '첨부파일 없을 경우 %>
                                    <td>&nbsp;</td>
                                <% end if %>
                                    <td>2019-01-01</td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 공지사항 리스트 -->

                    <!-- S : 공지사항 페이징 -->
                    <div class="board-pager">
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
                    <!--// E : 공지사항 페이징 -->
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
