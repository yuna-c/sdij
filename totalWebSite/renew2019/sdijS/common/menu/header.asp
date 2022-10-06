<%
If InStr(LCase(URL_SELF), "/on") > 0 Then
    META_OG_URL         = "on"
    META_OG_TITLE       = "시대인재온"
    META_PAGE_TITLE     = "시대인재온"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 만점으로 가는 지름길 컨텐츠, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2019 수능대비, 시대인재, 시대인재 서바이벌, 서바이벌 모의고사"

    CSS_FI_NM			= "on.css"

ElseIf InStr(LCase(URL_SELF), "/jaejong") > 0 Or InStr(LCase(URL_SELF), "/monthly") > 0 Then
    META_OG_URL         = "jaejong"
    META_OG_TITLE       = "시대인재 재종"
    META_PAGE_TITLE     = "시대인재 재종"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 만점으로 가는 지름길 컨텐츠, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2019 수능대비, 시대인재, 시대인재 재종, 시대 재종, 시대인재 N, 시대인재 재수종합"

    CSS_FI_NM			= "N.css"

ElseIf InStr(LCase(URL_SELF), "/books") > 0 Then
    META_OG_URL         = "books"
    If InStr(LCase(URL_SELF), "/books/sub_basic.asp") > 0 Or InStr(LCase(URL_SELF), "/books/sub_package.asp") > 0 Then
        ' 도서 상세 페이지에서 정의

        If book_cd = "180" Or book_cd = "184" Then
            META_PAGE_TITLE = "한완수 - 한권으로 완성하는 수학 2019"
        Else
            META_PAGE_TITLE = META_OG_TITLE
        End If
    Else
        META_OG_TITLE       = "시대인재 북스"
        META_PAGE_TITLE     = "시대인재 북스"
        META_DESCRIPTION    = "수능 전문 학습 서적 출판사, 도서, 학습서, 봉투 모의고사, 한완수, 한권으로 완성하는 수학, 포카칩 N제, 샤인미, 일격필살"
        META_KEYWORDS       = "시대인재, 시대북스, 시대인재북스, 2019 수능대비, 봉투모의고사, 한완수, 도서, 입시, 모의고사"
    End If

    CSS_FI_NM			= "books.css"

ElseIf InStr(LCase(URL_SELF), "/academy") > 0 Then
    META_OG_URL         = "academy"
    META_OG_TITLE       = "시대인재"
    META_PAGE_TITLE     = "시대인재"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 만점으로 가는 지름길 컨텐츠, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2019 수능대비, 시대인재, 시대인재온, 시대인재 N, 시대인재 대치, 시대인재 분당, 시대인재 N, 시대인재 서바이벌, 모의고사, 수능, 대입, 컨설팅"

    CSS_FI_NM			= "aca.css"
Else
    META_OG_URL         = ""
    META_OG_TITLE       = "시대인재"
    META_PAGE_TITLE     = "시대인재"
    META_DESCRIPTION    = "시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 만점으로 가는 지름길 컨텐츠, 2018 수능 전과목 만점자 배출"
    META_KEYWORDS       = "2019 수능대비, 시대인재, 시대인재온, 시대인재 N, 시대인재 대치, 시대인재 분당, 시대인재 N, 시대인재 서바이벌, 모의고사, 수능, 대입, 컨설팅"

    CSS_FI_NM			= "aca.css"
End If

If InStr(LCase(URL_SELF), "/on/svv") > 0 Then
    Set DbCon = Nothing

    Response.redirect "/on"
    Response.end
