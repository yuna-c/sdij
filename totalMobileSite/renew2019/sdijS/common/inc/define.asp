<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재-common
' 모듈기능 : DATABASE 서버 연결자 설정
' 파 일 명 : define.asp
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

<%
	Dim DB_HOST
	Dim DB_NAME
	Dim DB_USER
	Dim DB_PASS

	Dim DBSDIJ
	Dim DBSDIJBRD
	Dim DBSDIJEVT
	Dim DBSDIJLMS
	Dim DBSDIJLOG
	Dim DBSDIJSMS

	if LCase(Request.ServerVariables("SERVER_NAME")) = "sdij.com" Or _
	   LCase(Request.ServerVariables("SERVER_NAME")) = "www.sdij.com" Or _
	   LCase(Request.ServerVariables("SERVER_NAME")) = "m.sdij.com" Or _
	   LCase(Request.ServerVariables("SERVER_NAME")) = "www1.sdij.com" Or _
	   LCase(Request.ServerVariables("SERVER_NAME")) = "www2.sdij.com" Or _
	   LCase(Request.ServerVariables("SERVER_NAME")) = "debug.sdij.com" then
		'-------------------------------------
		' Real DB : 실DB 생성 시 수정이 필요함
		'-------------------------------------
		' Database Connection 정보 ( 실서버 )
		DB_HOST	 = "210.116.75.5"
		DB_NAME  = "SDIJ"
		DB_USER	 = "web_#$@access"
		DB_PASS	 = "sdijon@$#2017"

        CST_PLATFORM = "service"   'LG유플러스 결제 서비스 선택(test:테스트, service:서비스)

		DBSDIJ		= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJ;User Id="& DB_USER &";Password="& DB_PASS &";"      '기본 DB 연결
		DBSDIJBRD	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJBRD;User Id="& DB_USER &";Password="& DB_PASS &";"   '게시판 DB 연결
		DBSDIJEVT	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJEVT;User Id="& DB_USER &";Password="& DB_PASS &";"   '이벤트 DB 연결
		DBSDIJLMS	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJLMS;User Id="& DB_USER &";Password="& DB_PASS &";"   'LMS DB 연결
		DBSDIJLOG	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJLOG;User Id="& DB_USER &";Password="& DB_PASS &";"   'LOG DB 연결
		DBSDIJSMS	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJSMS;User Id=sms_sender;Password=sms!@#45pwd;"        'SMS DB 연결
        DBSTD2017	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=STD2017;User Id="& DB_USER &";Password="& DB_PASS &";"   '스터딥2017
        DBSMM2018	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SMM2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종월례고사2018

        DBSVV2018   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SVV2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '단과서바이벌2018
        DBSVV2019   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SVV2019;User Id="& DB_USER &";Password="& DB_PASS &";"   '단과서바이벌2019
        DBSJS2018   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SJS2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종서바이벌2018
        DBSJS2019   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SJS2019;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종서바이벌2019

        DBSFN2018   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SFN2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종파이널2018
        DBSTD2018	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=STD2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '스터딥2018
        DBSMM2019	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SMM2019;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종월례고사2019
	Else
		' Database Connection 정보 ( 개발 서버 )
		DB_HOST	 = "49.254.17.106"
		DB_NAME  = "SDIJ"
		DB_USER	 = "web_access"
		DB_PASS	 = "dbsql$#3690"

        CST_PLATFORM = "test"   'LG유플러스 결제 서비스 선택(test:테스트, service:서비스)

		DBSDIJ		= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJ;User Id="& DB_USER &";Password="& DB_PASS &";"      '기본 DB 연결
		DBSDIJBRD	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJBRD;User Id="& DB_USER &";Password="& DB_PASS &";"   '게시판 DB 연결
		DBSDIJEVT	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJEVT;User Id="& DB_USER &";Password="& DB_PASS &";"   '이벤트 DB 연결
		DBSDIJLMS	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJLMS;User Id="& DB_USER &";Password="& DB_PASS &";"   'LMS DB 연결
		DBSDIJLOG	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SDIJLOG;User Id="& DB_USER &";Password="& DB_PASS &";"   'LOG DB 연결
		DBSDIJSMS	= "Provider=SQLOLEDB;Data Source=210.116.75.5;Initial Catalog=SDIJSMS;User Id=sms_sender;Password=sms!@#45pwd;"         'SMS DB 연결
        DBSTD2017	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=STD2017;User Id="& DB_USER &";Password="& DB_PASS &";"   '스터딥2017
        DBSMM2018	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SMM2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종월례고사2018

        DBSVV2018   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SVV2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '단과서바이벌2018
        DBSVV2019   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SVV2019;User Id="& DB_USER &";Password="& DB_PASS &";"   '단과서바이벌2019
        DBSJS2018   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SJS2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종서바이벌2018
        DBSJS2019   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SJS2019;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종서바이벌2019

        DBSFN2018   = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SFN2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종파이널2018
        DBSTD2018	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=STD2018;User Id="& DB_USER &";Password="& DB_PASS &";"   '스터딥2018
        DBSMM2019	= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog=SMM2019;User Id="& DB_USER &";Password="& DB_PASS &";"   '재종월례고사2019
	End If



    '--------------------------------------------------------------------
    ' 업로드 기본 구성 시작
    '-------------------------------------------------------------------
    Const CM_UPLOAD_ABCUPLOAD = "ABC"
    Const CM_UPLOAD_DEXT = "DEXT"
	Const CM_UPLOAD_SITEGALAXY = "SITEGALAXY"

    Const UPLOAD_MAX_SIZE		= 2 ' (MB)
	'Const UPLOAD_BLOCK_EXT		= "asp,html,htm,php,php3,cgi,phtm,phtm,inc,sql,pl"
    Const UPLOAD_ACCEPT_EXT		= "ppt,pptx,xls,xlsx,pdf,doc,docx,jpg,png,jpeg,gif"
	Const DOWNLOAD_BLOCK_EXT	= "asp,php,php3,cgi,phtml,phtm,inc,sql,pl"



    '--------------------------------------------------------------------
    ' Daum API Key
    '-------------------------------------------------------------------
    Const Daum_Key  = "a8cae1137e407879775595de352361fa"
    Const kakao_key = "17bfc3997779f0ab5c2e56d8adcc2b6a"

    '--------------------------------------------------------------------
    ' LG Pay
    '-------------------------------------------------------------------
    CST_MID     = "sdijpg"                                    '상점아이디(LG유플러스으로 부터 발급받으신 상점아이디를 입력하세요)
    LGD_MERTKEY = "abd376739c556b5d10e83ad5c974ba28"          '상점MertKey(mertkey는 상점관리자(http://pgweb.uplus.co.kr) -> 계약정보 -> 상점정보관리에서 확인하실수 있습니다')


    '--------------------------------------------------------------------
    ' CDN DOMAIN
    '-------------------------------------------------------------------
    CDN_DOMAIN = "http://sdij.star.skcdn.com"


    '--------------------------------------------------------------------
    ' 모바일 스타플레이어 라이센스 키
    '-------------------------------------------------------------------
    M_STAR_LICENSE         = "79A23D56-C0B6-4B37-A687-BC614637107F"
    M_STAR_VERSION         = "1.0.0"
    'M_STAR_ANDROID_VERSION = "1.0.0"
    'M_STAR_IOS_VERSION     = "1.0.0"
    M_STAR_ANDROID_VERSION = "1.6.33"
    M_STAR_IOS_VERSION     = "1.6.34"
%>
