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


	if fncRequestVariables("HTTP_HOST") = "dev.sdij.com" then

	Else

	End If

	if fncRequestVariables("HTTP_HOST") = "sdij.com" Then
		Response.redirect "http://www.sdij.com"
		Response.End
	End If

	'---------------------------------------------------------------
	' 소스 경로 : 작성 규약 #1
	'---------------------------------------------------------------
	URL_MAIN = "http://www.sdij.com"   ' 메인 도메인
	URL_FILE = "http://file.sdij.com"  ' 파일 서버
	URL_CSS  = "http://img.sdij.com"   ' CSS 위치용
	URL_IMG	 = "http://img.sdij.com"   ' 이미지 서버

	If fncRequestVariables("HTTP_HOST") = "dev.sdij.com" then
		URL_MAIN = "http://dev.sdij.com"
		URL_FILE = "http://dfile.sdij.com"
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
	INNER_IP1 = "14.52.100.76"    ' 사내 IP
    INNER_IP2 = "218.50.242.153"  ' 스터디움 - 2019.02.25 추가
    INNER_IP3 = "211.178.160.43"  ' 학원(박동현) - 2019.02.25 추가
    INNER_IP4 = "125.131.94.210"  ' 스터디움 - 2019.02.26 추가


	COMM_USER_IP = Request.ServerVariables("REMOTE_ADDR")
	SDIJ_IP = split(COMM_USER_IP,".")(0)&"."
	SDIJ_IP = SDIJ_IP & split(COMM_USER_IP,".")(1)&"."
	SDIJ_IP = SDIJ_IP & split(COMM_USER_IP,".")(2)&"."
	SDIJ_IP = SDIJ_IP & split(COMM_USER_IP,".")(3)

	'SDIJ_IP = COMM_USER_IP

	IF TRIM(SDIJ_IP) = INNER_IP1 Or _
	   TRIM(SDIJ_IP) = INNER_IP2 Or _
	   TRIM(SDIJ_IP) = INNER_IP3 Or _
	   TRIM(SDIJ_IP) = INNER_IP4 Then

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
    SCRIPT_FLAG_PRINT       = True      ' 프린트 스크립트
    SCRIPT_FLAG_DAUM_ADDR   = True      ' 다음 우편번호 주소
    SCRIPT_FLAG_DAUM_MAP    = True      ' 다음 지도
    SCRIPT_GOOGLE_CHARTS    = False     ' 구글 그래프
    SCRIPT_LGPAY            = True      ' LG 결제 스크립트
    SCRIPT_IMG_ZOOM         = False     ' 이미지 확대 축소 스크립트


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
    ' 모바일 브라우져 체크
    '---------------------------------------------------------------
    ' http://m.sdij.com/redirect_pc_url.asp ( 모바일에서 PC 보기 클릭 시 to_pc_move = "Y" 쿠키 설정을 함
    ' 모바일에서 PC 화면 보기 클릭해서 이동을 해 온 경우는 강제적으로 모바일 페이지로 이동 하지 않는다.
    to_pc_move = Request.Cookies("to_pc_move")

    'If to_pc_move <> "Y" Then
    If fncRequest("pc_view") <> "Y" And LCase(URL_SELF) = "/aca/default.asp" Then auto_move_mobile = "Y"
    If fncRequest("pc_view") <> "Y" And LCase(URL_SELF) = "/on/default.asp"  Then auto_move_mobile = "Y"
    If fncRequest("pc_view") <> "Y" And LCase(URL_SELF) = "/on/default_0308.asp"  Then auto_move_mobile = "Y"
    'If fncRequest("pc_view") <> "Y" And LCase(URL_SELF) = "/sdn/default.asp" Then auto_move_mobile = "Y"
    If auto_move_mobile = "Y" Then
        ' ADD : 2019.02.28 -> 모바일에서 네이버 등 검색 사이트를 통해 시대인재 메인으로 접속 한 경우, 모바일 버전으로 이동 처리 한다.
        strAgent    = Request.ServerVariables("HTTP_USER_AGENT")
        arrMobile   = Array("iPhone", "ipad", "ipod""BlackBerry", "Android", "Windows CE", "LG", "MOT", "SAMSUNG", "SonyEricsson", "Mobile","Symbian","Opera Mobi","Opera Mini","IEmobile","Mobile","lgtelecom","PPC")
        mobileIdx   = 0
        mobileUrl   = ""

        For Each mobileIdx In arrMobile
            If (InStr(LCase(strAgent), LCase(mobileIdx)) > 0) Then
                If fncRequestVariables("HTTP_HOST") = "dev.sdij.com" Then
                    mobileUrl = "http://dm.sdij.com" & NowUrl
                Else
                    mobileUrl = "http://m.sdij.com" & NowUrl
                End If

                If UrlQueryString <> "" Then
                    mobileUrl = mobileUrl & "?" & UrlQueryString  ' http 도메인을 제외한  root path
                Else
                    If UrlForm <> "" Then
                        mobileUrl = mobileUrl & "?" & UrlForm  ' http 도메인을 제외한  root path
                    Else
                        mobileUrl = mobileUrl ' http 도메인을 제외한  root path
                    End IF
                End If

                response.redirect mobileUrl
                Response.End
            End If
        Next
    End If


    '---------------------------------------------------------------
	' HTTPS 보안인증 - Member 폴더외으 폴더는 http Redirect
	'---------------------------------------------------------------
    If UCase(Request.ServerVariables("HTTPS")) = "ON" Then
        If InStr(Host & NowUrl &"?"& UrlQueryString, "sdij.com/member") = 0 Then
            response.redirect "http://" & Host & NowUrl &"?"& UrlQueryString
        End If
    End If


    '---------------------------------------------------------------
	' 2018.01.17 리뉴얼 개편에 따른 구 페이지는 신 페이지로 이동
	'---------------------------------------------------------------
'    If DRAG_NO = "N" And fncRequestVariables("HTTP_HOST") = "dev.sdij.com" Then
'        ' 내부IP이고 개발서버 접근일때..
'    Else
'        ' 외부 IP 주소 일때만 처리
'     '   If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/academy") > 0 Then response.redirect "/aca/"
'        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/jaejong") > 0 Then response.redirect "/sdn/"
'        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/monthly") > 0 Then response.redirect "/sdn/monthly/2018/grade/"
'        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/event") > 0 Then response.redirect "/"
'        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/board/jjmtm") > 0 Then response.redirect "/sdn/board/jjmtm_list.asp"
'        If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/board") > 0 Then response.redirect "/aca/notice_list.asp"
'        'If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/on") > 0 Then response.redirect "/"
'    End If
%>