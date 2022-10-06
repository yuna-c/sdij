<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>
    
    <h2 class="page-tit">인재채용</h2>

    <!-- S : 설명회 리스트 -->
    <div class="board-layout">
        <div class="board-list">
            <!-- S : board-btn -->
            <div class="board-btn">
                <a href="javascript:void(0);" onclick="fnAlertMsgTit('지원결과', '서류전형 결과는 절차가 진행되는대로<br>유선 또는 이메일로 개별 연락드립니다.')" class="btn btn-mid btn-gray">지원결과 조회</a>
            </div>
            <!--// E : board-btn -->

            <table>
                <colgroup>
                    <col style="width:100px;">
                    <col style="width:auto;">
                    <col style="width:210px;">
                    <col style="width:100px;">
                    <col style="width:100px;">
                    <col style="width:100px;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>모집공고</th>
                        <th>모집기간</th>
                        <th>모집부문</th>
                        <th>진행사항</th>
                        <th>지원하기</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 15 %>
                    <tr>
                        <td>강사모집</td>
                        <td>
                            <div class="tit-txt"><a href="#">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a></div>
                        </td>
                        <td>2019-01-01 ~ 2019-03-01</td>
                        <td>신입/경력</td>
                        <td>접수중</td>
                        <td>
                            <% if true then '지원가능 %>
                            <a href="#" class="txt-link">지원 하기</a>
                            <% else %>
                            <a href="javascript:void(0);" class="txt-link txt-end">지원 마감</a>
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