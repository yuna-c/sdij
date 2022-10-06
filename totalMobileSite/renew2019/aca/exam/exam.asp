<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 온라인 모의고사 > 응시하기
' 모듈기능 : 시대인재 단과 > 온라인 모의고사 > 응시하기
' 파 일 명 : exam.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/exam.css?ver=<%=now()%>">

<!-- S : container -->
<div class="layout-container exam-container">
	<!-- S : 모의고사 응시하기 -->
	<div class="container-exam">
		<div class="exam-tit">
			<h4 class="table-tit border-none">
				STEP 2. 시험 응시하기
				<small>
					<strong>1교시 국어 (80분)</strong><br>
					다음 과목으로 넘어간 경우 OMR을 수정할 수 없습니다.
				</small>
			</h4>

			<div class="exam-timer">
				남은시간&nbsp;&nbsp;
				<span>00</span>:<span>00</span>
			</div>
		</div>

		<div class="board-tab exam-content">
			<div class="tab-list">
				<a href="javascript:void(0);" class="selected">시험지</a>
				<a href="javascript:void(0);">OMR입력</a>
			</div>
			
			<!-- S : 시험지 PDF  -->
			<div class="tab-content exam-view tab-on">
				<% if true then %>
				<div class="iframe-area">
					<iframe name="pdfviewer" id="pdfviewer" src="//dev.sdij.com/aca/exam/web/viewer.html?file=//dev.sdij.com/aca/exam/test.pdf" style="width:100%; height:100%;"></iframe>
					<!-- <iframe name="pdfviewer" id="pdfviewer" src="/monthly/web/viewer.html?file=//file.reclass.study/fileup/monthly/test.pdf" style="width:100%; height:100%;"></iframe>-->
				</div>
				<% else %>
				<div class="info-area">
					안내 메시지
				</div>
				<% end if %>
			</div>
			<!--// E : 시험지 PDF -->
			
			<!-- S : OMR 카드 -->
			<div class="tab-content exam-omr">
				<div class="board-table">
					<table>
						<thead>
							<tr>
								<th>문항<br>번호</th>
								<th>1</th>
								<th>2</th>
								<th>3</th>
								<th>4</th>
								<th>5</th>
							</tr>
						</thead>

						<tbody>
							<% for i = 1 to 30 %>
							<tr>
								<th><% = i %>번</th>
								<% if i = 30 then '주관식 %>
								<td colspan="5">
									<div class="form-input">
										<input type="text" name="">
									</div>
								</td>
								<% else '객관식 %>
								<td>
									<label class="form-radio">
										<input type="radio" name="" value="">
										<span class="ico ico-radio"></span>
									</label>
								</td>
								<td>
									<label class="form-radio">
										<input type="radio" name="" value="">
										<span class="ico ico-radio"></span>
									</label>
								</td>
								<td>
									<label class="form-radio">
										<input type="radio" name="" value="">
										<span class="ico ico-radio"></span>
									</label>
								</td>
								<td>
									<label class="form-radio">
										<input type="radio" name="" value="">
										<span class="ico ico-radio"></span>
									</label>
								</td>
								<td>
									<label class="form-radio">
										<input type="radio" name="" value="">
										<span class="ico ico-radio"></span>
									</label>
								</td>
								<% end if %>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : OMR 카드 -->

		</div>


		<div class="board-btn">
			<a href="javascript:void(0);" class="btn btn-strong">OMR 임시저장</a>
			<a href="finish.asp" class="btn btn-strong btn-black">OMR 저장하기</a>
		</div> 
	</div>
	<!--// E : 모의고사 응시하기 -->
</div>
<!--// E : container -->

<script type="text/javascript">
	$(function(){
	// tab click
	$('.tab-type1 > a').on('click', function(){
		$(this).addClass('selected').siblings().removeClass('selected');
	});
});
</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->