<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > Q&A/리뷰
' 모듈기능 : 마이페이지 > Q&A/리뷰
' 파 일 명 : default.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
' 
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------





'------------------------------
' VARS
'------------------------------






'------------------------------
' QUERY
'------------------------------





'------------------------------
' ETC
'------------------------------






%>

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mypage-container mt60">
            <div class="content-layout snb-layout">
                <!-- S : SNB -->
                <!--#include virtual="/totalWebSite/renew2019/sdijS/_mypage/inc.snb.asp"-->
                <!--// E : SNB -->

                <div class="board-layout">
                    <!-- S : 나의 질문&답변 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit mt0">나의 질문&amp;답변</h3>

                        <div class="tit-side">
                            <a href="javascript:void(0);" onclick="fnOpenLayer('dim-qnaSelect');" class="btn btn-sm">학습 질문하기</a>
                        </div>
                    </div>

                    <div class="board-date mb30" style="border-top:1px solid #000;">
                        <form action="" method="">
                            <!-- S : 달력날짜선택 -->
                            <div class="date-terms">
                                <label class="label-date"><input type="text" value="2019-06-11" class="input-text datepicker hasDatepicker" id="dp1567606403834"></label><!--hasDatepicker 이게 있으면 datepicker가 안뜸-->
                                &nbsp;~&nbsp;
                                <label class="label-date"><input type="text" value="2019-06-18" class="input-text datepicker hasDatepicker" id="dp1567606403835"></label>
                            </div>
                            <!--// E : 달력날짜선택 -->
    
                            <!-- S : 버튼날짜선택 -->
                            <div class="btn-terms">
                                <button type="button" class="btn on">1주일</button>
                                <button type="button" class="btn">1개월</button>
                                <button type="button" class="btn">3개월</button>
                                <button type="button" class="btn">6개월</button>
                            </div>
                            <!--// E : 버튼날짜선택 -->
    
                            <input type="submit" class="btn btn-black btn-search" value="검색">
                        </form>
                    </div>

                    <div class="board-list">
                        <table>
                            <colgroup>
                                <col style="width:80px;">
                                <col style="width:100px;">
                                <col style="width:auto;">
                                <col style="width:100px;">
                                <col style="width:70px;">
                                <col style="width:70px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>답변여부</th>
                                    <th>강사명</th>
                                    <th>제목</th>
                                    <th>작성일</th>
                                    <th>수정</th>
                                    <th>삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for i = 1 to 5 %>
                                <tr>
                                <% if i = 1 then '답변완료 시 %>
                                    <td class="color-black">답변완료</td>
                                <% else %>
                                    <td class="color-gray">답변대기</td>
                                <% end if %>
                                    <td>홍길동</td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/teachers/qna_view.asp" class="tit-txt">
                                            가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                        </a>
                                    </td>
                                    <td>2019-01-01</td>
                                    <td>
                                        <button type="button"><span class="ico ico-edit">수정</span></button>
                                    </td>
                                    <td>
                                        <button type="button"><span class="ico ico-delete2">삭제</span></button>
                                    </td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>

                    <div class="board-pager mt30">
                        <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
                        <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>
                        
                        <div class="pager-num">
                            <a href="javascript:void(0);" class="on">1</a>
                            <a href="javascript:void(0);">2</a>
                            <a href="javascript:void(0);">3</a>
                            <a href="javascript:void(0);">4</a>
                            <a href="javascript:void(0);">5</a>
                            <a href="javascript:void(0);">6</a>
                            <a href="javascript:void(0);">7</a>
                            <a href="javascript:void(0);">8</a>
                            <a href="javascript:void(0);">9</a>
                            <a href="javascript:void(0);">10</a>
                        </div>
                
                        <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
                        <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
                    </div>
                    <!--// E : 나의 질문&답변 -->

                    <!-- S : 나의 후기 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit mt0">나의 후기</h3>

                        <div class="tit-side">
                            <a href="/renew2019/sdijS/_on/teachers/review_write.asp" class="btn btn-sm">리뷰 작성하기</a>
                        </div>
                    </div>

                    <div class="board-date mb30" style="border-top:1px solid #000;">
                        <form action="" method="">
                            <!-- S : 달력날짜선택 -->
                            <div class="date-terms">
                                <label class="label-date"><input type="text" value="2019-06-11" class="input-text datepicker hasDatepicker" id="dp1567606403834"></label>
                                &nbsp;~&nbsp;
                                <label class="label-date"><input type="text" value="2019-06-18" class="input-text datepicker hasDatepicker" id="dp1567606403835"></label>
                            </div>
                            <!--// E : 달력날짜선택 -->
    
                            <!-- S : 버튼날짜선택 -->
                            <div class="btn-terms">
                                <button type="button" class="btn on">1주일</button>
                                <button type="button" class="btn">1개월</button>
                                <button type="button" class="btn">3개월</button>
                                <button type="button" class="btn">6개월</button>
                            </div>
                            <!--// E : 버튼날짜선택 -->
    
                            <input type="submit" class="btn btn-black btn-search" value="검색">
                        </form>
                    </div>

                    <div class="board-list">
                        <table>
                            <colgroup>
                                <col style="width:80px;">
                                <col style="width:100px;">
                                <col style="width:auto;">
                                <col style="width:100px;">
                                <col style="width:70px;">
                                <col style="width:70px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>강사명</th>
                                    <th>제목</th>
                                    <th>작성일</th>
                                    <th>수정</th>
                                    <th>삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for i = 1 to 5 %>
                                <tr>
                                    <td>
                                    <% if i = 1 then '베스트' 아이콘 %>
                                        <span class="sticker-board sticker-orange">best</span>
                                    <% else %>
                                        <% = i %>
                                    <% end if %>
                                    </td>
                                    <td>홍길동</td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/teachers/review_view.asp" class="tit-txt">
                                            가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                        </a>
                                    </td>
                                    <td>2019-01-01</td>
                                    <td>
                                        <button type="button"><span class="ico ico-edit">수정</span></button>
                                    </td>
                                    <td>
                                        <button type="button"><span class="ico ico-delete2">삭제</span></button>
                                    </td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>

                    <div class="board-pager mt30">
                        <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
                        <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>
                        
                        <div class="pager-num">
                            <a href="javascript:void(0);" class="on">1</a>
                            <a href="javascript:void(0);">2</a>
                            <a href="javascript:void(0);">3</a>
                            <a href="javascript:void(0);">4</a>
                            <a href="javascript:void(0);">5</a>
                            <a href="javascript:void(0);">6</a>
                            <a href="javascript:void(0);">7</a>
                            <a href="javascript:void(0);">8</a>
                            <a href="javascript:void(0);">9</a>
                            <a href="javascript:void(0);">10</a>
                        </div>
                
                        <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
                        <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
                    </div>
                    <!--// E : 나의 후기 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
    <!--// E : container -->
    
    <!-- S : dim-layer -->
    <div class="dim-layer">
        <div class="dim-bg"></div>
    
        <!-- S : 학습질문하기 / 선생님 선택 -->
        <div class="dim-content dim-form dim-qnaSelect">
            <h4 class="dim-tit txt-center">학습질문하기</h4>
    
            <form action="" method="">
            <div class="dim-select">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <td colspan="3">
                                <b>* 학습 질문 과목과 선생님을 골라주세요.</b>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="form-select">
                                    <select>
                                        <option hidden disabled selected>과목</option>
                                        <option value="">국어</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <% for i = 1 to 3 %>
                        <tr>
                            <td>
                                <label class="form-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    홍길동
                                </label>
                            </td>
                            <td>
                                <label class="form-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    홍길동
                                </label>
                            </td>
                            <td>
                                <label class="form-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    홍길동
                                </label>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>
    
            <div class="dim-btn txt-center">
                <a href="/renew2019/sdijS/_on/teachers/qna_write.asp" class="btn btn-black btn-confirm">선택완료</a>
                <button type="button" class="btn btn-darkgray pop-close">취소</button>
            </div>
            </form>
        </div>
        <!--// E : 학습질문하기 / 선생님 선택 -->
    </div>
    <!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">

$(function(){
    
});

</script>
<!--// E : 페이지별 스크립트 -->