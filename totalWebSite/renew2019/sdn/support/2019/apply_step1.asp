<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 지원하기 1단계
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
    <div class="layout-container support">
        <div class="board-layout">
			<h2 class="page-tit border-tit mt50 mb20">시대인재 대학생 서포터즈 지원서 작성</h2>

			<div class="step-box mb20">
				<h4 class="tit">STEP1. 인적 사항</h4>
				<ul class="step">
					<li class="on">1</li>
					<li>2</li>
					<li>3</li>
				</ul>
			</div>

			<!-- S : 안내 영역 -->
			<div style="padding:0 30px;">
				<ul class="list-dotted">
					<li>시대인재 서포터즈는 2019년 시대인재N 재원생만 지원 가능합니다.</li>
					<li>시대인재 서포터즈는 2020년 1년간 활동합니다.</li>
					<li>향후 일정은 아래와 같이 진행됩니다.</li>
				</ul>

				<div class="txt-box mt20">
					<img src="http://img.sdij.com/sd2019/pc/sdn/support.png">
				</div>
			</div>
			<!--// E : 안내 영역 -->

            <!--// E : 인적사항 영역 -->
			<h2 class="table-tit border-none">
				인적사항
			</h2>
			<div class="form-defult form-defult2">
				<form action="" method="">
				<!-- S : form : 입력폼 영역 -->
				<table>
					<colgroup>
						<col style="width:168px;">
						<col style="width:auto;">
						<col style="width:auto;">
						<col style="width:auto;">
					</colgroup>
					<tbody>
						<tr>
							<th>이름 *</th>
							<td colspan="3">
                                <div class="form-input">
                                    <input type="text" disabled placeholder="이름" >
                                </div>
                            </td>
						</tr>
						<tr>
							<th>생년월일 *</th>
							<td>
                                <div class="form-select">
                                    <select title="연도" >
                                        <option value="년">년</option>
                                    </select>
                                </div>
							</td>
							<td>
                                <div class="form-select">
                                    <select title="월">
                                        <option value="월">월</option>
                                    </select>
                                </div>
							</td>
							<td>
                                <div class="form-select">
                                    <select title="일">
                                        <option value="일">일</option>
                                    </select>
                                </div>
							</td>
						</tr>
						<tr>
							<th>휴대폰 번호 *</th>
							<td>
                                <div class="form-select">
                                    <select title="휴대폰번호 앞 세자리">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                </div>
							</td>
							<td>
                                <div class="form-input">
                                    <input type="text" title="휴대폰번호 가운데 네자리" maxlength="4" >
                                </div>
                            </td>
							<td>
                                <div class="form-input">
                                    <input type="text" title="휴대폰번호 뒤 네자리" maxlength="4" >
                                </div>
                            </td>
						</tr>
						<tr>
							<th rowspan="3">주소 *</th>
							<td colspan="2">
                                <div class="form-input">
                                    <input type="text" title="우편번호" disabled >
                                </div>
                            </td>
							<td>
                                <a href="#"class="btn btn-black btn-vertical">
                                    우편번호 찾기
                                </a>
                            </td>
						</tr>
						<tr>
							<td colspan="3">
                                <div class="form-input">
                                    <input type="text"  placeholder="주소">
                                </div>
                            </td>
						</tr>
						<tr>
							<td colspan="3">
                                <div class="form-input">
                                    <input type="text"  placeholder="나머지 주소">
                                </div>
                            </td>
						</tr>
						<tr>
							<th>이메일 *</th>
							<td colspan="2">
                                <div class="form-input input-text-mid">
                                    <input type="text" class="input-text">
                                </div>
								@
                                <div class="form-input input-text-mid">
			                        <input type="text" class="input-text">
                                </div>
							</td>
							<td>
                                <div class="form-select">
        							<select>
        								<option value="">선택</option>
        								<option value="1">직접입력</option>
        								<option value="gmail.com">gmail.com</option>
        								<option value="hanmail.net">hanmail.net</option>
        								<option value="hotmail.com">hotmail.com</option>
        								<option value="nate.com">nate.com</option>
        								<option value="naver.com">naver.com</option>
        								<option value="korea.com">korea.com</option>
        							</select>
                                </div>
							</td>
						</tr>
						<tr>
							<th>재원경력*</th>
							<td colspan="3">
                                <div class="form-select">
    								<select>
    									<option value="3개월 미만">3개월 미만</option>
    									<option value="3개월 이상 6개월 미만">3개월 이상 6개월 미만</option>
    									<option value="6개월 이상">6개월 이상</option>
    								</select>
                                </div>
							</td>
						</tr>
					</tbody>
				</table>
				<!--// E : form : 입력폼 영역 -->

				</form>
			</div>

			<div class="step-btn float-area mt50">
				<a href="apply_step2.asp" class="btn btn-step-next next_submit" >다음</a>
			</div>
			<!--// E : 인적사항 영역 -->
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
