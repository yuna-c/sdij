<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">공지사항</h2>

    <div class="board-layout">
        <!-- S : board-list : 게시판 리스트 -->
        <div class="board-list">
            <table>
                <colgroup>
                    <col style="width:85px;">
                    <col style="width:auto;">
                    <col style="width:110px;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th class="tit-box">제목</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 15 %>
                    <tr>
                        <td>재종</td>
                        <td class="tit-box">
                            <a href="#" class="tit-txt">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a>
                        </td>
                        <td>2019-01-01</td>
                    </tr>
                    <% Next %>
                </tbody>
            </table>
        </div>
        <!--// E : board-list : 게시판 리스트 -->

        <!-- S : board-pager : 페이지 버튼 -->
        <div class="board-pager">
            <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>
            
            <div class="pager-num">
                <% For i=1 To 10 %>
                <a href="javascript:void(0);" <% If i=1 Then Response.Write " class=""on""" %>><%= i %></a>
                <% Next %>
            </div>

            <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
        </div>
        <!--// E : board-pager : 페이지 버튼 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 