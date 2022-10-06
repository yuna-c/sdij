<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > 강좌 플레이어
' 모듈기능 : VOD 강좌 플레이어
' 파 일 명 : player.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:goBack();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1 tit-player">1강. 강좌명</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="player-container">
        <!-- S : 플레이 영역 -->
        <article class="container-player">
            <div class="video-area"><!-- 4k 영상일 경우 class="wide-area" 추가 -->
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/DrN12SkV400" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
            </div>
        </article>
        <!--// E : 플레이 영역 -->

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

            <% if false then '강좌별 공지사항 리스트 오픈 후 노출 %>
            <div class="mt1 txt-right">
                <a href="/totalWebSite/teachers/notice.asp" class="btn btn-black btn-M">목록</a>
            </div>
            <% end if %>
        </article>
        <!--// E : 강좌별 공지사항 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->