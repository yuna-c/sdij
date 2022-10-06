<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>
    
    <h2 class="page-tit">1:1 질의 응답</h2>

    <!-- S : 1:1 질의 응답 리스트 -->
    <div class="board-layout">
        <div class="board-list">
            <!-- S : board-btn -->
            <div class="board-btn">
                <a href="#" class="btn btn-sm btn-black">글쓰기</a>
            </div>
            <!--// E : board-btn -->

            <table>
                <colgroup>
                    <col style="width:100px;">
                    <col style="width:auto;">
                    <col style="width:90px;">
                    <col style="width:75px;">
                    <col style="width:120px;">
                </colgroup>
                <thead>
                    <tr>
                        <th>분류</th>
                        <th class="tit-box">제목</th>
                        <th>작성자</th>
                        <th>상태</th>
                        <th>등록일</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 15 %>
                    <tr>
                        <td>접수문의</td>
                        <td class="tit-box">
                            <div class="tit-txt tit-ico"><a href="javascript:void(0);" onclick="fnOpenLayer('dim2'); return false;">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a></div><!-- 비공개 게시글일 경우 class="tit-ico" -->
                            <span class="ico ico-rock">비공개 게시물</span><!-- 비공개 게시물일 경우 해당 영역 노출 -->
                        </td>
                        <td>김정한</td>
                        <td>대기</td>
                        <td>2019-01-01</td>
                    </tr>
                    <% Next %>
                </tbody>
            </table>
        </div>

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
    <!--// E : 1:1 질의 응답 리스트 -->

    <!-- S : 관련 컨텐츠 -->
    <div class="gallery-list gallery-content">
        <ul class="float-area">
            <li>
                <a href="#">
                    <span class="menu-txt">관련컨텐츠1</span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="menu-txt">관련컨텐츠2</span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="menu-txt">관련컨텐츠3</span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
        </ul>
    </div>
    <!--// E : 관련 컨텐츠 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : dim-layer -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incDimLayer.asp"-->
<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 