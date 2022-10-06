<%
If InStr(LCase(URL_SELF), "/on") > 0 Then
    META_OG_URL         = "on"
    META_OG_TITLE       = "시대인재"
    META_PAGE_TITLE     = "시대인재"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2020 수능대비, 시대인재, 시대인재 서바이벌, 서바이벌 모의고사"

ElseIf InStr(LCase(URL_SELF), "/sdn") > 0 Or InStr(LCase(URL_SELF), "/jaejong") > 0 Then
    META_OG_URL         = "sdn"
    META_OG_TITLE       = "시대인재 재종"
    META_PAGE_TITLE     = "시대인재 재종"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2020 수능대비, 시대인재, 시대인재 재종, 시대 재종, 시대인재 N, 시대인재 재수종합"

ElseIf InStr(LCase(URL_SELF), "/aca") > 0 Then
    META_OG_URL         = "aca"
    META_OG_TITLE       = "시대인재"
    META_PAGE_TITLE     = "시대인재"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2020 수능대비, 시대인재, 시대인재온, 시대인재 N, 시대인재 대치, 시대인재 분당, 시대인재 N, 시대인재 서바이벌, 모의고사, 수능, 대입, 컨설팅"

Else
    META_OG_URL         = ""
    META_OG_TITLE       = "시대인재"
    META_PAGE_TITLE     = "시대인재"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2020 수능대비, 시대인재, 시대인재온, 시대인재 N, 시대인재 대치, 시대인재 분당, 시대인재 N, 시대인재 서바이벌, 모의고사, 수능, 대입, 컨설팅"

End If
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"-->

    <meta property="og:url" content="http://www.sdij.com/<%=META_OG_URL%>">
    <meta property="og:image" content="<%=URL_IMG%>/common/logo_sidae.png">
    <meta property="og:title" content="<%=META_OG_TITLE%>">
    <meta property="og:description" content="시대인재대치, 시대인재분당, 시대인재재수종합N, 시대인재북스, 대입전문컨설팅, 시대인재재종">
    <meta property="og:site_name" content="<%=META_OG_TITLE%>">
    <meta name="description" content="<%=META_DESCRIPTION%>">
    <meta name="title" content="<%=META_OG_TITLE%>" />
    <meta name="keywords" content="<%=META_KEYWORDS%>" />
    <meta name="naver-site-verification" content="64086383492dbc8a6e3eb27db86ce9518d90cc5e"/>

    <title> <%=META_PAGE_TITLE%> </title>
    <link rel="shortcut icon" href="<%=URL_IMG%>/common/favicon.png" type="image/x-icon">
    <link rel="icon" href="/favicon.png">
    <link rel="icon" href="/favicon_32.ico" sizes="32x32">

	<!-- S : css -->
	<link rel="stylesheet" type="text/css" href="/common/css/sd2019/reset.css?ver=<%=now()%>">
	<link rel="stylesheet" type="text/css" href="/common/css/sd2019/layout.css?ver=<%=now()%>">
	<link rel="stylesheet" type="text/css" href="/common/css/sd2019/board.css?ver=<%=now()%>">
	<!--// E : css -->

	<!-- S : js -->
	<script type="text/javascript" src="/common/js/sd2019/lib/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="/common/js/sd2019/lib/jquery-scrolltofixed-min.js"></script>
	<script type="text/javascript" src="/common/js/sd2019/lib/jquery.cycle2.js"></script>
	<script type="text/javascript" src="/common/js/sd2019/lib/jquery.cycle2.carousel.min.js"></script>
	<script type="text/javascript" src="/common/js/sd2019/lib/jquery.placeholder.js"></script>
	<script type="text/javascript" src="/common/js/sd2019/pc_common.js"></script>
    <script type="text/javascript" src="/common/js/sd2019/common.js"></script>
	<!--// E : js -->

    <% If DRAG_NO <> "N" Then %>
    <!-- <script type="text/javascript"src="/common/js/dragno.js"></script> -->
    <% End If %>

    <% If SCRIPT_FLAG_PRINT Then %>
    <script type="text/javascript" src="/common/js/jQuery.print.js"></script><!-- 프린터 -->
    <% End If %>

    <% If SCRIPT_FLAG_DAUM_ADDR Then %>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script><!-- 다음 우편번호 주소 -->
    <% End If %>

    <% If SCRIPT_FLAG_DAUM_MAP Then %>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=<%=kakao_key%>"></script><!-- 카카오 지도-->
    <% End If %>

    <% If SCRIPT_GOOGLE_CHARTS Then %>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script><!-- 구글그래프 -->
    <% End If %>

    <% If SCRIPT_LGPAY Then %>
    <% If CST_PLATFORM = "service" Then %>
    <script language="JavaScript" src="http://pgweb.uplus.co.kr/WEB_SERVER/js/receipt_link.js"></script>    <!-- 서비스일 경우 -->
    <% Else %>
    <script language="JavaScript" src="http://pgweb.uplus.co.kr:7085/WEB_SERVER/js/receipt_link.js"></script>   <!-- 테스트일 경우 -->
    <% End If %>
    <% End If %>

    <% If SCRIPT_IMG_ZOOM Then %>
    <script type="text/JavaScript" src="/common/js/cloud-zoom.1.0.2.min.js"></script><!-- 이미지 확대 축소 -->
    <% End If %>


    <% If fncRequestVariables("HTTP_HOST") = "www.sdij.com" Then %>
        <!--페이지의 <head>에서 가능한 한 높은 위치에 코드를 붙여넣으세요.-->
        <!-- Google Tag Manager :: 2019.01.15 -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-MN4FL6Z');</script>
        <!-- End Google Tag Manager -->
    <% End If %>
</script>
</head>
