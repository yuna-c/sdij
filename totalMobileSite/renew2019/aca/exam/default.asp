<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 온라인 모의고사 > 메인
' 모듈기능 : 시대인재 단과 > 온라인 모의고사 > 메인
' 파 일 명 : default.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">



<!-- S : container -->
<div class="layout-container">
	<div class="content-layout">

		<div class="board-layout">
			<h2 class="page-tit mt0 border-none">
				2021 시대인재 <br> 
				전국 온라인 모의고사
				<small>
					대치동에서 걸어왔던 길 속 수많은 감사인사와 결과를 맺어준 모의고사,<br>
					이제 전국의 모든 수험생들과 함께 합니다.
				</small>
			</h2>
			
			<!-- S : 응시 안내 -->
			<h4 class="table-tit">2021 시대인재 전국 온라인 모의고사 응시 안내</h4>
			<div class="white-box">
				<h2 class="dep3-tit">응시 일정 안내</h2>
				<ul class="list-number">
					<li>시험 일시 :</li>
					<li>시험 장소</li>
					<li>
						시험 영역, 문항 수 및 시험기간

						<div class="board-table mt10 mb20">
							<table>
								<colgroup>
									<col style="width:auto;">
									<col style="width:auto;">
									<col style="width:auto;">
								</colgroup>
								<thead>
									<tr>
										<th class="txt-center">시험영역</th>
										<th class="txt-center">응시시간</th>
										<th class="txt-center">문항수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>국어</td>
										<td>80분</td>
										<td>45문항</td>
									</tr>
									<tr>
										<td>수학</td>
										<td>100분</td>
										<td>30문항</td>
									</tr>
									<tr>
										<td>영어</td>
										<td>70분</td>
										<td>45문항</td>
									</tr>
									<tr>
										<td>사회 /과학탐구</td>
										<td>60분</td>
										<td>과목별 20문항</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
					<li>문제 및 정답 /해설 공개 : 모든 시험이 종료된 후 온라인 응시하기 페이지 내 문제와 정답이 탑재 됩니다.</li>
					<li>성적 통지 일정 : </li>
				</ul>

				<h2 class="depa3-tit">온라인 모의고사 응시 방법 안내</h2>
				<ul class="list-number">
					<li>모의고사를 원활히 볼 수 있도록 미 설치된 프로그램은 사전에 꼭 설치해 주세요.</li>
					<li>모의고사 응시하기를 클릭해 주세요.</li>
				</ul>
				<ul class="list-dotted ml20">
					<li>
						<span class="strong">Step1. 응시 과목 선택하기</span>
						<ul class="list-dash">
							<li>온라인 모의고사를 응시할 과목을 선택 /저장 후 시작해 주세요.</li>
						</ul>
					</li>
					<li>
						<span class="strong">Step2. 응시 하기</span>
						<ul class="list-dash">
							<li>온라인 모의고사는 지정된 일정에만 응시 가능 합니다.</li>
							<li>응시 시작 후 중지하거나 다른 날 응시하는 것은 불가 합니다.</li>
						</ul>
					</li>
				</ul>

				<div class="info-area">
					모든 시험 일정이<br>
					종료 되었습니다.
				</div>
			</div>
			<!--// E : 응시 안내 -->

			<div class="board-btn txt-center mt30">
				<!-- S : 응시 기간 버튼 -->
				<a href="detail.asp" class="btn btn-md2 btn-black">모의고사 응시하기</a>

				<!-- S : 응시 종료 후 버튼 -->
				<a href="detail.asp" class="btn btn-md2 btn-black">내 답안 확인하기</a>
				<a href="lecList.asp" class="btn btn-md2">해설지 /해설강의 보기</a>
				<a href="#" class="btn btn-lg2">부엉이 포스트 확인하기</a>
			</div>

		</div>
	</div>
</div>
<!--// E : container -->

<script type="text/javascript">
$(function(){

});
</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->