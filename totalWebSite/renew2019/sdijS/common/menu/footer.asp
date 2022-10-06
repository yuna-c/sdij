<%
If InStr(LCase(URL_SELF), "/jaejong/jj_library.asp") > 0 Then
    txt_academy_contact = "<span>시대인재 부엉이 라이브러리 신관독서실 , 시대인재 부엉이 라이브러리 엔(N)학원<span>"
Else
    txt_academy_contact = "<span>시대인재 학원 : 02-552-2373(고3), 02-554-2373(고1/2)</span> | <span>시대인재 온/북스 : 1522-0568<span>"
End If
%>
<footer id="footer">
    <div class="inner"><div><b><%=txt_academy_contact%></b><br>주소 : 우) 06178 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온</span> | <span>대표이사 : 오우석</span> | <span>사업자등록번호 : 429-88-00534</span><br><span>통신판매업신고 : 제 2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R" target="_blank">정보확인</a></span> | <span>학원설립 · 운영 등록번호: 제 12226호 시대인재온원격학원 <a href="javascript:IfSdijAcaPrivacyInfo();">정보확인</a></span> | <span>신고기관명: 서울특별시 강남서초교육지원청</span><br><p>Copyright (주)하이컨시온. All Right Reserved. <span><a href="mailto:SDIJ@SDIJ.COM"> SDIJ@SDIJ.COM </a></span> Hosting by Whois Corp.</p></div></div>
</footer>

<iframe id="hiddenIframe" name="hiddenIframe" src="" width="0" height="0" style="display:none;"></iframe>
<%
	Set DbCon = Nothing
%>

<!-- #include virtual = "/common/inc/log.asp" -->