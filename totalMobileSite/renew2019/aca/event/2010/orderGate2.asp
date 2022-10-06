<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 2020 시대인재 추석특강 > 현장수업
' 모듈기능 : 시대인재 단과 > 2020 시대인재 추석특강 > 현장수업
' 파 일 명 : default.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default2.css?ver=<%=now()%>">


<!-- S : container -->
<div class="layout-container ordergate-container">
	<div class="content-layout">
		<input type="hidden" name="memId" value="<%=COOK_ID%>">
		<h2 class="page-tit">
			2021 시대인재 <br>
			전국 모의고사
		</h2>

		<div class="ordergate-content">
			<h4 class="table-tit mt0">공통 과목</h4>
			<div class="img-area mt10">
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont4_img1.png" alt="공통 과목 국어 /영어 / 한국사, 개별 선택 수학(가) + 과탐 2과목 or 수학(나) + 사탐 2과목, 47000원"></p>
			</div>

			<h4 class="table-tit mt50">개별 선택</h4>
			<div class="img-area bg-area">
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont4_img2.png" alt="공통 과목 국어 /영어 / 한국사, 개별 선택 수학(가) + 과탐 2과목 or 수학(나) + 사탐 2과목, 47000원"></p>
			</div>
			<p class="tit">or</p>
			<div class="img-area bg-area">
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont4_img3.png" alt="공통 과목 국어 /영어 / 한국사, 개별 선택 수학(가) + 과탐 2과목 or 수학(나) + 사탐 2과목, 47000원"></p>
			</div>

			<div class="pirce-area mt30">
				<p class="table-tit"></p>
				<p class="tit txt-right">47,000원</p>
			</div>
		</div>

		<div class="board-btn mt30">
			<a href="orderStep1_1.asp" class="btn btn-black">시대인재 전국 모의고사 신청하기</a>
			<!-- <a href="javascript:IfAppSend()" class="btn btn-black">시대인재 전국 모의고사 구매하기</a> -->
		</div>
	</div>

	<!-- S : 유의사항 -->
	<div class="event-info">
		<div class="content-layout board-layout">
			<h4 class="table-tit mt0">유의사항</h4>

			<div class="board-table">
				<table>
					<colgroup>
						<col style="width:30%;">
						<col style="width:auto;">
					</colgroup>
					<tbody>
						<tr>
							<th>제공 과목 및 자료</th>
							<td>
								문제지+연습용OMR (택배배송)<br>
								정답 및 해설지 PDF (시험 종료 후 다운로드)
							</td>
						</tr>
						<tr>
							<th>일정</th>
							<td>
								시험일시 : 00/00(0) 오전 08:40 - 오후 4시 32분<br>
								OMR 입력 : 00/00(0) 00시 까지<br>
								배송 : 00/00(0) 부터 순차 배송
							</td>
						</tr>
						<tr>
							<th>해설지 및 등급컷 확인</th>

							<td>해설지 다운로드 및 등급컷 확인은 OMR카드 입력 시간 종료 이후 가능하며, OMR을 입력한 경우에만 확인 가능 합니다.</td>
						</tr>
						<tr>
							<th>취소 및 환불</th>

							<td>
								배송 전 취소 시 : 즉시 환불 처리 가능<br>
								배송 완료 : 상품 수거 후, 담당자가 상품 확인 후 환불 처리 진행<br>

								<ul class="list-dash mt10">
									<li>사용 및 개봉 시 환불 불가, 단 파본은 교환 가능</li>
									<li>무료로 배송 받은 후 고객 변심으로 인한 취소 시 왕복 배송비 6,000원은 고객 부담이며 반송 후 미사용 상태 확인 시에 최종 결제 금액에서 왕복 배송비 차감 후 환불 완료 됩니다.</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!--// E : 유의사항 -->
</div>
<!--// E : container -->


<script type="text/javascript">
$(function(){

});
</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->