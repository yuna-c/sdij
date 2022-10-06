<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 학습 질문/답변
' 모듈기능 : 선생님 > 학습 질문/답변
' 파 일 명 : qna_list.asp
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
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="content-layout">
                <h2 class="dep1-tit">
                    학습 질문/답변
                    <small>홍길동 선생님 수업에 대해 궁금한 점은 언제든 문의해 주세요</small>
                </h2>

                <div class="board-layout">
                    <div class="board-search float-area">
                        <!-- S : 학습 질문/답변 검색 -->
                        <div class="input-area fl">
                            <div class="form-select">
                                <select>
                                    <option value="">전체</option>
                                </select>
                            </div>

                            <div class="form-input">
                                <input type="text">
                            </div>

                            <button type="button" class="btn btn-search"><span class="ico ico-search">검색</span></button>
                        </div>
                        <!--// E : 학습 질문/답변 검색 -->

                        <div class="btn-area fr">
                            <input type="button" onclick="fnSortMy($(this));" class="btn btn-sm2" value="내 질문보기">
                            <a href="qna_write.asp" class="btn btn-sm2 btn-black">질문하기</a>
                        </div>
                    </div>

                    <!-- S : 학습 질문/답변 리스트 -->
                    <div class="board-list board-list2">
                        <table>
                            <colgroup>
                                <col style="width:80px;">
                                <col style="width:90px;">
                                <col style="width:auto;">
                                <col style="width:110px;">
                                <col style="width:100px;">
                                <col style="width:80px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>유형</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th>답변여부</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for i = 1 to 15 %>
                                <tr>
                                    <td>
                                    <% if i = 1 then '공지 아이콘 %>
                                        <span class="sticker-board sticker-red">notice</span>
                                    <% else %>
                                        <% = i %>
                                    <% end if %>
                                    </td>
                                    <td>학습법</td>
                                    <td class="tit-box">
                                        <a href="qna_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
                                            <span class="ico ico-rock2">비공개 게시물</span><!-- 비공개 게시물일 경우 해당 영역 노출 -->
                                        <% if i = 1 then '공지글 일 경우 %>
                                            <b>가나다라가나다라가나다라가나다라가나다라</b>
                                        <% else %>
                                            가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                        <% end if %>
                                        </a>
                                    <% if i = 1 then '신규 게시글 일 경우 %>
                                        <span class="ico ico-new">신규 게시물</span>
                                    <% end if %>
                                    </td>
                                    <td>
                                        <% if i = 1 then '공지글 일 경우 %>
                                        <span class="color-black">홍길동선생님</span>
                                        <% else %>
                                        <span>홍길동선생님</span>
                                        <% end if %>
                                    </td>
                                    <td>2019-01-01</td>
                                <% if i = 1 then '답변완료 시 %>
                                    <td class="color-black">답변완료</td>
                                <% else %>
                                    <td class="color-gray">답변대기</td>
                                <% end if %>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 학습 질문/답변 리스트 -->

                    <!-- S : 학습 질문/답변 페이징 -->
                    <div class="board-pager">
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
                    <!--// E : 학습 질문/답변 페이징 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
$(function(){
    
});

// 질문보기 버튼 변경
function fnSortMy(obj){
    var obj = obj;

    obj.toggleClass('btn-on');
    
    if( obj.is('.btn-on') === true ){
        obj.val('전체 질문보기');
    }else{ 
        obj.val('내 질문보기');
     }
}
</script>
<!--// E : 페이지별 스크립트 -->