<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <h2 class="page-tit border-tit">응시원서 접수내역 리스트</h2>

        <ul class="dot_txt mb30">
            <li>
                응시원서는 제출 후 수정, 취소가 불가능하며 파일 업로드 및 접수상태 조회만 가능합니다.
            </li>
            <li>
                접수내역의 전형명을 클릭하면 상세 조회가 가능합니다.
            </li>
            <li>
                문의처 - 합격자 발표 관련 : 02-538-2321, 접수 및 환불 관련 : 1522-0568
            </li>
        </ul>
        <!-- S : 응시원서 접수내역 리스트 -->
        <div class="board-list">
            <ul>
                <% For i=1 To 5 %>
                <li>
                    <div class="data-label">
                        <span>
                            1
                        </span>
                    </div>
                    <div class="data-tit">
                        <a href="#">
                            인문계 무시험 – 우선선발
                        </a>
                    </div>
                    <div class="data-txt">
                        <span>2019-01-10</span>
                    </div>
                </li>
                <% Next %>
            </ul>
        </div>
        <!--// E : 응시원서 접수내역 리스트 -->

        <!-- S : 페이지 버튼 -->
        <div class="board-pager">
            <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>

            <div class="pager-num">
                <% For i=1 To 3 %>
                <a href="javascript:void(0);" <% If i=1 Then Response.Write " class=""on""" %>><%= i %></a>
                <% Next %>
            </div>

            <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
        </div>
        <!--// E : 페이지 버튼 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->