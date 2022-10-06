<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > 라이브 플레이어
' 모듈기능 : 보충강좌 서비스 > 강좌 > 라이브 플레이어
' 파 일 명 : live_player.asp
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
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:window.history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">실시간 LIVE</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="player-container">
        <!-- S : 강좌 정보 -->
        <article class="container-view content-layout">
            <ul class="list-tit float-area mt1 mb1">
                <li>
                    <span class="tit">강사명</span>
                    <span class="txt">홍길동 선생님</span>
                </li>
                <li>
                    <span class="tit">강좌명</span>
                    <span class="txt">강좌명</span>
                </li>
                <li>
                    <span class="tit">첨부파일</span>
                    <span class="txt"><a href="javascript:void(0);" class="txt-link">파일명.pdf</a></span>
                </li>
            </ul>
        </article>
        <!--// E : 강좌 정보 -->

        <!-- S : 플레이 영역 -->
        <article class="container-player">
            <div class="video-area"><!-- 4k 영상일 경우 class="wide-area" 추가 -->
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/t7w3k3pjZY4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
            </div>
        </article>
        <!--// E : 플레이 영역 -->

		<!-- S : 시험 영역 -->
		<article class="content-layout mt2">
			<div class="txt-right">
				<% If true Then '시험 응시 전 %>
				<a href="javascript:void(0);" onclick="win_pop(); return false;" class="btn btn-black btn-M">시험응시</a>
				<% Else '시험 응시 완료 %>
				<a href="javascript:void(0);" class="btn btn-disabled btn-M">응시완료</a>
				<% End If %>
			</div>
		</article>
		<!--// E : 시험 영역 -->

        <!-- S : 강좌별 공지사항 -->
        <article class="container-view content-layout mt2">
            <h3 class="tit-dep4">강좌별 공지사항</h3>

            <div class="table-type1 table-view1">
                <table>
                    <colgroup>
                        <col style="width:4.666666667rem;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">강좌명좌명좌명좌명좌명좌명좌명좌명좌명</div>
                            <div class="tit">게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글목 게시글 제목 게시글 제목</div>
                            <div class="date color-gray">
                                <span>홍길동 선생님</span>
                                <span>2020-08-22</span>
                            </div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 게시글 내용 
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>첨부파일</th>
                            <td>
                                <div class="file-area">
                                    <a href="javascript:void(0)">파일명파일명파일명.jpg</a>
                                    <a href="javascript:void(0)">파일명파일명파일명.jpg</a>
                                    <a href="javascript:void(0)">파일명파일명파일명.jpg</a>
                                    <a href="javascript:void(0)">파일명파일명파일명.jpg</a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="mt1 txt-right">
                <a href="/totalWebSite/renew2019/reclass/teachers/notice.asp" class="btn btn-black btn-M">목록</a>
            </div>
        </article>
        <!--// E : 강좌별 공지사항 -->
    </section>
    <!--// E : container -->

<script>
/* 윈도우 팝업*/
var win_pop = function(){
	var popWidth = 500;
	var popHeight = 1100;
	var winHeight = document.body.clientHeight;
	var winWidth = document.body.clientWidth; 
	var winX = window.screenLeft; 
	var winY = window.screenTop; 

	var popX = winX + 50;
	var popY = winY + 170;

	var tUrl = "/totalWebSite/renew2019/reclass/exam/default.asp"; 
	var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";
	window.open(tUrl,"",tOpt);
};
</script>

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->