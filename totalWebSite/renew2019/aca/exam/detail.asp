<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 온라인 모의고사 > 과목선택
' 모듈기능 : 시대인재 단과 > 온라인 모의고사 > 과목선택
' 파 일 명 : detail.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">

<!-- S : container -->
<div class="layout-container detail-container">
	<div class="board-layout">
		<h2 class="page-tit">2021 시대인재 전국 온라인 모의고사</h2>

		<h4 class="table-tit">
			STEP1. 응시 과목 확인하기
			<small>
				신청 시 선택한 과목을 확인해 주세요.<br>
				과목별 응시가 가능 하나, 최대한 수능 시간표와 동일하게 응시 하시는 것을 추천 합니다.
			</small>
		</h4>

		<!-- S : 응시 과목 리스트 -->
		<div class="board-table">
			<table>
				<colgroup>
					<col style="width:auto;">
					<col style="width:auto;">
					<col style="width:auto;">
				</colgroup>
				<thead>
					<tr>
						<th class="txt-center">과목</th>
						<th class="txt-center">응시시간</th>
						<th class="txt-center">응시하기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>국어</td>
						<td>80분</td>
						<td><a href="exam.asp" class="btn btn-mid2 btn-black">응시하기</a></td>
					</tr>
					<tr>
						<td>수학</td>
						<td>100분</td>
						<td><a href="exam.asp" class="btn btn-mid2 btn-black">응시하기</a></td>
					</tr>
					<tr>
						<td>영어</td>
						<td>70분</td>
						<td><a href="exam.asp" class="btn btn-mid2 btn-black">응시하기</a></td>
					</tr>
					<tr>
						<td>탐구선택1</td>
						<td rowspan="2">60분</td>
						<td><a href="exam.asp" class="btn btn-mid2 btn-black">응시하기</a></td>
					</tr>
					<tr>
						<td>탐구선택2</td>
						<td><a href="exam.asp" class="btn btn-mid2 btn-black">응시하기</a></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!--// E : 응시 과목 리스트 -->
	</div>
</div>
<!--// E : container -->

<script type="text/javascript">
$(function(){

});
</script>
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->