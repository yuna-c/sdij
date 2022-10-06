<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 online 로그인
' 모듈기능 : 로그인
' 파 일 명 : login.asp
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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
		<div class="layout-container">
			<h2 class="page-tit mt90">로그인</h2>

			<div class="form-layout">
				<!-- S : 로그인 영역 -->
				<div class="form-small">
					<form method="post" id="loginForm" name="loginForm">
						<input type="hidden" id="fnMemType" name="fnMemType" value="">
						<!-- 비회원 주문 관련 Set S -->
						<input type="hidden" name="gm_gst_cd" value="">
						<input type="hidden" name="gm_ord_no" value="">
						<input type="hidden" name="gm_ord_pw" value="">
						<!-- 비회원 주문 관련 Set E -->
					<table>
						<colgroup>
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
						</colgroup>
						<tbody>
							<tr>
								<td colspan="3">
									<input type="text" id="mem_id" name="mem_id" class="input-text input-id" placeholder="아이디">
									<input type="password" id="mem_pw" name="mem_pw" class="input-text" placeholder="비밀번호">
								</td>
							</tr>
							<tr class="btn-line">
								<td colspan="3"><input type="button" onclick="IfLogin();" value="로그인" class="btn btn-black btn-strong"></td>
							</tr>
							<tr class="info-txt">
								<td>
                                    <a href="javascript:void(0);">아이디/비밀번호 찾기</a>
                                </td>
                                <td>&nbsp;</td>
                                <td class="txt-right">
                                    <a href="join_gete.asp">회원가입</a>
                                </td>
							</tr>
							<% if false then %>
							<tr>
								<th class="pt40" colspan="3"><strong>해당하는 유형을 정확하게 선택 후 회원가입하세요.</strong></th>
							</tr>
							<tr>
								<td><a href="javascript: void(0);" onclick="IfMemRegist('100001');" class="btn">만 14세 미만</a></td>
								<td><a href="javascript: void(0);" onclick="IfMemRegist('100002');" class="btn">만 14세 이상</a></td>
								<td><a href="javascript: void(0);" onclick="IfMemRegist('100003');" class="btn">학부모</a></td>
							</tr>
							<% end if %>
						</tbody>
					</table>
					</form>
				</div>
				<!--// E : 로그인 영역 -->
			</div>
		</div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->



<script type="text/javascript">

$(function(){

});

</script>
<script type="text/javascript">
var IfMemRegist = function(fnMemType) {
    $("#fnMemType").val(fnMemType);

    document.loginForm.action = "/member/sd2019/regist_step1.asp";
    document.loginForm.submit();
};

var IfFindAct = function(){
    location.href = "#";
};

var IfLogin = function() {
    var mem_id = $("input[name='mem_id']").val();
    var mem_pw = $("input[name='mem_pw']").val();
    var params = "mem_id=" + mem_id;
        params += "&mem_pw=" + mem_pw;

    if (mem_id == "") {
		fnAlertMsg('로그인 정보가 유효하지 않습니다.');
        //alert("로그인 정보가 유효하지 않습니다.");
        return;
    }

    if (mem_pw == "") {
		fnAlertMsg('로그인 정보가 유효하지 않습니다.');
        //alert("로그인 정보가 유효하지 않습니다.");
        return;
    }

    document.loginForm.target = "hiddenIframe";
    document.loginForm.action = "<%=VAR_HTTP%>/member/sd2019/login_proc.asp";
    document.loginForm.submit();
};

// 비회원 주문 조회
var IfGstLogin = function() {
    var popUrl = "/member/login_gst.asp";

    sdijPop1(popUrl, "gstLogin", 610, 320);
};

var IfGstLoginProc = function() {
    document.loginForm.action = "/mypage/order/order_check.asp";
    document.loginForm.submit();
};

$(function() {
    $(".clsLogin").keydown(function(key) {
        if (key.keyCode == 13) {
            IfLogin();
        }
    });
});
</script>
