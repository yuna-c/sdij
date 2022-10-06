<%@Language="VBScript" CODEPAGE="65001" %>
<%
    'Response.CharSet="utf-8"
    Session.codepage="65001"
    Response.codepage="65001"
    'Response.ContentType="text/html;charset=utf-8"
%>


<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재-공통 파일
' 모듈기능 : 도메인 환경 설정 정의
' 파 일 명 : config.asp
' 작성일자 : 2017/02/14
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

<OBJECT RUNAT=server PROGID=Scripting.Dictionary id=Dic></OBJECT>
<!-- #include virtual = "/common/Inc/define.asp" -->
<!-- #include virtual = "/common/lib/class.Db.asp" -->
<!-- #include virtual = "/common/lib/function.Js.asp" -->
<!-- #include virtual = "/common/lib/function.Page.asp" -->
<!-- #include virtual = "/common/lib/function.Util.asp" -->
<!-- #include virtual = "/common/lib/function.Common.asp" -->
<%
	' # 버퍼 허용
	Response.Buffer = True
	Response.Expires = -1
	Response.AddHeader "Pragma", "no-cache"
	Response.AddHeader "cache-control", "no-store"


	Dim DbCon : Set DbCon = New clsDBHelper 	' # DB 객체 생성
	Dim URL_IMG        	' # 이미지 파일 위치 정의
	Dim URL_CSS         ' # CSS 파일 위치 정의
	Dim URL_FILE        ' # 파일 서버 위치 정의
	Dim URL_SELF        ' # 현재 페이지 URL 정의
	Dim URL_COMMON      ' # 공통 URL 정의
	Dim DESC_SLOGAN     ' # 사이트 슬로건 정의


	if fncRequestVariables("HTTP_HOST") = "dm.sdij.com" then

	Else

	End If



	'---------------------------------------------------------------
	' 소스 경로 : 작성 규약 #1
	'---------------------------------------------------------------
	URL_MAIN = "http://www.sdij.com"   ' 메인 도메인
	URL_FILE = "http://file.sdij.com"  ' 파일 서버
	URL_CSS  = "http://img.sdij.com"   ' CSS 위치용
	URL_IMG	 = "http://img.sdij.com"   ' 이미지 서버

	If fncRequestVariables("HTTP_HOST") = "dm.sdij.com" then
		URL_MAIN    = "http://dm.sdij.com"
		URL_FILE    = "http://dfile.sdij.com"
        URL_MAIN_PC = "http://dev.sdij.com"
	ElseIf fncRequestVariables("HTTP_HOST") = "m.sdij.com" then
		URL_MAIN    = "http://m.sdij.com"
		URL_FILE    = "http://file.sdij.com"
        URL_MAIN_PC = "http://www.sdij.com"
	ElseIf fncRequestVariables("HTTP_HOST") = "www1.sdij.com" then
		URL_MAIN = "http://www1.sdij.com"
	ElseIf fncRequestVariables("HTTP_HOST") = "www2.sdij.com" then
		URL_MAIN = "http://www2.sdij.com"
	ElseIf fncRequestVariables("HTTP_HOST") = "debug.sdij.com" then
		URL_MAIN = "http://debug.sdij.com"
	Else
		If UCase(Request.ServerVariables("HTTPS")) = "ON" Then
			URL_MAIN = ""
			URL_FILE = ""
			URL_CSS  = ""
			URL_IMG	 = "/images"   ' HTTPS 이미지폴더 실서버용
		End If
	end If



	'---------------------------------------------------------------
	' 슬로건
	'---------------------------------------------------------------
	DESC_SLOGAN = "시대인재"



	'---------------------------------------------------------------
	' CSS/JS Version
	'---------------------------------------------------------------
	VER_CSS_JS = Replace(Date,"-","") & Hour(now) & minute(now)



	'---------------------------------------------------------------
	' Current Path
	'---------------------------------------------------------------
	CUR_PATH_INFO = LCASE(fncRequestVariables("PATH_INFO"))
	URL_SELF = Request.ServerVariables("URL")



	'---------------------------------------------------------------
	' 회원 쿠키설정
	'---------------------------------------------------------------
	COOK_ID = fncRequestCookie("mem_id")
	COOK_NM = fncRequestCookie("mem_nm")
	COOK_CD = fncRequestCookie("mem_cd")
    COOK_TYPE = fncRequestCookie("mem_type")

    COOK_GST_ID = fncRequestCookieGst("gst_id")    ' 비회원 아이디



	'---------------------------------------------------------------
	' 현재 주소를 받아둔다.
	'---------------------------------------------------------------
	Dim Host, NowUrl, UrlQueryString, FullUrl, RootUrl

	Host           = Request.ServerVariables("HTTP_HOST")
	NowUrl         =  LCase(CUR_PATH_INFO)
	UrlQueryString = request.QueryString
	UrlForm        = request.Form

	FullUrl = "http://"& Host & NowUrl &"?"& UrlQueryString   ' http 도메인을 포함한 전체 주소

	If UrlQueryString <> "" Then
		RootUrl = fncRequestVariables("URL") &"?"& UrlQueryString  ' http 도메인을 제외한  root path
	Else
		If UrlForm <> "" Then
			RootUrl = fncRequestVariables("URL") &"?"& UrlForm  ' http 도메인을 제외한  root path
		Else
			RootUrl = fncRequestVariables("URL") ' http 도메인을 제외한  root path
		End IF
	End IF




	'---------------------------------------------------------------
	' 사내 IP Check Login
	'---------------------------------------------------------------
	INNER_IP1 = "14.52.100.76"  ' 사내 IP
    ' INNER_IP2 = "121.135.244."  ' 원장님 IP


	COMM_USER_IP = Request.ServerVariables("REMOTE_ADDR")
	SDIJ_IP = split(COMM_USER_IP,".")(0)&"."
	SDIJ_IP = SDIJ_IP & split(COMM_USER_IP,".")(1)&"."
	SDIJ_IP = SDIJ_IP & split(COMM_USER_IP,".")(2)&"."
	SDIJ_IP = SDIJ_IP & split(COMM_USER_IP,".")(3)

	'SDIJ_IP = COMM_USER_IP

	IF TRIM(SDIJ_IP) = INNER_IP1 Or TRIM(SDIJ_IP) = INNER_IP2 THEN
		DRAG_NO = "N"
	ELSE
		' 정의 되지 않은 외부 접속 아이피 이면 로그 수집 처리 후 차단
		DRAG_NO = "Y"
	END If




    '---------------------------------------------------------------
	' 파일 업로드 셋팅
	'---------------------------------------------------------------
    cfgUploadMethod = "ABC"

    '---------------------------------------------------------------
	' 메일 셋팅
	'---------------------------------------------------------------
    cfgIsOutsideSmtp = False '외부메일 사용여부
    cfgSmtpId = "" '메일서버 아이디
    cfgSmtpPw = "" '메일서버 패스워드



    '---------------------------------------------------------------
	' 자바스크립트 헤더 사용 여부
	'---------------------------------------------------------------
    SCRIPT_FLAG_PRINT       = False     ' 프린트 스크립트
    SCRIPT_FLAG_DAUM_ADDR   = False     ' 다음 우편번호 주소
    SCRIPT_FLAG_DAUM_MAP    = False     ' 다음 지도
    SCRIPT_GOOGLE_CHARTS    = False     ' 구글 그래프
    SCRIPT_LGPAY            = False     ' LG 결제 스크립트
    SCRIPT_IMG_ZOOM         = False     ' 이미지 확대 축소 스크립트


    '---------------------------------------------------------------
	' PC 보기를 선택한 사용자 설정 값 초기화
	'---------------------------------------------------------------
    Response.cookies("to_pc_move") = ""    ' PC 보기를 선택한 사용자 설정 값 초기화 ( /redirect_pc_url.asp PC 보기 클릭 시 세팅 됨 )
    Response.Cookies("to_pc_move").domain = "sdij.com"


    '---------------------------------------------------------------
	' 런칭 이벤트 관련 - 사내 IP 제외하고, 메인 페이지 호출
	'---------------------------------------------------------------
    If DRAG_NO = "Y" Then
        'If (InStr(LCase(NowUrl), "/event/20170601_1/") > 0) Or (InStr(LCase(NowUrl), "/member") > 0) Or (InStr(LCase(NowUrl), "/common") > 0) Then

        'Else
        '    response.redirect "/event/20170922/"
        'End If
    End If

    '---------------------------------------------------------------
	' HTTPS 보안인증 - Member 폴더외의 폴더는 http Redirect
	'---------------------------------------------------------------
    If UCase(Request.ServerVariables("HTTPS")) = "ON" Then
        If (InStr(Replace(Host & NowUrl &"?"& UrlQueryString, "sdij.com:442", "sdij.com"), "sdij.com/member") = 0)Then
            response.redirect "http://" & Replace(Host & NowUrl &"?"& UrlQueryString, "sdij.com:442", "sdij.com")
        End If
    End If


    '---------------------------------------------------------------
	' 2018.01.17 리뉴얼 개편에 따른 구 페이지는 신 페이지로 이동
	'---------------------------------------------------------------
    If DRAG_NO = "N" And fncRequestVariables("HTTP_HOST") = "dm.sdij.com" Then
        ' 내부IP이고 개발서버 접근일때..
    Else
        ' 외부 IP 주소 일때만 처리
        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/academy") > 0 Then response.redirect "/aca/"
        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/jaejong") > 0 Then response.redirect "/sdn/"
        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/monthly") > 0 Then response.redirect "/sdn/monthly/2018/grade/"
        'If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/event") > 0 Then response.redirect "/"
        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/board/jjmtm") > 0 Then response.redirect "/sdn/board/jjmtm_list.asp"
        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/board") > 0 Then response.redirect "/aca/notice_list.asp"
        'If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/on") > 0 Then response.redirect "/"
    End If
%>