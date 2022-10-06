<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>
    
    <div class="board-layout">
        <h2 class="page-tit">설명회 신청내역</h2>

        <!-- S : 신청완료 내역 -->
        <div class="board-list">
            <h3 class="board-tit">신청완료 내역</h3>

            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>일시</th>
                        <th>장소</th>
                        <th>학년</th>
                        <th>계열</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 5 %>
                    <tr>
                        <td>2019-01-01</td>
                        <td>시대인재 N관</td>
                        <td>전체</td>
                        <td>자연계</td>
                    </tr>
                    <% Next %>
                    <tr class="no-data">
                        <td colspan="4">설명회 신청 내역이 없습니다.</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : 신청완료 내역 -->

        <!-- S : 최소 및 종료 내역 -->
        <div class="board-list mt50">
            <h3 class="board-tit">최소 및 종료 내역</h3>

            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>일시</th>
                        <th>장소</th>
                        <th>학년</th>
                        <th>계열</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 5 %>
                    <tr>
                        <td>2019-01-01</td>
                        <td>시대인재 N관</td>
                        <td>전체</td>
                        <td>자연계</td>
                    </tr>
                    <% Next %>
                    <tr class="no-data">
                        <td colspan="4">설명회 최소 및 종료 내역이 없습니다.</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : 신청완료 내역 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 