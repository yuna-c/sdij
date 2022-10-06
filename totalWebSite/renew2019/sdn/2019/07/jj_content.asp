<!--include virtual="/totalWebSite/renew2019/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 컨텐츠 template
' 모듈기능 : 템플릿 파일
' 파 일 명 : jj_content.asp
' 작성일자 : 2018/12/26
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
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
	    <div class="layout-container">
            <div class="page-loc float-area">
                <div class="fl">
                    <a href="javascript:history.back();">&lt; Back</a>
                </div>
            </div>

            <div class="board-layout">
                <h2 class="page-tit border-tit">컨텐츠</h2>

                <div class="txt-box">
                    <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_content1.png" alt=" ">
                    <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_content2.png" alt=" ">
                    <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_content3.png" alt=" ">
                    <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_content4.png" alt=" ">
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	<div>
	<!-- E : container //-->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){

});

</script>