<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 - 서버점검페이지
' 모듈기능 : 템플릿 파일
' 파 일 명 : check.asp
' 작성일자 : 2021/08/10
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

<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minmum-scale=1, mixmum-scale=1">

	<title>시대인재 서버 점검 안내</title>
	<style>
		@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
		@import url(//fonts.googleapis.com/css?family=Noto+Serif+KR:300,400,500,700,900&display=swap&subset=korean);
		body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,textarea,p,blockquote,th,td,input,select,textarea,button{margin:0;padding:0;-webkit-text-size-adjust:none;line-height:inherit;font-size:inherit;font-family:'Noto Sans KR','Sans-serif','돋움','Dotum','Apple SD Gothic Neo';letter-spacing:-.025em;}
		.mb20{ margin-bottom:20px !important; }
		.content-layout{ margin-top:20px; padding:0 20px; }
		.page-tit{ padding:35px 0 20px; font-size:30px; font-weight:normal; text-align:center; word-break:keep-all; }
		.page-tit small{ line-height:20px; margin-top:10px; padding:0 20px; display:block; font-size:12px; word-break:keep-all; }
		.border-tit{ margin-bottom:30px; border-bottom:1px solid #000; }
		.txt-box{ line-height:26px; font-size:13px; text-align:left; word-break:break-all; }
		.txt-box img{ width:100%; height:auto; display:block; }
		.info-box{ line-height:18px; margin:50px auto; font-size:12px; text-align:center; }
		.info-box .tit{ line-height:24px; font-size:18px; font-weight:bold; }
		.info-box .txt{ line-height:20px; padding:0 10px; font-size:14px; color:#666; word-break:keep-all; }
		@media(max-width:800px) { 
			.content-layout{ margin-top:0; }
			.page-tit{ padding:65px 0 20px; }
		}
	</style>
</head>
<body>
	<!-- S : wrap -->
	<div id="wrap">
		<!-- S : container -->
		<div id="container">
			<!-- S : 컨텐츠 영역 -->
			<div class="layout-container">
				<div class="content-layout">
					<h2 class="page-tit border-tit pt40">서버 점검 안내</h2>

					<div class="info-box">
						<p class="txt">
							안녕하세요. 시대인재 입니다.<br><br>
							여러분께 보다 나은 서비스 제공을 위해<br>
							현재 서버 점검을 진행하고 있습니다.<br>
							점검 시간 내에는 사이트 접속 및 이용이 제한될 수 있습니다.<br><br>
						</p>
						<p class="tit mb20">
							[서버점검시간]<br>
							2021.08.18 AM 02:00~04:00
						</P>
						<p class="txt">
							빠른 시간 내에 서비스를 재개 할 수 있도록<br>
							최선을 다하겠습니다.<br><br>
							감사합니다.<br>
						</p>
					</div>
				</div>
			</div>
			<!--// E : 컨텐츠 영역 -->
		</div>
		<!--// E container -->
	</div>
	<!-- // E : wrap -->
</body>
</html>
