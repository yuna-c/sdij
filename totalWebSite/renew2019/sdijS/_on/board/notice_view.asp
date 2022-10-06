<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 공지사항 글보기
' 모듈기능 : 선생님 > 공지사항 글보기
' 파 일 명 : notice_view.asp
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
                    공지사항
                    <small>시대인재 실시간 소식과 함께 하세요</small>
                </h2>

                <div class="board-layout">
                    <!-- S : 공지사항 보기 -->
                    <div class="board-view board-view2">
                        <table>
                            <colgroup>
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <!-- S : 타이틀 -->
                                <tr>
                                    <th>
                                        <div class="board-tit">
                                        <% if i = 1 then '공지 아이콘 %>
                                            <span class="sticker-board sticker-red">notice</span>
                                        <% else '이벤트 아이콘 %>
                                            <span class="sticker-board sticker-purple">event</span>
                                        <% end if %>
                                            재원생 부엉이 포스트 성적 열람 방법 안내 타이틀 무한대로 노출 됩니다. 길게 쓰진 않겠지만 타이틀은 전부 노출 됩니다.
                                        </div>

                                        <div class="board-info">
                                            <span>2019-01-01</span>
                                        </div>
                                    </th>
                                </tr>
                                <!--// E : 타이틀 -->
                            </thead>
                            <tbody>
                                <!-- S :내용 -->
                                <tr>
                                    <td class="txt-box">
                                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                                        <img src="http://via.placeholder.com/950x100" alt=" ">
                                    </td>
                                </tr>
                                <!--// E :내용 -->

                                <!-- S : 첨부파일 -->
                                <tr>
                                    <td class="txt-file">
                                        <span>첨부파일</span>
                                        <span class="ico ico-file2"></span>
                                        <button type="button" class="color-darkgray">file3027491.png</button>
                                    </td>
                                </tr>
                                <!--// E : 첨부파일 -->
                            </tbody>
                        </table>
                
                        <!-- S : board-btn -->
                        <div class="board-btn">
                            <a href="/renew2019/sdijS/_on/board/notice_list.asp" class="btn btn-sm">리스트</a>
                        </div>
                        <!--// E : board-btn -->
                    </div>
                    <!--// E : 공지사항 보기 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->