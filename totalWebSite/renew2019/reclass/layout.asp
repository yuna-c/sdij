<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 기본 레이아웃
' 모듈기능 : 기본 레이아웃(수정 금지)
' 파 일 명 : layout.asp
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
            <h1 class="tit-dep1">보충 강좌</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <!-- S : 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="table-type2 mt1">
                <table>
                    <colgroup>
                        <col style="width:2.666666667rem;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:2.666666667rem;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>과목</th>
                            <th>선생님</th>
                            <th>강좌명</th>
                            <th>수강기간</th>
                            <th>수강하기</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>수학(가)</td>
                            <td>박종민 선생님</td>
                            <td>리바이벌 미적분2</td>
                            <td>7일</td>
                            <td><a href="javascript:void(0);" class="btn btn-black">수강 하기</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </article>
        <!--// E : 강좌 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->