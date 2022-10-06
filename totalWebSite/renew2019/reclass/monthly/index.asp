<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 온라인 테스트
' 모듈기능 : 온라인 테스트 메인
' 파 일 명 : index.asp
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
    <section id="container" class="index-container">
        <article class="container-list content-layout">
            <div class="tit-dep1 mt1">온라인 테스트</div>

            <div class="tab-type1 tab-subject">
                <a href="javascript:void(0)" class="selected">국어</a>
                <a href="javascript:void(0)">수학</a>
                <a href="javascript:void(0)">영어</a>
                <a href="javascript:void(0)">사회탐구</a>
                <a href="javascript:void(0)">과학탐구</a>
                <a href="javascript:void(0)">수리 논술</a>
                <a href="javascript:void(0)">한국사</a>
                <a href="javascript:void(0)">인문논술</a>
                <a href="javascript:void(0)">아랍어</a>
                <a href="javascript:void(0)">생명논술</a>
                <a href="javascript:void(0)">물리논술</a>
                <a href="javascript:void(0)">화학논술</a>
            </div>
            
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:15%;">
                        <col style="width:15%;">
                        <col style="width:auto;">
                        <col style="width:15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>과목</th>
                            <th>선생님</th>
                            <th>강좌명</th>
                            <th>응시일</th>
                        </tr>
                    </thead>
                    <tbody> 
                        <% for i = 1 to 10 '최대 리스트 10개 노출 이후 더보기 버튼 클릭 시 노출 %>
                        <tr>
                            <td class="txt-center">국어</td>
                            <td class="txt-center">김은양 선생님</td>
                            <td><a href="detail.asp" class="tit-link">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</a></td>
                            <td class="txt-center">2020-01-01</td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>

            <div class="list-btn mt1">
                <a href="javascript:void(0);" class="btn btn-more">더 보기</a>
            </div>
        </article>
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->