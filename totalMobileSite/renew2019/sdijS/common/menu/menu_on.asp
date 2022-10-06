    <header id="zero_header">
        <!-- S : gnb -->
        <div class="gnb-area">
            <h1 class="fl">
                <a href="/aca/">시대인재</a>

                <div style="float:right; margin: 0px 30px 0px 0px">
                    <a href="/mypage/order/order_revival.asp">주문/배송조회</a>&nbsp;
					<%If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/on") > 0 Or InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/event") > 0 Then %>
                    <a href="/event/11/knock_down.asp" style="display: inline-block; line-height: 30px; text-align: center;margin:0 10px 0 0; text-decoration: underline;">SURVIVAL ZEROⅡ 해설지 다운</a>
					<%End If%>
                    <% If COOK_ID = "" Then %>
                    <a href="/member/sd2019/login.asp">로그인</a>
                    <% Else %>
                    <a href="/member/sd2019/logout.asp">로그아웃</a>
                    <% End If %>
                </div>
            </h1>
        </div>
        <!--// E : gnb -->
    </header>