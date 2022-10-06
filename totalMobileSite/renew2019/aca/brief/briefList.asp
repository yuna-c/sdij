<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <h2 class="page-tit border-tit">설명회</h2>

        <!-- S : 페이지 버튼 -->
        <div class="board-btn mb30">
            <a href="incLayer20.asp" class="btn btn-mid btn-darkgray btn-strong">신청조회</a>
            <a href="incLayer21.asp" class="btn btn-mid btn-darkgray btn-strong">문자수신 DB등록</a>
        </div>
        <!--// E : 페이지 버튼 -->

        <!-- S : 탭 버튼 -->
        <div class="board-tab">
             <div class="tab-list">
                <a href="javascript:void(0);" class="selected">N수</a>
                <a href="javascript:void(0);">예비고3</a>
                <a href="javascript:void(0);">예비고2</a>
                <a href="javascript:void(0);">예비고1</a>
                <a href="javascript:void(0);">기타</a>
            </div>
        </div>
        <!-- E : 탭 버튼 -->

         <!-- S : 과목 탭 버튼 -->
          <div class="board-tab mb50">
               <div class="tab-list border mb0">
                  <a href="javascript:void(0);" class="selected">【이과】 의대 면접 /자소서 /학생부 설명회</a>
                  <a href="javascript:void(0);">【이과】 개정 과학탐구 설명회</a>
              </div>
          </div>
          <!-- E : 과목 탭 버튼 -->

        <!-- S : 설명회 리스트 -->
        <div class="board-list">
            <ul>
                <% For i=1 To 5 %>
                <li>
                    <div class="data-label">
                        <span>예비고1</span>
                        <span>이과</span>
                    </div>
                    <div class="data-tit show-btn">2018 자연계열 정시모집 입시결과 2018 자연계열 정시모집 입시결과</div>
                    <div class="data-txt">
                        <span>2018-12-14 (금) 11시 00분</span>
                        <span>시대인재 2관 2층</span>
                    </div>
                    <div class="data-btn">
                        <% if true then '신청가능 %>
                        <a href="#" class="txt-link">설명회 신청</a>
                        <% else %>
                        <a href="javascript:void(0);" class="txt-link txt-end">마감</a>
                        <% end if %>
                    </div>
                </li>
                <li class="hide-pop txt-center">
                    내용
                </li>
                <% Next %>
            </ul>
        </div>
        <!--// E : 설명회 리스트 -->

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
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->