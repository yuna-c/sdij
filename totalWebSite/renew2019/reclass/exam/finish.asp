<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 기본 레이아웃
' 모듈기능 : 라이브 점수 확인
' 파 일 명 : finish.asp
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
        <!-- S : 시험 확인 리스트 -->
		<article class="orm-content">

			<!-- S : 테스트 명 -->
			<div class="tit-area bd1">
				<h2 class="tit-dep2 overflow">테스트명테스트명테스트명테스트명테스트명테스트명테스트명</h2>
			</div>
			<!--// E : 테스트 명 -->

			<!-- S : 시험 공지 -->
			<ul class="list-dash">
				<li>수고하셨습니다.수고하셨습니다.수고하셨습니다.수고하셨습니다.</li>
				<li>수고하셨습니다.수고하셨습니다.수고하셨습니다.수고하셨습니다.</li>
			</ul>
			<!--// E : 시험 공지 -->


			<!-- S : 채점 리스트 -->
			<div class="exam-omr">
				<div class="table-type1 pb0">
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>정답</th>
								<th>제출 답안</th>
								<th>정오</th>
								<th>배점</th>
							</tr>
						</thead>
						<tbody>
							<% For i = 1 To 30 %>
							<tr>
								<th><% = i %>번</th>
								<% If i = 9 Then '주관식 %>
								<td>200</td>
								<td>100</td><!--0~999의 자연수-->
								<td>O</td>
								<td>2</td>
								<% Else '객관식 %>
								<td>①</td><!--①②③④⑤-->
								<td>①</td>
								<td>O</td><!-- O,X -->
								<td>1</td>
								<% end if %>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : 채점 리스트 -->

			<!-- S : 점수 리스트 -->
			<div class="score-area">
				<ul>
					<li>점수</li>
					<li>00/100</li>
				</ul>
				<ul>
					<li>맞은 개수</li>
					<li>00/00</li>
				</ul>
			</div>
			<!--// E : 점수 리스트 -->
			
			<!-- S : 버튼 영역-->
			<div class="btn-area">
				<a href="javascript:window.close();" class="btn btn-black btn-close">닫기</a>
			</div>
			<!--// E : 버튼 영역 -->
		</article>
        <!--// E : 시험 확인 리스트 -->
    </section>
    <!--// E : container -->
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->