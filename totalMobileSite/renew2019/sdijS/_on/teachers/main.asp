<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 선생님 개별메인
' 모듈기능 : 선생님 > 선생님 개별메인
' 파 일 명 : main.asp
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
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/teachers.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container mb0">
        <div class="teacher-header" style="background-color:#9ea5cc"><!-- style="background-color:선생님 별 배경 컬러" -->
            <span class="img-teacher"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/main_img.jpg" alt="이동준 선생님 이미지"></span><!-- src="http://img.sdij.com/sd2019/mobile/teachers/선생님ID/main_img.jpg" -->
            <span class="img-name"><img src="http://img.sdij.com/sd2019/mobile/teachers/id/main_name.png" alt="이동준 수학"></span><!-- src="http://img.sdij.com/sd2019/mobile/teachers/선생님ID/main_name.png" -->
        </div>

        <div class="content-layout teacher-content">
            <div class="teacher-tab float-area">
                <a href="javascript:void(0);" class="selected"><span>공지사항</span></a>
                <a href="javascript:void(0);"><span>Q&amp;A</span></a>
                <a href="javascript:void(0);"><span>자료실</span></a>
                <a href="/totalMobileSite/renew2019/sdijS/_on/search/default.asp"><span>강좌목록</span></a><!-- 해당 선생님 검색된 채로 이동 -->
            </div>

            <!-- S : 공지사항 -->
            <div class="tab-content tab-on">
                <div class="board-list board-list2">
                    <ul>
                        <% for i = 1 to 5 '최근 게시글 5개 노출 %>
                        <li>
                            <div class="data-tit">
                                <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/notice_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
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

                                <span>2019-01-01</span>
                            </div>
                        </li>
                        <% next %>
                    </ul>
                </div>

                <a href="/totalMobileSite/renew2019/sdijS/_on/board/notice_list.asp" class="btn mt20">공지사항 전체보기</a>
            </div>
            <!--// E : 공지사항 -->

            <!-- S : Q&A -->
            <div class="tab-content">
                <div class="board-list board-list2">
                    <ul>
                    <% for i = 1 to 5 '최근 게시글 5개 노출 %>
                        <li>
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

                            <div class="data-tit">
                                <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/qna_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
                                    가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
                                </a>
                            <% if i = 1 then '신규 게시글 일 경우 %>
                                <span class="ico ico-new">신규 게시물</span>
                            <% end if %>
                            </div>

                            <div class="data-day">
                                <span class="name">홍길동</span>
                                <span>2019-01-01</span>
                            </div>
                        </li>
                    <% next %>
                    </ul>
                </div>

                <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/qna_list.asp" class="btn mt20">Q&amp;A 전체보기</a>
            </div>
            <!--// E : Q&A -->

            <!-- S : 자료실 -->
            <div class="tab-content">
                <div class="board-list board-list2">
                    <ul>
                        <% for i = 1 to 5 '최근 게시글 5개 노출 %>
                        <li>
                            <div class="data-tit">
                                <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/data_view.asp" class="tit-txt <% if i = 1 then '신규 게시글 일 경우 %> tit-ico<% end if %>">
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

                                <span>2019-01-01</span>
                            </div>
                        </li>
                        <% next %>
                    </ul>
                </div>

                <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/data_list.asp" class="btn mt20">자료실 전체보기</a>
            </div>
            <!--// E : 자료실 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    // 과목 탭 selected
    $('.subject-tab li a').on('click', function(){
		$(this).parent().addClass('selected').siblings().removeClass('selected');
    });

    // tab click
	$('.teacher-tab a').on('click', function(){
		var $tab = $(this).parents('.teacher-tab');
        var objIndex = -1;

        fnScrollObj($tab);

		objIndex = $tab.children('a').index($(this));

		if( objIndex > -1 ){
			$tab.children('a').removeClass('selected').eq(objIndex).addClass('selected');
            $tab.parent().children('.tab-content').hide().eq(objIndex).show();
		}
	});
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
