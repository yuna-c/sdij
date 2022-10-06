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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container mypage-container">
        <div class="content-layout board-tab">
            <h2 class="step-tit">My QnA &amp; Review</h2>

            <div class="dep1-tab">
                <ul>
                    <li class="selected"><a href="javascript:void(0);">나의 질문/답변</a></li>
                    <li><a href="javascript:void(0);">나의 후기</a></li>
                </ul>
            </div>

            <!-- S : 나의 질문/답변 -->
            <div class="tab-content tab-on mt0">
                <div class="board-list board-list2">
                    <ul class="border-none">
                    <% for i = 1 to 5 %>
                        <li>
                            <div class="data-state">
                            <% if i = 1 then '답변완료 시 %>
                                <span class="color-black">답변완료</span>
                            <% else %>
                                <span class="color-gray">답변대기</span>
                            <% end if %>
                            </div>

                            <div class="data-tit">
                                <a href="/_on/teachers/qna_view.asp" class="tit-txt">
                                    가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                </a>
                            </div>
                        
                            <div class="data-day">
                                <span class="name">홍길동선생님</span>
                                <span>2019-01-01</span>
                            </div>
                        </li>
                    <% next %>
                    </ul>
                </div>

                <div class="board-btn mt10">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
            </div>
            <!--// E : 나의 질문/답변 -->

            <!-- S : 나의 후기 -->
            <div class="tab-content mt0">
                <div class="board-list board-list2">
                    <ul class="border-none">
                    <% for i = 1 to 5 %>
                        <li>
                        
                            <div class="data-sticker">
                            <% if i = 1 then '베스트 아이콘 %>
                                <span class="sticker-board sticker-orange">best</span>
                            <% end if %>
                            </div>

                            <div class="data-tit">
                                <a href="/_on/teachers/review_view.asp" class="tit-txt">
                                    가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                </a>
                            </div>
                        
                            <div class="data-day">
                                <span class="name">홍길동선생님</span>
                                <span>2019-01-01</span>
                            </div>
                        </li>
                    <% next %>
                    </ul>
                </div>

                <div class="board-btn mt10">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
            </div>
            <!--// E : 나의 후기 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn tab-btn">
        <button type="button" onclick="fnOpenLayer('pop-qnaselect')" class="btn btn-black">질문하기</button>
        <a href="/_on/teachers/review_write.asp" class="btn btn-black">후기쓰기</a>
    </div>
    
    <!-- S : dim-layer -->
    <link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/popup.css?d=<%= now() %>">

    <div class="dim-layer">
        <div class="dim-bg"></div>

        <!-- S : 학습질문하기 / 선생님 선택 -->
        <!--#include virtual="/totalMobileSite/renew2019/sdijS/_mypage/board/pop.qnaselect.asp"-->
        <!--// E : 학습질문하기 / 선생님 선택 -->
    </div>
    <!--// E : dim-layer -->
    
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    // tab 클릭 시 btn 노출 변경
    $('.page-btn.tab-btn').find('.btn').eq(1).hide();
	$('.dep1-tab ul > li').on('click', function(){
        var objIndex = $(this).parents('.dep1-tab').find('li').index(this);
		$('.page-btn.tab-btn').children().hide().eq(objIndex).show();
	});
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->