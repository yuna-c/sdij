<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 > 설명회
' 모듈기능 : 설명회 > 문자수신 DB 등록
' 파 일 명 : brief_sms_pop.asp
' 작성일자 : 2019/01/04
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------
    pg_menu_code = ""	   ' DB 등록 메뉴 코드 기재
    SET_GOURL URL_SELF     ' 이동할 URL 주소 쿠키 설정 Reponse.cookies("go_url")
    'GO_LOGIN()            ' 로그인 인증 필용 시 사용, 불필요시 주석 처리






'------------------------------
' VARS
'------------------------------






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

<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->

<body style="min-width:auto; overflow: ;">

    <!-- S : 컨텐츠 영역 -->
    <img src="<%=URL_IMG%>/sd2019/pc/sdn/sample.png" />
    <!--// E : 컨텐츠 영역  -->


<!--// E : wrap -->
</body>
</html>

<iframe id="hiddenIframe" name="hiddenIframe" src="" width="0" height="0" style="display:none;"></iframe>
<%
	Set DbCon = Nothing
%>

<!-- include virtual = "/totalWebSite/renew2019/common/inc/log.asp" -->



<script type="text/javascript">

$(function(){

});



</script>