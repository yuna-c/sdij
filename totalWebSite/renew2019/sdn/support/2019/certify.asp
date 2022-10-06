<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 본인인증
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
            <div class="board-layout">

				<div class="board-view support">

					<h2 class="page-tit mt50">시대인재 대학생 서포터즈 지원</h2>
                        <p class="mb10">지원서를 작성하려면 본인 인증이 필요합니다.</p>

                        <div class="form-defult form-defult2">
						<!-- S : 인증 폼 영역 -->
						<form method="post">
                            <table>
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>이름*</th>
                                        <td colspan="4">
                                            <div class="form-input">
                                                <input type="text" >
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>휴대폰 번호*</th>
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
                                        <td>
                                            <input type="button" class="btn btn-black btn-vertical" value="인증번호 받기">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th rowspan="2">인증번호 *</th>
                                        <td colspan="2" class="border-none">
                                            <div class="form-input">
                                                <input type="text" class="input-text" placeholder="인증번호">
                                            </div>
                                        </td>
                                        <td colspan="2" class="border-none"><span>인증번호 입력 남은시간 <br><span>3:00</span></span></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <p class="mt5 txt-guide">*입력한 휴대폰번호로 인증번호가 발송됩니다.</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </form>
							<!--// E : 인증 폼 영역 -->
                        </div>

                        <p class="mt20 mb50">※ 2019년 시대인재N 재수종합에 재원했던 학생만 지원 가능합니다.</p>
						<div class="btn-group txt-center board-btn">
                            <% if true then '대상자 일 경우 페이지 이동' %>
							<a href="apply_step1.asp" class="btn btn-black btn-lg">확인</a>
							<% else '대상자가 아닐 경우 alert %>
							<button class="btn btn-black btn-lg" onclick="fnOpenLayer('dim-support-alert1')">확인</button>
							<% end if %>
						</div>
				</div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
    <!--// E : container -->

    <!-- S : dim-layer -->
    <div class="dim-layer">
		<div class="dim-bg"></div>

		<!-- S : 대상자 아닐때 alert -->
		<div class="dim-content dim-alert dim-tit-alert dim-support-alert1">
			<h4 class="dim-tit">안내</h4>

			<div class="dim-txt">귀하는 2019년 시대인재N 재수종합 재원생이 아니므로 지원할 수 없습니다.<br> 만약 올해 재수종합 재원생임에도 이 메시지를 확인했을 경우 <a href="mailto:question@sdij.com" class="txt-link">question@sdij.com</a>으로 문의해주세요.</div>

			<div class="dim-btn">
                <button class="btn btn-black btn-confirm">확인</button>
            </div>
		</div>
		<!--// E : 대상자 아닐때 alert -->
	</div>
	<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
$(function(){

});

</script>
<!--// E : 페이지별 스크립트 -->
