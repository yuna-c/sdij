<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 데이터베이스 연결 설정
' 모듈기능 : DATABASE 서버 연결자 설정
' 파 일 명 : define.asp
' 작성일자 : 2019/12/24
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------
%>

<%
	Dim DB_HOST
	Dim DB_NAME
	Dim DB_USER
	Dim DB_PASS

    Dim DB_ConStr
    Dim DBSDIJSMS

	if LCase(Request.ServerVariables("SERVER_NAME")) = "www.sdij.com" then
		'-------------------------------------
		' Real DB : 실DB 생성 시 수정이 필요함
		'-------------------------------------
		' Database Connection 정보 ( 실서버 )
		DB_HOST	 = "106.10.110.116"
		DB_NAME  = "reclass"
		DB_USER	 = "webAccess"
		DB_PASS	 = "Hiconsy.!@12"

        'CST_PLATFORM = "service"   'LG유플러스 결제 서비스 선택(test:테스트, service:서비스)

		DBSDIJ		= "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog="& DB_NAME &";User Id="& DB_USER &";Password="& DB_PASS &";"		'기본 DB 연결
        DBBK        = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog="& DB_NAME &";User Id="& DB_USER &";Password="& DB_PASS &";"		'보강
		DBSDIJSMS	= "Provider=SQLOLEDB;Data Source=210.116.75.5;Initial Catalog=SDIJSMS;User Id=sms_sender;Password=sms!@#45pwd;"         'SMS DB 연결
	Else
		' Database Connection 정보 ( 개발 서버 )
		DB_HOST	 = "106.10.110.116"
		DB_NAME  = "reclass"
		DB_USER	 = "webAccess"
		DB_PASS	 = "Hiconsy.!@12"

        'CST_PLATFORM = "test"   'LG유플러스 결제 서비스 선택(test:테스트, service:서비스)

        DBBK        = "Provider=SQLOLEDB;Data Source="& DB_HOST &";Initial Catalog="& DB_NAME &";User Id="& DB_USER &";Password="& DB_PASS &";"		'보강
		DBSDIJSMS	= "Provider=SQLOLEDB;Data Source=210.116.75.5;Initial Catalog=SDIJSMS;User Id=sms_sender;Password=sms!@#45pwd;"         'SMS DB 연결
	End If


    '--------------------------------------------------------------------
    ' CDN DOMAIN
    '-------------------------------------------------------------------
    CDN_DOMAIN = "http://sdij.star.skcdn.com"


	'--------------------------------------------------------------------
    ' 모바일 스타플레이어 라이센스 키
    '-------------------------------------------------------------------
    M_STAR_MOBILE_LICENSE  = "79A23D56-C0B6-4B37-A687-BC614637107F"
    M_STAR_VERSION         = "1.0.0"
    M_STAR_ANDROID_VERSION = "1.6.33"
    M_STAR_IOS_VERSION     = "1.6.34"
%>
