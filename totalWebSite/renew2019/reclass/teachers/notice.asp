<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 선생님 > 공지사항 리스트
' 모듈기능 : 보충강좌 서비스 > 선생님 > 공지사항 리스트
' 파 일 명 : notice.asp
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
    <!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incHeader.asp"-->
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="teachers-container">
        <!-- S : 공지사항 -->
        <article class="container-list content-layout">
            <div class="tit-dep1">선생님 공지사항</div>

            <div class="table-type1">
                <table>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>강사명</th>
                            <th class="tit-area">제목</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 10 '최대 10개 게시글 노출 이후 더보기 버튼 클릭 시 노출 %>
                        <tr>
                            <td class="txt-center"><%= i %></td>
                            <td class="txt-center">홍길동 선생님</td>
                            <td class="tit-area"><a href="notice_detail.asp">
                                <span class="color-gray">(사회적 거리두기 기간 영상보강) 김은양T</span>
                                <span class="tit">게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시 게시글 제목 게시글 제목 게시 게시글 제목 게시글 제목 게시 게시글 제목 게시글 제목 게시 게시글 제목 게시글 제목 게시 게시글 제목 게시글 제목 게시 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목</span>
                            </a></td>
                            <td class="color-gray txt-center">2020-08-22</td>
                        </tr>
                        <% Next %>
                        <tr>
                            <td colspan="4" class="no-data">공지사항이 없습니다.</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="list-btn mt1">
                <a href="javascript:void(0)" class="btn btn-more">더 보기</a>
            </div>
        </article>
        <!--// E : 공지사항 -->
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

