<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 기본 레이아웃
' 모듈기능 : 라이브 시험 게이트
' 파 일 명 : default.asp
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

<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/reclass/common/css/exam.css?ver=<%=now()%>">

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <h1 class="tit-dep1">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="orm-container pt0">

        <!-- S : 시험 리스트 -->
        <article class="exam-content content-layout">
			<div class="orm-select">
				<label class="select">
					<select id="" name="">
						<option hidden="" disabled="" selected="" value="">강좌 선택</option>
						<option value="">테스트명테스트명테스트명테스트명테스트명테스트명테스트</option>
						<option value="">테스트명테스트명테스트명테스트명테스트명테스트명테스트</option>
						<option value="">테스트명테스트명테스트명테스트명테스트명테스트명테스트</option>
						<option value="">테스트명테스트명테스트명테스트명테스트명테스트명테스트</option>
						<option value="">테스트명테스트명테스트명테스트명테스트명테스트명테스트</option>
						<option value="">테스트명테스트명테스트명테스트명테스트명테스트명테스트</option>
						<option value="">2차2차2차2차2차2차2차2차2차2차2차2차2차2차2차2차2차2차</option>
					</select>
				</label>
			</div>

			<!-- S : 버튼 영역-->
			<div class="btn-area">
				<a href="/totalWebSite/renew2019/reclass/exam/exam.asp" class="btn btn-M btn-black" >시험시작</a>
			</div>
			<!--// E : 버튼 영역-->
        </article>
        <!--// E : 시험 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->