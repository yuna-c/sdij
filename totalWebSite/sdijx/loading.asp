<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 로딩페이지
' 모듈기능 : 시대인재 Digital > 로딩페이지
' 파 일 명 : loading.asp
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

<!-- S : 페이지별 script -->
<script>
    $(function(){
        // 로딩 오픈
        modalDialog.loading();
 
        // 로딩 닫을 때
        setTimeout('modalDialog.close()', 3000);
    });
 </script>
 <!--// E : 페이지별 script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->