<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > Lab2 레이아웃
' 모듈기능 : Lnb 페이지 레이아웃(수정 금지)
' 파 일 명 : lnbType2.asp
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
<link rel="stylesheet" type="text/css" href="/guide/guide.css?ver=<%=Now()%>"><!-- 개별 CSS가 있을 경우 연결 -->
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="guide-container">
       
		<div class="lnb-layout">
		<!-- S : lnb -->
		<!-- 폴더 내부에 incLnb.asp를 복사 후 사용, 가안 실 사용시에는 숫자 제거 후 사용 -->
		<!--#include file="incLnb2.asp"-->
		<!--// E : lnb -->

			 <div class="content-layout">
				<h2 class="tit-dep1">
					<span class="tit">대타이틀</span>
				</h2>
				 컨텐츠 내용
			</div>
        </div>  
        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->