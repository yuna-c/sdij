<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">입시 R&amp;D</h2>
    
    <!-- S : 모집요강 -->
    <div class="board-layout">
        <div class="board-tab">
            <div class="tab-list">
                <a href="javascript:void(0);" class="selected">입시분석</a>
                <a href="javascript:void(0);">대학별 모집요강 분석</a>
            </div>

            <!-- S : 입시분석 -->
            <div class="tab-content tab-on">
                <div class="board-list">
                    <table>
                        <colgroup>
                            <col style="width:75px;">
                            <col style="width:130px;">
                            <col style="width:auto;">
                            <col style="width:120px;">
                            <col style="width:90px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th>컨설턴트</th>
                                <th class="tit-box">제목</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i=1 To 15 %>
                            <tr>
                                <td>정시</td>
                                <td>강동우(로미오)</td>
                                <td class="tit-box">
                                    <div class="tit-txt"><a href="#">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a></div>
                                </td>
                                <td>2019-01-01</td>
                                <td>0000</td>
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
            <!--// E : 입시분석  -->

            <!-- S : 대학별 모집요강 분석 -->
            <div class="tab-content">
                <div class="board-list">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:120px;">
                            <col style="width:90px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="tit-box">제목</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i=1 To 15 %>
                            <tr>
                                <td class="tit-box">
                                    <div class="tit-txt"><a href="#">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a></div>
                                </td>
                                <td>2019-01-01</td>
                                <td>0000</td>
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
            <!--// E : 대학별 모집요강 분석  -->
        </div>
    </div>
    <!--// E : 모집요강 -->

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

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 