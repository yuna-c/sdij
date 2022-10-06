<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 모집요강 -->
    <div class="content-layout">
        <h2 class="page-tit">입시 R&amp;D</h2>

        <div class="board-tab">
            <div class="tab-list">
                <a href="javascript:void(0);" class="selected">입시분석</a>
                <a href="javascript:void(0);">대학별 모집요강 분석</a>
            </div>

            <!-- S : 입시분석 -->
            <div class="tab-content tab-on">
                <h3 class="dep-tit">입시분석</h3>

                <div class="board-list">
                    <ul>
                        <% For i=1 To 15 %>
                        <li>
                            <div class="data-label">
                                <span>정시</span>
                                <span>2019-01-01</span>
                            </div>
                            <div class="data-tit"><a href="#">2018 자연계열 정시모집 입시결과 2018 자연계열 정시모집 입시결과</a></div>
                            <div class="data-txt">
                                <span>컨설턴트 강동우</span>
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
            </div>
            <!--// E : 입시분석  -->

            <!-- S : 대학별 모집요강 분석 -->
            <div class="tab-content">
                <h3 class="dep-tit">대학별 모집요강 분석</h3>

                <div class="board-list">
                    <ul>
                        <% For i=1 To 15 %>
                        <li>
                            <div class="data-label">
                                <span>2019-01-01</span>
                            </div>
                            <div class="data-tit"><a href="#">2018학년도 서울대학교 정시모집</a></div>
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
            </div>
            <!--// E : 대학별 모집요강 분석  -->
        </div>
    </div>
    <!--// E : 모집요강 -->

    
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"--> 