<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 온라인 모의고사 > 해설지/해설강의
' 모듈기능 : 시대인재 단과 > 온라인 모의고사 > 해설지/해설강의
' 파 일 명 : lecList.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">

<!-- S : container -->
<div class="layout-container lecture-container">
	<div class="content-layout">

		<div class="board-layout">
			<h2 class="page-tit mt0 mb30">
					2021 시대인재 <br>
					전국 온라인 모의고사<br>
					해설지 /해설강의
				</small>
			</h2>
			
			<div class="board-layout board-tab">
				<div class="tab-list">
					<a href="javascript:void(0);" class="selected">국어</a>
					<a href="javascript:void(0);">수학</a>
					<a href="javascript:void(0);">영어</a>
					<a href="javascript:void(0);">사회탐구</a>
					<a href="javascript:void(0);">과학탐구</a>
				</div>

				<div class="board-btn txt-right mt30 mb10">
					<a href="javascript:void(0)" class="btn btn-download2">수학(가) 해설지 다운로드</a>
				</div>

				<!-- S : 해설강의 리스트 -->
				<div class="board-table">
					<table>
						<colgroup>
							<col style="width:70%;">
							<col style="width:30%;">
						</colgroup>
						<thead>
							<tr>
								<th class="txt-center">강좌명</th>
								<th class="txt-center">해설강의</th>
							</tr>
						</thead>
						<tbody>
							<% for i = 1 to 10 %>
							<tr>
								<td class="txt-left">[박종민T] ZERO FINAL 수학(가) 해설강의</td>
								<td><a href="javascript:vodi(0);" class="btn btn-lg2 btn-black">강의보기</a></td>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>
				<!--// E : 해설강의 리스트 -->
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