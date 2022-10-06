<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 모집요강 -->
    <div class="content-layout">
        <h2 class="page-tit">공지사항</h2>
        <!-- S : 입시분석 -->
            <div class="board-list">
                <ul>
                    <% For i=1 To 5 %>
                    <li>
                        <div class="data-label">
                            <span>재종</span>
                            <span>2019-01-01</span>
                        </div>
                        <div class="data-tit">
                            <a href="#">
                                2018 자연계열 정시모집 입시결과 2018 자연계열 정시모집 입시결과
                            </a>
                        </div>
                    </li>
                    <% Next %>
                </ul>
            </div>

            <!-- S : 페이지 버튼 -->
            <div class="board-pager">
                <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
                <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>

                <div class="pager-num">
                    <% For i=1 To 5 %>
                    <a href="javascript:void(0);" <% If i=1 Then Response.Write " class=""on""" %>><%= i %></a>
                    <% Next %>
                </div>

                <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
                <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
            </div>
            <!--// E : 페이지 버튼 -->
        <!--// E : 입시분석  -->
    </div>
    <!--// E : 모집요강 -->


</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->