End If
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><%=META_PAGE_TITLE%></title>
    <% If InStr(LCase(URL_SELF), "/books/sub_basic.asp") > 0 Or InStr(LCase(URL_SELF), "/books/sub_package.asp") > 0 Then %>
    <!-- 북스 도서 상세 페이지에서 정의 Set S!! -->
    <meta property="og:url" content="<%=LCase(FullUrl)%>">
    <meta property="og:image" content="<%=META_OG_IMAGE%>">
    <meta property="og:title" content="<%=META_OG_TITLE%>">
    <meta property="og:description" content="<%=META_OG_DESCRIPTION%>">
    <meta property="og:site_name" content="<%=META_OG_TITLE%>">
    <meta name="description" content="<%=META_DESCRIPTION%>">
    <meta name="author" content="<%=META_AUTHOR%>" />
    <meta name="title" content="<%=META_OG_TITLE%>" />
    <% If InStr(META_OG_TITLE, "한완수") > 0 Then %>
    <meta name="title" content="한완수" />
    <meta name="title" content="한완수 2019" />
    <meta name="title" content="한권으로 완성하는 수학" />
    <meta name="title" content="한권으로 완성하는 수학 미적분" />
    <meta name="title" content="한권으로 완성하는 수학 미적분 2019" />
    <meta name="title" content="한권으로 완성하는 수학 미적분 (상) 2019" />
    <meta name="title" content="한권으로 완성하는 수학 미적분 (중) 2019" />
    <meta name="keywords" content="시대인재, 시대인재북스, 시대북스, 도서, 입시, 수학, 한완수, <%=META_AUTHOR%>, <%=META_OG_TITLE%>" />
    <% ElseIf InStr(META_OG_TITLE, "이해원") > 0 Then  %>
    <meta name="keywords" content="시대인재, 시대인재북스, 시대북스, 도서, 입시, 수학, 이해원N제, 이해원 모의고사, <%=META_AUTHOR%>, <%=META_OG_TITLE%>" />
    <% Else %>
    <meta name="keywords" content="시대인재, 시대인재북스, 시대북스, 도서, 입시, 수학, <%=META_AUTHOR%>, <%=META_OG_TITLE%>" />
    <% End If %>
    <!-- 북스 도서 상세 페이지에서 정의 Set E!! -->
    <% Else %>
    <meta property="og:url" content="http://www.sdij.com/<%=META_OG_URL%>">
    <meta property="og:image" content="<%=URL_IMG%>/common/logo_sidae.png">
    <meta property="og:title" content="<%=META_OG_TITLE%>">
    <!-- <meta property="og:description" content="시대인재, CONTENTS / CONSULTING / CARE & REVIEW, 만점으로 가는 지름길 컨텐츠, 2018 수능 전과목 만점자 배출"> -->
    <meta property="og:description" content="시대인재대치, 시대인재분당, 시대인재재수종합N, 시대인재북스, 대입전문컨설팅, 시대인재재종">
    <meta property="og:site_name" content="<%=META_OG_TITLE%>">
    <meta name="description" content="<%=META_DESCRIPTION%>">
    <meta name="title" content="<%=META_OG_TITLE%>" />
    <meta name="keywords" content="<%=META_KEYWORDS%>" />
    <% End If %>
    <meta name="naver-site-verification" content="64086383492dbc8a6e3eb27db86ce9518d90cc5e"/>
	<meta name="format-detection" content="telephone=no">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"> -->
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=0.35"/><!-- 2017-09-28 메타태그 수정 -->
	<meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="image_src" href="<%=URL_IMG%>/common/logo_sidae.png"/>
    <link rel="shortcut icon" href="<%=URL_IMG%>/common/favicon.png" type="image/x-icon">

	<link rel="stylesheet" href="/common/css/common.css?ver=<%=Second(Now)%>">
	<%=iif(CSS_FI_NM <> "","<link rel='stylesheet' href='/common/css/"& CSS_FI_NM &"?ver="& Second(Now) &"'>","")%>

	<link rel="stylesheet" href="/common/css/selectordie.css">
	<link rel="stylesheet" href="/common/css/selectric.css">


    <link rel="stylesheet" href="/common/css/elastislide.css">
    <link rel="stylesheet" href="/common/css/mb-comingsoon-iceberg.min.css">
    <link rel="stylesheet" href="/common/css/swiper.min.css">
	<link rel="stylesheet" href="/common/css/cloud-zoom.css" type="text/css" />
	<% If InStr(LCase(URL_SELF), "/on") > 0 Or LCase(URL_SELF) = "/default.asp" Or InStr(LCase(URL_SELF), "/event") > 0 Or InStr(LCase(URL_SELF), "/academy/briefing/brief_landing") > 0 Then %>
		 <link rel="stylesheet" href="/common/css/event.css?ver=<%=Second(Now)%>">
	<%End If%>

    <!-- Common Java Script Function s -->
    <!-- #include virtual = "/common/menu/common_js.asp" -->
    <!-- Common Java Script Function e -->
</head>