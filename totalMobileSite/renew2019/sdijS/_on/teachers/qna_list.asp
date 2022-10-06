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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container">
        <div class="content-layout">
            <h2 class="dep1-tit">학습 질문/답변</h2>

            <div class="board-layout">
                <!-- S : 학습 질문/답변 검색 -->
                <div class="board-search">
                    <div class="form-input">
                        <input type="text" placeholder="검색어를 입력하세요">
                    </div>

                    <button type="button" class="btn btn-search"><span class="ico ico-search">검색</span></button>
                </div>
                <!--// E : 학습 질문/답변 검색 -->

                <!-- S : 학습 질문/답변 리스트 -->
                <div class="board-list board-list2">
                    <ul>
                    <% for i = 1 to 10 %>
                        <li class="<% if i = 1 or i = 1 then '공지글 일 경우 %>on<% end if %>">
                        <% if i = 1 then '공지 아이콘 %>
                            <div class="data-sticker">
                                <span class="sticker-board sticker-red">notice</span>
                            </div>
                        <% else '일반 게시글 %>
                            <div class="data-state">
                            <% if i = 2 then '비공개 게시글 일 경우 %>
                                <span class="ico ico-rock">비공개 게시글</span>
                            <% end if %>

                            <% if i = 2 then '답변완료 시 %>
                                <span class="color-black">답변완료</span>
                            <% else %>
                                <span class="color-gray">답변대기</span>
                            <% end if %>

                                <span>학습법</span>
                            </div>
                         <% end if %>

                            <div class="data-tit">
                                <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/qna_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
                                    가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                </a>
                            <% if i = 1 then '신규 게시글 일 경우 %>
                                <span class="ico ico-new">신규 게시물</span>
                            <% end if %>
                            </div>

                            <div class="data-day">
                                <% if i = 1 then '첨부파일 있을 경우 %>
                                <span class="ico ico-file2">첨부파일</span>
                                <% end if %>

                                <span class="name">홍길동선생님</span>
                                <span>2019-01-01</span>
                            </div>
                        </li>
                    <% next %>
                    </ul>
                </div>
                <!--// E : 학습 질문/답변 리스트 -->

                <div class="boara-btn mt10">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <input type="button" onclick="fnSortMy($(this));" class="btn btn-lightgray" value="내 질문보기">
        <a href="qna_write.asp" class="btn btn-black">질문하기</a>
    </div>

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

function fnSortMy(obj){
    var obj = obj;

    obj.toggleClass('btn-on');

    if( obj.is('.btn-on') === true ){
        obj.val('전체 질문보기');
    }else{
        obj.val('내 질문보기');
     }
}

//-->
</script>
<!--// E : 페이지별 스크립트 -->
