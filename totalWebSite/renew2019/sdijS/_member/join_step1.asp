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
'If COOK_ID <> "" Then
    'Response.redirect "/default.asp"
'End If


'------------------------------
' page navi code
'------------------------------
    'pg_menu_code = ""	   ' DB 등록 메뉴 코드 기재
    'SET_GOURL URL_SELF     ' 이동할 URL 주소 쿠키 설정 Reponse.cookies("go_url")
    'GO_LOGIN()            ' 로그인 인증 필용 시 사용, 불필요시 주석 처리






'------------------------------
' VARS
'------------------------------
'Dim LoginRtnUrl  ' 로그인 후 리턴 할 URL
'Dim VAR_HTTP

'LoginRtnUrl = fncRequest("LoginRtnUrl")

'If LoginRtnUrl = "" Then fncRequestForm("LoginRtnUrl")

'If LoginRtnUrl = "" Or IsNull(LoginRtnUrl) Then
    'go_url = Request.Cookies("go_url")
'Else
    'go_url = LoginRtnUrl
'End If

'If go_url = "" Or IsNull(go_url) Or IsEmpty(go_url) Then
    'go_url = "/"
'End If

'If fncRequestVariables("HTTP_HOST") = "www.sdij.com" Then
    'VAR_HTTP = "https://" & fncRequestVariables("HTTP_HOST")
'ElseIf fncRequestVariables("HTTP_HOST") = "www.sdijbooks.com" Then ' sdijbooks.com 에서 가상디렉토리 설정으로 같이 사용함
    'VAR_HTTP = "https://" & fncRequestVariables("HTTP_HOST") & ":444"
'Else
    'VAR_HTTP = "http://" & fncRequestVariables("HTTP_HOST")
'End If





'------------------------------
' QUERY
'------------------------------
    ' 해당 페이지 쿼리문 정의
	'arrParams = Array( _
	'	DbCon.makeParam("@APP_SEQ",            adInteger,  adParamInput, 0,   extra_app_seq), _
	'	DbCon.makeParam("@CHR_CD",             adInteger,  adParamInput, 0,   extra_chr_cd), _
	'	DbCon.makeParam("@LEC_CD",             adInteger,  adParamInput, 0,   extra_lec_cd), _
	'	DbCon.makeParam("@STD_DVC",            adChar,     adParamInput, 6,   extra_std_dvc), _
	'	DbCon.makeParam("@USER_ID",            adVarChar,  adParamInput, 20,  user_id), _
	'	DbCon.makeParam("@PLAYER_ID",          adVarChar,  adParamInput, 50,  player_id), _
	'	DbCon.makeParam("@CONTENT_DURATION",   adSmallInt, adParamInput, 0,   content_duration), _
	'	DbCon.makeParam("@CURRENT_POSITION",   adSmallInt, adParamInput, 0,   current_position), _
	'	DbCon.makeParam("@PLAYED_TIME",        adSmallInt, adParamInput, 0,   played_time), _
	'	DbCon.makeParam("@STRONG_PLAYED_TIME", adSmallInt, adParamInput, 0,   strong_played_time), _
	'	DbCon.makeParam("@TRACKER_TIME",       adSmallInt, adParamInput, 0,   tracker_time), _
	'	DbCon.makeParam("@TRACKER_DATA",       adVarChar,  adParamInput, 20,  tracker_data), _
	'	DbCon.makeParam("@CONTENT_URL",        adVarChar,  adParamInput, 200, content_url), _
	'	DbCon.makeParam("@EXTRA_DATA",         adVarChar,  adParamInput, 100, extra_data), _
	'	DbCon.makeParam("@BEGIN_LOCALTIME",    adDate,     adParamInput, 7,   begin_localtime), _
	'	DbCon.makeParam("@END_LOCALTIME",      adDate,     adParamInput, 7,   end_localtime), _
	'	DbCon.makeParam("@EXCEPTION",          adChar,     adParamInput, 1,   exception) _
	')

	'Call DbCon.ExecSP("P_PLAYER_LOG", arrParams, DBSDIJLMS)



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
			<h2 class="page-tit mt90">회원가입</h2>

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
								간단한 정보 입력으로 시대인재 서비스를 이용하실 수 있습니다.<br>
								<span class="txt-guide">* 만 14세 미만 아동은 부모님(법적대리인)의 동의가 필요합니다.</span>
							</p>
						</div>

						<div class="board-btn mt50 txt-center">
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

</script>