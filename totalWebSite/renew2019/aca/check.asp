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
		@import url(font.css);
		@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
		@import url(//fonts.googleapis.com/css?family=Noto+Serif+KR:300,400,500,700,900&display=swap&subset=korean);
		html{-webkit-text-size-adjust:none;overflow-y:auto;line-height:1.35;}
		body{font-size:15px;color:#000;width:100%;}
		html, body, div, span, applet, object, iframe,h1, h2, h3, h4, h5, h6, p, blockquote, pre,a, abbr, acronym, address, big, cite, code,del, dfn, em, font, img, ins, kbd, q, s, samp,small, strike, strong, sub, sup, tt, var,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,button,
		table, caption, tbody, tfoot, thead, tr, th, td{margin:0;padding:0;border:0;outline:0;line-height:inherit;font-size:inherit;font-family:'Noto Sans KR','Sans-serif','맑은 고딕', '돋움','Dotum','Apple SD Gothic Neo';letter-spacing:-.025em;}
		b, strong, .strong{ font-weight:700; }
		.mb20{ margin-bottom:20px !important; }
		.layout-container{ min-height:700px; margin-bottom:80px; font-size:15px; }
		.board-layout{ width:840px; margin:0 auto; }
		.page-tit{ margin-top:50px; margin-bottom:75px; font-size:50px; font-weight:300; text-align:center; }
		.page-tit small{ margin-top:3px; display:block; font-size:16px; }
		.border-tit{ width:100%; margin:120px auto 50px; padding-bottom:60px; border-bottom:1px solid #000; }
		.info-box{ line-height:48px; font-size:24px; text-align:center; }
		.info-box .select-box{ margin:30px 0; }
		.info-box .select-box .select{ width:230px; height:60px; line-height:58px; border-color:#000; }
		.info-box .select-box .btn{ width:120px; margin-left:5px; }
		.info-box > .tit{ font-size:24px; font-weight:bold; }
		.info-box > .txt{ line-height:28px; font-size:20px; }
	</style>
</head>
<body>
	<!-- S : wrap -->
	<div id="wrap">
		<!-- S : container -->
		<div id="container">
			<!-- S : 컨텐츠 영역 -->
			<div class="layout-container">
				<div class="board-layout">
					<h2 class="page-tit border-tit">서버 점검 안내</h2>

					<div class="info-box">
						<p class="txt">
							안녕하세요. 시대인재 입니다.<br><br>
							여러분께 보다 나은 서비스 제공을 위해
							현재 서버 점검을 진행하고 있습니다.<br>
							점검 시간 내에는 사이트 접속 및 이용이 제한될 수 있습니다.<br><br>
						</p>
						<p class="tit mb20">
							[서버점검시간]<br>
							2021.08.18 AM 02:00~04:00
						</P>
						<p class="txt">
							빠른 시간 내에 서비스를 재개 할 수 있도록
							최선을 다하겠습니다.<br><br>
							감사합니다.<br>
						</p>
					</div>
				</div>
			</div>
			<!--// E : 컨텐츠 영역 -->
		</div>
		<!--// E : container -->
	</div>
	<!--// E : wrap -->
</body>
</html>