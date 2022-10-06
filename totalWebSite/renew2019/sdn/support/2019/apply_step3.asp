<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 지원하기 3단계
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
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="board-layout support">
				<h2 class="page-tit border-tit mt50 mb20">시대인재 대학생 서포터즈 지원서 작성</h2>

				<div class="step-box mb20">
					<h4 class="tit">STEP3. 면접 일정 선택</h4>
					<ul class="step">
						<li class="prev">1</li>
						<li class="prev">2</li>
						<li class="on">3</li>
					</ul>
				</div>

				<!-- S : view 영역 -->
				<div class="board-view">
                    <ul class="list-dotted">
                        <li>면접을 진행할 수 있는 날짜를 <span>모두</span> 선택해주세요.</li>
					</ul>

					<div class="list-tit">
						<dl>
							<dt class="mt20">가능여부/날짜</dt>
							<dd>
								<label class="form-checkbox">
									<input type="checkbox">
									<span class="ico ico-checkbox"></span>
									<span>11월 17일 (일)</span>
								</label>
							</dd>
							<dd>
								<label class="form-checkbox">
									<input type="checkbox">
									<span class="ico ico-checkbox"></span>
									<span>11월 21일 (목)</span>
								</label>
							</dd>
							<dd>
								<label class="form-checkbox">
									<input type="checkbox">
									<span class="ico ico-checkbox"></span>
									<span>11월 24일 (월)</span>
								</label>
							</dd>
							<dd>
								<label class="form-checkbox">
									<input type="checkbox">
									<span class="ico ico-checkbox"></span>
									<span>11월 26일 (화)</span>
								</label>
							</dd>
						</dl>
					</div>

					<!-- <div class="day-table mt30">
	                    <table >
	                        <colgroup>
	                            <col style="width:auto;">
	                            <col style="width:auto;">
	                        </colgroup>
	                        <tbody>
	                            <tr>
	                                <th colspan="2">가능여부/날짜</th>
	                            </tr>
	                            <tr>
	                                <td colspan="2">
										<label class="form-checkbox ">
											<input type="checkbox">
											<span class="ico ico-checkbox"></span>
											<span>11월 17일 (일)</span>
										</label>
									</td>
	                            </tr>
								<tr>
	                                <td colspan="2">
										<label class="form-checkbox ">
											<input type="checkbox">
											<span class="ico ico-checkbox"></span>
											<span>11월 21일 (목)</span>
										</label>
									</td>
	                            </tr>
								<tr>
	                                <td colspan="2">
										<label class="form-checkbox ">
											<input type="checkbox">
											<span class="ico ico-checkbox"></span>
											<span>11월 24일 (월)</span>
										</label>
									</td>
	                            </tr>
								<tr>
	                                <td colspan="2">
										<label class="form-checkbox ">
											<input type="checkbox">
											<span class="ico ico-checkbox"></span>
											<span>11월 26일 (화)</span>
										</label>
									</td>
	                            </tr>
	                        </tbody>
	                    </table>
					</div> -->

					<h2 class="table-tit">
						개인정보 수집 및 활용 동의(필수)
					</h2>

					<div class="agree-box mt30">
						수집목적: 입사 지원 및 선발전형, 이력관리, 기타  채용 진행사항 안내<br>
						수집항목: 본인사진, 성명, 생년월일, 핸드폰번호, 최종학력, 전공, 이메일주소, 주소, 경력사항, 자기소개<br>
						보유기간: 제출 시점부터 3년간 보유<br>
						개인정보 수집 및 이용에 동의하지 않을 권리가 있습니다. 다만, 동의를 거부할 경우 입사 지원을 하실 수 없습니다.
					</div>

					<div class="mt10">
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							동의합니다.
						</label>&nbsp;

						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							동의하지 않습니다.
						</label>
					</div>
					<div class="step-btn float-area mt50">
						<a href="apply_ok.asp" class="btn btn-step-next next_submit">다음</a>
					</div>
				</div>
				<!--// E : view 영역 -->
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
