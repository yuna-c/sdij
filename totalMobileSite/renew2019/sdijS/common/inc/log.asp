

<% If InStr(Host & NowUrl, "m.sdij.com/academy/") Then %>
    <!-- 학원 메인용 : Global Site Tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-88572216-4"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments)};
      gtag('js', new Date());

      gtag('config', 'UA-88572216-4');
    </script>
<% End If %>


<% If InStr(Host & NowUrl, "m.sdij.com/on/") Then %>
    <!-- ON 메인용 : Global Site Tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-88572216-3"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments)};
      gtag('js', new Date());

      gtag('config', 'UA-88572216-3');
    </script>
<% End If %>


<% If InStr(Host & NowUrl, "m.sdij.com/jaejong/") Then %>
    <!-- 시대인재N 메인용 : Global Site Tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-88572216-5"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments)};
      gtag('js', new Date());

      gtag('config', 'UA-88572216-5');
    </script>
<% End If %>


<% If InStr(Host & NowUrl, "m.sdij.com/pay/payend.asp") Then

	Select Case OP_P_TYPE
	Case "310006"
	    OP_BUY_TYPE = "UA-88572216-4"
	Case "310002", "310004", "310005", "310007"
	    OP_BUY_TYPE = "UA-88572216-3"
	Case "310003", "310008"
	    OP_BUY_TYPE = "UA-119311940-1"
	End Select


%>
    <!-- GA 구매추적 소스 S   -->

    <script async src="https://www.googletagmanager.com/gtag/js?id=<%=OP_BUY_TYPE%>"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', '<%=OP_BUY_TYPE%>');
	</script>

	<script>

		gtag('event', 'purchase', {
			"transaction_id": "<%= ORD_NO %>",
		    "affiliation": "sdij.com",
		    "value": <%= PAY_PRC %>,
		    "currency": "KRW",
		    "tax": 0,
		    "shipping": 0,
		    "items" : [

		    	 <%
			    	If IsArray(dList) Then
			            For j=0 To dListCnt
				            P_OP_ORD_NO             = dList(0,j)
				            P_OP_CART_PRODUCT_NM    = dList(1,j)

				            P_OP_BUY_CNT            = dList(18,j)
				            P_OP_SELL_PRC           = dList(19,j)
				            P_OP_BUY_CD           	= dList(20,j)
				%>
						<% if j <> 0 then %>
							,
						<% end if %>
					   {
					       "id": "<%= P_OP_BUY_CD %>",
					       "name": "<%= P_OP_CART_PRODUCT_NM %>",
					       "quantity": <%= P_OP_BUY_CNT %>,
					       "price": '<%= P_OP_SELL_PRC %>'
					   }
			   <%
				        Next
				    End If
				%>

		    ]
		});

	</script>

	<!-- GA 구매추적 소스 E -->
<% End If %>


<% If fncRequestVariables("HTTP_HOST") = "www.sdij.com" Then %>
    <!-- Facebook Pixel Code :: 2019.01.15 -->
    <!-- 헤더 섹션 하단에서 </head> 태그 바로 위에 픽셀 코드를 붙여넣으세요. Facebook 픽셀 코드는 사이트 헤더의 기존 추적 태그(예: Google 웹로그 분석) 위 또는 아래에 추가할 수 있습니다. -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
        n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t,s)}(window, document,'script',
        'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '256403481772703');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=256403481772703&ev=PageView&noscript=1"/></noscript>
    <!-- End Facebook Pixel Code //-->


    <!-- Global site tag (gtag.js) - Google Analytics :: 2019.01.15 -->
    <!--
    범용 사이트 태그(gtag.js)
    이 속성의 범용 사이트 태그(gtag.js) 추적 코드입니다. 이 코드를 복사하여 추적할 모든 웹페이지의 <HEAD>에 첫 번째 항목으로 붙여넣으세요.
    이미 페이지에 범용 사이트 태그가 있다면 아래 스니펫의 config 행을 기존 범용 사이트 태그에 추가하기만 하면 됩니다.
    -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-119311940-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-119311940-1');
    </script>
    <!-- Global site tag (gtag.js) - Google Analytics //-->


    <!-- 또한 여는 <body> 태그 바로 뒤에 코드를 붙여넣으세요.-->
    <!-- Google Tag Manager (noscript :: 2019.01.15 :: Header 파일에 상위 코드 존재) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MN4FL6Z"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
<% End If %>

