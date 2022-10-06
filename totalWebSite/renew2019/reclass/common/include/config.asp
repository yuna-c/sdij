<%@Language="VBScript" CODEPAGE="65001"%>
<%
    Session.codepage = "65001"
    Response.codepage = "65001"
    Response.CharSet = "utf-8"
    Response.ContentType = "text/html;charset=utf-8"
%>
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 파일
' 모듈기능 : 환경 설정 정의
' 파 일 명 : config.asp
' 작성일자 : 2019/12/24
' 작 성 자 : 우미경
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------
%>

<OBJECT RUNAT=server PROGID=Scripting.Dictionary id=Dic></OBJECT>
<!-- #include virtual = "/totalWebSite/renew2019/reclass/common/include/define.asp" -->
<!-- #include virtual = "/totalWebSite/renew2019/reclass/common/lib/classDb.asp" -->
<!-- #include virtual = "/totalWebSite/renew2019/reclass/common/lib/function.Util.asp" -->
<%
	' 버퍼 허용
	Response.Buffer = True
	Response.Expires = -1
	Response.AddHeader "Pragma", "no-cache"
	Response.AddHeader "cache-control", "no-store"

	Dim DbCon : Set DbCon = New clsDBHelper 	' DB 객체 생성
	Dim URL_FILE        ' 파일 서버 위치 정의
	'Dim URL_IMG        	' 이미지 파일 위치 정의


	'---------------------------------------------------------------
	' 소스 경로
	'---------------------------------------------------------------
	URL_FILE = "http://file.reclass.study"  ' 파일 서버
	'URL_IMG	 = "http://img.reclass.study"   ' 이미지 서버

    If fncRequestVariables("HTTP_HOST") = "www.reclass.study" then
        URL_MAIN = "http://www.reclass.study"
    End If

	'---------------------------------------------------------------
	' 회원 쿠키설정
	'---------------------------------------------------------------
	COOK_ID			= fncRequestCookie("mem_id")
	COOK_NM			= fncRequestCookie("mem_nm")
	COOK_TYPE		= fncRequestCookie("mem_type")


    '---------------------------------------------------------------
	' 파일 업로드 셋팅
	'---------------------------------------------------------------
    cfgUploadMethod = "ABC"


%>
