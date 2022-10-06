<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 online 회원가입 step1
' 모듈기능 : 회원가입 step1
' 파 일 명 : join.asp
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
			<h2 class="page-tit">회원가입</h2>

			<div class="form-layout">
				<!-- S : 회원가입 선택 -->
				<div class="board-tab">
					<div class="tab-list">
						<a href="javascript:void(0);" class="selected">간편회원가입</a>
						<a href="javascript:void(0);">통합회원가입</a>
					</div>
			
					<!-- S : 간편회원가입 선택 시 -->
					<div class="tab-content tab-on">
						<div class="info-box">
							<p class="tit">간편회원가입</p>
							<p class="txt">
								간단한 정보 입력으로 시대인재가 제공하는 서비스를 이용할 수 있습니다.
							</p>
							<ul class="list-guide mt30">
								<li>만 14세 미만 아동은 부모님(법정대리인)의 동의가 필요합니다.</li>
								<li>부엉이포스트를 이용하려면, 통합회원으로 가입해 주세요.</li>
							</ul>
						</div>

						<div class="board-btn txt-center">
							<a href="javascript:void(0);" class="btn btn-lg">만 14세 미만</a>
							<a href="javascript:void(0);" class="btn btn-lg">만 14세 이상</a>
						</div>
					</div>
					<!--// E : 간편회원가입 선택 시 -->

					<!-- S : 통합회원가입 선택 시 -->
					<div class="tab-content">
						<div class="info-box">
							<p class="tit">통합회원가입</p>
							<p class="txt">
								통합회원 가입을 통해 시대인재의 모든 서비스를 이용하실 수 있습니다.<br>
								<span class="txt-guide">* 만 14세 미만 아동은 부모님(법적대리인)의 동의가 필요합니다.</span>
							</p>
						</div>

						<div class="board-btn mt50 txt-center">
							<a href="javascript:void(0);" class="btn btn-lg">만 14세 미만</a>
							<a href="javascript:void(0);" class="btn btn-lg">만 14세 이상</a>
							<a href="javascript:void(0);" class="btn btn-lg">학부모</a>
						</div>
					</div>
					<!--// E : 통합회원가입 선택 시 -->
				</div>
				<!--// E : 회원가입 선택 -->
			</div>
		</div>
        <!--// E : 컨텐츠 영역 -->

	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){

});

// 간편회원 가입 시
var IfMemJoin = function(fnMemType) {
    $("#fnMemType").val(fnMemType);

    document.loginForm.action = "/_member/join_step1.asp";
    document.loginForm.submit();
};

// 통합회원 가입 시
var IfMemRegist = function(fnMemType) {
    $("#fnMemType").val(fnMemType);

    document.loginForm.action = "/member/sd2019/regist_step1.asp";
    document.loginForm.submit();
};

</script>