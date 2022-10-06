<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 지원하기 2단계
' 모듈기능 :
' 파 일 명 :
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

<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->
<!-- S : 페이지별 css -->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/support.css?ver=<%=now()%>">
<!--// E : 페이지별 css -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container ">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container support">
            <div class="board-layout">
				<!-- S : 희망업무 선택 영역 -->
				<h2 class="page-tit border-tit mt50 mb20">시대인재 대학생 서포터즈 지원서 작성</h2>

				<div class="step-box">
					<h4 class="tit">STEP2. 희망 업무</h4>
					<ul class="step">
						<li class="prev">1</li>
						<li class="on">2</li>
						<li>3</li>
					</ul>
				</div>

				<div class="board-table">
					<table>
						<colgroup>
							<col style="width:20%;">
							<col style="width:80%;">
						</colgroup>
						<tbody>
							<tr>
								<th>컨텐츠 분야</th>
								<td>시대인재 서바이벌, Shortcut, ATG, 리바이벌 등 다양한 컨텐츠의 구성 및 검토와, <br>TA(Teaching Assistant)에 관한 전반적인 업무를 수행합니다. </td>
							</tr>
							<tr>
								<th>마케팅 분야</th>
								<td>Youtube와 각종 매체를 활용한 시대인재의 대외 홍보 방법을 직접 기획하고 실행합니다.</td>
							</tr>
							<tr>
								<th>브랜딩 분야</th>
								<td>시대인재가 가진 다양한 컨텐츠와 프로그램의 브랜드를 구성하고 가치를 만들어나갑니다.</td>
							</tr>
						</tbody>
					</table>
				</div>

				<ul class="list-dotted mt30">
					<li>서포터즈로 함께하면 아래와 같이 다양한 분야의 일을 할 수 있습니다.</li>
					<li>위의 3가지 분야 중 1지망, 2지망, 3지망을 선택해 주세요.</li>
					<li>지망 선택은 참고 사항으로만 활용됩니다.</li>
				</ul>

				<div class="board-table mt50">
					<table>
						<colgroup>
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
						</colgroup>
						<tbody>
							<tr>
								<th>1지망</th>
								<th>2지망</th>
								<th>3지망</th>
							</tr>
							<tr>
								<td>
									<div class="form-select">
										<select>
											<option value="컨텐츠 분야">컨텐츠 분야</option>
											<option value="마케팅 분야">마케팅 분야</option>
											<option value="브랜딩 분야">브랜딩 분야</option>
										</select>
									</div>
								</td>
								<td>
									<div class="form-select">
										<select>
											<option value="컨텐츠 분야">컨텐츠 분야</option>
											<option value="마케팅 분야">마케팅 분야</option>
											<option value="브랜딩 분야">브랜딩 분야</option>
										</select>
									</div>
								</td>
								<td>
									<div class="form-select">
										<select>
											<option value="컨텐츠 분야">컨텐츠 분야</option>
											<option value="마케팅 분야">마케팅 분야</option>
											<option value="브랜딩 분야">브랜딩 분야</option>
										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--// E : 희망업무 선택 영역 -->

				<h2 class="table-tit">
					질문 사항
				</h2>

                <p class="mt30">[필수] 서바이벌 모의고사는 학생에게 어떤 컨텐츠였는지에 대해 자유롭게 서술해주세요 (500자 이내)</p>

                <textarea class="textarea mt10"></textarea>

                <p class="mt30">[선택] 본인이 서포터즈로 할 수 있는 일. 또 하고 싶은 일이 무엇인지 자유롭게 서술해주세요. (500자이내)</p>
                <p class="sub-txt">* 위의 3가지 분야에 국한되지 않고, 본인의 특기/소질/관심분야 등과 연관지어 자유롭게 작성해주세요.</p>

                <textarea class="textarea mt10"></textarea>

				<div class="step-btn float-area mt50">
					<a href="apply_step3.asp" class="btn btn-step-next next_submit" >다음</a>
				</div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
$(function(){

});

</script>
<!--// E : 페이지별 스크립트 -->
