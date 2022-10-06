<!-- 바텀 배너 S -->
<%
bnr_seq = 4 ' 배너관리(모바일)

arrParams = Array( _
    DbCon.makeParam("@BD_BNR_SEQ", adInteger, adParamInput, 4, bnr_seq), _
    DbCon.makeParam("@BD_DSP_POS", adVarchar, adParamInput, 1, "B"), _
    DbCon.makeParam("@BD_DSP_URL", adVarchar, adParamInput, 300, LCase(RootUrl)) _
)

vBottomBannerList = DbCon.ExecRsList("P_BNR_DTL_BANNER_LIST", adCmdStoredProc, arrParams, vBottomBannerListCnt, Nothing)
%>

<% If IsArray(vBottomBannerList) Then %>
    <ul data-banner="bottom">
        <% 
            For i=0 To vBottomBannerListCnt 
                BD_DTL_SEQ      = vBottomBannerList(0,i)
                BD_BNR_NM       = vBottomBannerList(1,i)
                BD_IMG_URL      = vBottomBannerList(2,i)
                BD_LNK_URL      = vBottomBannerList(3,i)
                BD_RD_KBN       = vBottomBannerList(4,i)
                BD_POP_W        = vBottomBannerList(5,i)
                BD_POP_H        = vBottomBannerList(6,i)
                BD_BNR_MAKE     = vBottomBannerList(7,i)
                BD_DSP_POS      = vBottomBannerList(8,i)

                BD_RD_KBN_NM = ""
                Select Case BD_RD_KBN
                    Case "S"
                        BD_RD_KBN_NM = "_self"
                    Case "B"
                        BD_RD_KBN_NM = "_blank"
                End Select 

                BD_BNR_MAKE_NM = ""
                If BD_BNR_MAKE = "2" Then 
                    BD_BNR_MAKE_NM = "img2"
                End If 

                If BD_LNK_URL <> "" Then 
                    BD_LNK_URL = Replace(BD_LNK_URL, "''", "'")
                End If 
        %>
                <li class="<%=BD_BNR_MAKE_NM%>">
                    <% If BD_LNK_URL <> "" Then %>
                        <!-- 링크가 있을 경우 Set S -->
                        <% If BD_RD_KBN = "P" Then %>
                            <!-- 팝업일 경우 -->
                            <a href="javascript:window.open('<%=BD_LNK_URL%>');"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
                        <% Else %>
                            <a href="<%=BD_LNK_URL%>" target="<%=BD_RD_KBN_NM%>"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
                        <% End If %>
                        <!-- 링크가 있을 경우 Set E -->
                    <% Else %>
                        <!-- 링크가 없을 경우 Set S -->
                        <img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>">
                        <!-- 링크가 없을 경우 Set E -->
                    <% End If %>
                </li>
        <%
                Next 
        %>
    </ul>
<% End If %>
<!-- 바텀 배너 E -->
