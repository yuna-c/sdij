<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">설명회</h2>

    <!-- S : 설명회 리스트 -->
    <div class="board-layout">
        <div class="board-list">
            <!-- S : board-btn -->
            <div class="board-btn">
                <a href="javascript:void(0);" onclick="fnOpenLayer('dim3'); return false;" class="btn btn-sm btn-gray">신청조회</a>
                <a href="javascript:void(0);" onclick="fnOpenLayer('dim4'); return false;" class="btn btn-mid btn-gray">문자수신 DB등록</a>
            </div>
            <!--// E : board-btn -->

            <table>
                <colgroup>
                    <col style="width:100px;">
                    <col style="width:70px;">
                    <col style="width:auto;">
                    <col style="width:210px;">
                    <col style="width:150px;">
                    <col style="width:110px;">
                </colgroup>
                <thead>
                    <tr>
                        <th>대상학년</th>
                        <th>계열</th>
                        <th>제목</th>
                        <th>일자</th>
                        <th>장소</th>
                        <th>지원하기</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 15 %>
                    <tr>
                        <td>예비고3</td>
                        <td>이과</td>
                        <td>
                            <div class="tit-txt"><a href="#">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a></div>
                        </td>
                        <td>2019-01-01 (화) 11시 00분</td>
                        <td>시대인재 2관 2층</td>
                        <td>
                            <% if true then '신청가능 %>
                            <a href="#" class="txt-link">설명회 신청</a>
                            <% else %>
                            <a href="javascript:void(0);" class="txt-link txt-end">마감</a>
                            <% end if %>
                        </td>
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
    <!--// E : 설명회 리스트 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : dim-layer -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incDimLayer.asp"-->
<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->