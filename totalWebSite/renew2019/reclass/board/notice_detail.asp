<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 게시판 > 공지사항 상세
' 모듈기능 : 보충강좌 서비스 > 게시판 > 공지사항 상세
' 파 일 명 : notice_detail.asp
' 작성일자 : 2020/02/28
' 작 성 자 : 우미경
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
            <a href="javascript:history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">공지사항</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <!-- S : 공지사항 -->
        <article class="container-view content-layout">
            <div class="table-type1 table-view1">
                <table>
                    <colgroup>
                        <col style="width:4.666666667rem;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit">[공지] 시대인재N 동영상 보강 영상 수강기간 안내</div>
                            <span class="date color-gray">2020-03-02</span>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
									시대인재N 동영상 보강 영상 수강기간 안내 입니다.<br>
									휴강이 한 주 늘어남에 따라 강좌 수강기간 역시 한 주 연기 되었습니다.<br>
									<br>
									● 수강 종료일 : 3/8(일)<br>
									● 금주 업로드 스케쥴 추후 안내 예정<br>
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
                <a href="notice.asp" class="btn btn-black btn-M">목록</a>
            </div>
        </article>
        <!--// E : 공지사항 -->
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

<script type="text/javascript">
$(function() {

});

function IfFileDown(tblAttchFileIdx, fname) {
    
    location.href = "<%=URL_FILE%>/file_download.asp?fname="+fname;
}
</script>