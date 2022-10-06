<!--include virtual="/totalMobileSite/renew2019/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 고객센터 > 메인 > 1:1 문의 리스트
' 모듈기능 : 고객센터 > 메인 > 1:1 문의 리스트
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
            <h2 class="dep1-tit">1:1 문의 내역</h2>

            <div class="board-layout">

                <!-- S : 1:1문의 내역 리스트 -->
                <div class="board-list board-list2">
                    <ul class="border-none">
                        <li>
                            <div class="data-state">
                                <span class="color-black">답변완료</span>
                                <span class="color-gray">회원가입</span>
                            </div>
                            <div class="data-tit">
                                <a href="/_cs/qna_view.asp" class="tit-txt tit-ico">
                                    가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                </a>
                                <span class="ico ico-new">신규 게시물</span>
                            </div>

                            <div class="data-day">
                                <span class="ico ico-file2">첨부파일</span>
                                <span>2019-01-01</span>
                            </div>
                        </li>
                        <li>
                            <div class="data-state">
                                <span class="color-gray">답변대기</span>
                                <span class="color-gray">정보수정</span>
                            </div>
                            <div class="data-tit">
                                <a href="/_cs/qna_view.asp" class="tit-txt tit-ico">
                                    정보수정이 안되요
                                </a>
                            </div>

                            <div class="data-day">
                                <span>2019-01-01</span>
                            </div>
                        </li>
                        <li>
                            <div class="data-tit txt-center">
                                문의 내역이 없습니다.
                            </div>
                        </li>
                    </ul>
                </div>
                <!--// E : 1:1문의 내역 리스트 -->

                <div class="board-btn mt10">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <a href="qna_write.asp" class="btn btn-black">문의하기</a>
    </div>

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
