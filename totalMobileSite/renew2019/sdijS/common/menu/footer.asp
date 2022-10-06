<%
If fncRequestVariables("HTTP_HOST") = "dm.sdij.com" Then
    PC_DOMAIN = "http://dev.sdij.com"
Else
    PC_DOMAIN = "http://www.sdij.com"
End If

If GO_PC_URL = "" Then
    GO_PC_URL = PC_DOMAIN
End If

If InStr(LCase(URL_SELF), "/jaejong/jj_library.asp") > 0 Then
    txt_academy_contact = "<span>시대인재 부엉이 라이브러리 신관독서실 , 시대인재 부엉이 라이브러리 엔(N)학원<span>"
Else
    txt_academy_contact = "<span>시대인재 학원 : 02-552-2373(고3), 02-554-2373(고1/2)</span> | <span>시대인재 온/북스 : 1522-0568<span>"
End If
%>
<footer id="footer">
    <!--
    <div class="inner">
        <h3>시대인재</h3>
        <div><p>주소 : 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온 우)06279<span>|</span>대표이사 : 오우석<span>|</span>사업자등록번호 : 429-88-00534<span>|</span>통신판매업신고 : 제 2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R" target="_blank">정보확인</a><span>|</span>온라인 고객센터 : 1522-0568<span>|</span>학원 : 02-552-2373(고3), 02-554-2373(고1/2)</p><em>Copyright (주)하이컨시온. All Right Reserved.</em></div>
    </div>

    <div class="inner"><h3>시대인재</h3><a href="/etc/redirect_pc_url.asp?go_pc_url=<%=Server.URLEncode(GO_PC_URL)%>" class="view_pc">PC버전</a><div><p>주소 : 우)06279 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온<span>|</span>대표이사 : 오우석<span>|</span>사업자등록번호 : 429-88-00534<span>|</span>통신판매업신고 제2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R" target="_blank">정보확인</a><br/>온라인 고객센터 : 1522-0568<span>|</span>학원 : 02-552-2373(고3), 02-554-2373(고1/2)<br/>학원설립 · 운영 등록번호: 제 12226호 시대인재온원격학원 <a href="javascript:IfPopup();">정보확인</a><span>|</span>신고기관명: 서울특별시 강남서초교육지원청 </p><em>Copyright (주)하이컨시온. All Right Reserved.</em></div></div><a href="#wrap" class="go_top">맨 위로</a>
    -->

    <!-- <div class="inner"><div><p><b>온라인 고객센터 : 1522-0568<br>학원 : 02-552-2373(고3), 02-554-2373(고1/2)</b><br>주소 : 우)06279 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온<span>|</span>대표이사 : 오우석<span>|</span>사업자등록번호 : 429-88-00534<span>|</span>통신판매업신고 제2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R" target="_blank">정보확인</a><span>|</span>학원설립 · 운영 등록번호: 제 12226호 시대인재온원격학원 <a href="javascript:IfPopup();">정보확인</a><span>|</span>신고기관명: 서울특별시 강남서초교육지원청</p><em>Copyright (주)하이컨시온. All Right Reserved.</em></div><a href="/etc/redirect_pc_url.asp?go_pc_url=<%=Server.URLEncode(GO_PC_URL)%>" class="view_pc">PC버전</a></div><a href="#wrap" class="go_top">맨 위로</a> -->

    <!-- <div class="inner"><div><p><b>온라인 고객센터 : 1522-0568<br>학원 : 02-552-2373(고3), 02-554-2373(고1/2)</b><br>대표이사 : 오우석<br>사업자등록번호 : 429-88-00534<br>주소 : 우)06279 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온<em class="line">footer line</em>통신판매업신고 : 제2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R">정보확인</a><br>학원설립/운영등록번호 : 제12226호 시대인재온원격학원 <a href="javascript:IfPopup();">정보확인</a><br>신고기관명 : 서울특별시 강남서초교육지원청</p><em>Copyright (주)하이컨시온. All Right Reserved.</em></div><a href="/etc/redirect_pc_url.asp?go_pc_url=<%=Server.URLEncode(GO_PC_URL)%>" class="view_pc">PC버전</a></div><a href="#wrap" class="go_top">맨 위로</a> -->

    <div class="inner"><div><p><b><%=txt_academy_contact%></b><br>대표이사 : 오우석<br>사업자등록번호 : 429-88-00534<br>주소 : 우)06279 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온<em class="line">footer line</em>통신판매업신고 : 제2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R">정보확인</a><br>학원설립/운영등록번호 : 제12226호 시대인재온원격학원 <a href="javascript:IfPopup();">정보확인</a><br>신고기관명 : 서울특별시 강남서초교육지원청</p><em>Copyright (주)하이컨시온. All Right Reserved. <p><a href="mailto:SDIJ@SDIJ.COM">SDIJ@SDIJ.COM</a> Hosting by Whois Corp.</p></em></div></div><a href="#wrap" class="go_top">맨 위로</a>
</footer>
<iframe id="hiddenIframe" name="hiddenIframe" src="" width="0" height="0" style="display:none;"></iframe>
<script type="text/javascript">
    var IfPopup = function(){
        var popWidth  = "800"
        var popHeight = "800"
        var winHeight = document.body.clientHeight; // 현재창의 높이
        var winWidth  = document.body.clientWidth;  // 현재창의 너비
        var winX      = window.screenLeft;          // 현재창의 x좌표
        var winY      = window.screenTop;           // 현재창의 y좌표

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var popUrl    = "/common/menu/license.asp";     //팝업창에 출력될 페이지 URL
        var popOption ="width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+", resizable=no, scrollbars=yes, status=no;"; //팝업창 옵션(optoin)
        window.open(popUrl,"",popOption);
    };
</script>

<%
	Set DbCon = Nothing
%>

<!-- include virtual = "/common/inc/log.asp" -->