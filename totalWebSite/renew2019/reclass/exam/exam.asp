<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 기본 레이아웃
' 모듈기능 : 라이브 OMR 
' 파 일 명 : exam.asp
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
        <div class="content-layout pl2">
            <a href="javascript:history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="orm-container pt0">

		<!-- S : 시험 리스트 -->
        <article class="orm-content">

			<!-- S : 테스트 명 -->
			<div class="tit-area bd1">
                <h2 class="tit-dep2 overflow">테스트명테스트명테스트명테스트명테스트명테스트명테스트명</h2>
            </div>
			<!--// E : 테스트 명 -->

			<!-- S : 시험 공지 -->
			<ul class="list-number">
				<li>시험 종료 후에 답안 제출 및 수정은 불가합니다.</li>
				<li>현재까지 기입한 답안은 시험 종료 시 자동 제출됩니다.</li>
			</ul>
			<!--// E : 시험 공지 -->

			<!-- S : OMR 리스트 -->
			<div class="exam-omr">
				<div class="table-type1 pb0">
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th colspan="5">정답</th>
							</tr>
						</thead>

						<tbody>
							<% For i = 1 To 30 %>
							<tr>
								<th><% = i %>번</th>
								<% If i = 9 Then '주관식 %>
								<td colspan="5">
									<div class="input-text">
										<input type="text" name="" value=""><!--0~999의 자연수-->
									</div>
								</td>
								<% Else '객관식 %>
								<td>
									<label class="input-radio">
										<input type="radio" name="" value="1">
										<span class="ico ico-num">①</span>
									</label>
								</td>
								<td>
									<label class="input-radio">
										<input type="radio" name="" value="2">
										<span class="ico ico-num">②</span>
									</label>
								</td>
								<td>
									<label class="input-radio">
										<input type="radio" name="" value="3">
										<span class="ico ico-num">③</span>
									</label>
								</td>
								<td>
									<label class="input-radio">
										<input type="radio" name="" value="4">
										<span class="ico ico-num">④</span>
									</label>
								</td>
								<td>
									<label class="input-radio">
										<input type="radio" name="" value="5">
										<span class="ico ico-num">⑤</span>
									</label>
								</td>
								<% end if %>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : OMR 리스트 -->

			<!-- S : 버튼 영역-->
			<div class="btn-area">
				<a href="javascript:void(0);" class="btn btn-black btn-close" onclick="clickBtn('답안을 제출 합니다.\n제출된 답안은 수정할 수 없습니다.')" >답안제출</a><!--onclick="javascript:btn('답안을 제출 합니다.\n제출된 답안은 수정할 수 없습니다.')"-->
			</div>
			<!--// E : 버튼 영역-->

		</article>
        <!--// E : 시험 리스트 -->
    </section>
    <!--// E : container -->

	<script>
	function clickBtn(sample){
		if(confirm('곧 시험 종료됩니다.\n답안 제출을 준비해 주세요.') === true) {
			//window.close(); 
			confirm(sample);
			window.location.replace('finish.asp'); 
		} else{
			//no
		}
	}
	/*
	function beforeTime(){
		confirm('곧 시험 종료됩니다.\n답안 제출을 준비해 주세요.')
	}
	setTimeout(beforeTime, 1000);

	function btnClose() { 
		if (confirm('답안을 제출 합니다.\n제출된 답안은 수정할 수 없습니다.')) {
			//window.close(); 
			window.location.replace('finish.asp'); 
		} else {
			//no
		}
	}
	*/
    </script>

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->