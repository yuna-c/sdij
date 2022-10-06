<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 기본 레이아웃
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/.css?ver=<%=Now()%>"><!-- 개별 CSS가 있을 경우 연결 -->
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="index-container"><!-- 기능명-container, padding-bottom 값이 없는 페이지 full-container, 전체 영역 가운데로 정렬 flex-container -->
        <!-- S : 컨텐츠 -->
        <div class="wide-layout">
            페이지 디자인에 따라 2가지 width layout<br>
            본문 내용
        </div>

        <div class="content-layout">
            페이지 디자인에 따라 2가지 width layout<br>
            본문 내용
        </div>
        <!--// E : 컨텐츠 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->