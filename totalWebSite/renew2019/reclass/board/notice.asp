<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 게시판 > 공지사항 리스트
' 모듈기능 : 보충강좌 서비스 > 게시판 > 공지사항 리스트
' 파 일 명 : notice.asp
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
    <!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incHeader.asp"-->
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">

        <!-- S : 공지사항 -->
        <article class="container-list content-layout">
            <div class="tit-dep1">공지사항</div>

            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:2.666666667rem;">
                        <col style="width:auto;">
                        <col style="width:4.666666667rem;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>제목</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                   
						<tr>
						    <td class="txt-center">1</td>
						    <td><a href="/totalWebSite/renew2019/reclass/notice_detail.asp" class="tit-link">[공지] 시대인재N 동영상 보강 영상 플레이어 안내</a></td>
						    <td class="color-gray txt-center">2020-08-22</td>
						</tr>
						<tr>
						    <td class="txt-center">2</td>
						    <td><a href="/totalWebSite/renew2019/reclass/notice_detail.asp" class="tit-link">[공지] 시대인재N 동영상 보강 영상 플레이어 안내</a></td>
						    <td class="color-gray txt-center">2020-08-22</td>
						</tr>
						 
						<tr>
						    <td colspan="3" class="no-data">공지사항이 없습니다.</td>
						</tr>
                       
                    </tbody>
                </table>
            </div>

                <div id="divViewMore" class="list-btn mt1">
                    <a href="javascript:void(0);" class="btn btn-more">더 보기</a>
                </div>
        </article>
        <!--// E : 공지사항 -->
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

