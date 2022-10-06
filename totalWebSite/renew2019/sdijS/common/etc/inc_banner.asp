<%
bnr_seq = 3 ' 배너관리(웹)

arrParams = Array( _
    DbCon.makeParam("@BD_BNR_SEQ", adInteger, adParamInput, 4, bnr_seq), _
    DbCon.makeParam("@BD_DSP_POS", adVarchar, adParamInput, 1, "L"), _
    DbCon.makeParam("@BD_DSP_URL", adVarchar, adParamInput, 300, LCase(RootUrl)) _
)

vLeftBannerList = DbCon.ExecRsList("P_BNR_DTL_BANNER_LIST", adCmdStoredProc, arrParams, vLeftBannerListCnt, Nothing)

arrParams = Array( _
    DbCon.makeParam("@BD_BNR_SEQ", adInteger, adParamInput, 4, bnr_seq), _
    DbCon.makeParam("@BD_DSP_POS", adVarchar, adParamInput, 1, "R"), _
    DbCon.makeParam("@BD_DSP_URL", adVarchar, adParamInput, 300, LCase(RootUrl)) _
)

vRightBannerList = DbCon.ExecRsList("P_BNR_DTL_BANNER_LIST", adCmdStoredProc, arrParams, vRightBannerListCnt, Nothing)
%>
<!-- 배너 S -->
<!-- 왼쪽 배너 -->
<% If IsArray(vLeftBannerList) Then %>
    <ul data-banner="left">
        <% 
            For i=0 To vLeftBannerListCnt 
                BD_DTL_SEQ      = vLeftBannerList(0,i)
                BD_BNR_NM       = vLeftBannerList(1,i)
                BD_IMG_URL      = vLeftBannerList(2,i)
                BD_LNK_URL      = vLeftBannerList(3,i)
                BD_RD_KBN       = vLeftBannerList(4,i)
                BD_POP_W        = vLeftBannerList(5,i)
                BD_POP_H        = vLeftBannerList(6,i)
                BD_BNR_MAKE     = vLeftBannerList(7,i)
                BD_DSP_POS      = vLeftBannerList(8,i)

                BD_RD_KBN_NM = ""
                Select Case BD_RD_KBN
                    Case "S"
                        BD_RD_KBN_NM = "_self"
                    Case "B"
                        BD_RD_KBN_NM = "_blank"
                End Select 

                If BD_LNK_URL <> "" Then 
                    BD_LNK_URL = Replace(BD_LNK_URL, "''", "'")
                End If 
        %>
                <li>
                    <% If BD_LNK_URL <> "" Then %>
                        <!-- 링크가 있을 경우 Set S -->
                        <% If BD_RD_KBN = "P" Then %>
                            <!-- 팝업일 경우 -->
                            <a href="javascript:sdijPop2('<%=BD_LNK_URL%>','','<%=BD_POP_W%>','<%=BD_POP_H%>');"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
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

<!-- 오른쪽 배너 -->
<% If IsArray(vRightBannerList) Then %>
    <ul data-banner="right">
        <% 
            For i=0 To vRightBannerListCnt 
                BD_DTL_SEQ      = vRightBannerList(0,i)
                BD_BNR_NM       = vRightBannerList(1,i)
                BD_IMG_URL      = vRightBannerList(2,i)
                BD_LNK_URL      = vRightBannerList(3,i)
                BD_RD_KBN       = vRightBannerList(4,i)
                BD_POP_W        = vRightBannerList(5,i)
                BD_POP_H        = vRightBannerList(6,i)
                BD_BNR_MAKE     = vRightBannerList(7,i)
                BD_DSP_POS      = vRightBannerList(8,i)

                BD_RD_KBN_NM = ""
                Select Case BD_RD_KBN
                    Case "S"
                        BD_RD_KBN_NM = "_self"
                    Case "B"
                        BD_RD_KBN_NM = "_blank"
                End Select 

                If BD_LNK_URL <> "" Then 
                    BD_LNK_URL = Replace(BD_LNK_URL, "''", "'")
                End If 
        %>
                <li>
                    <% If BD_LNK_URL <> "" Then %>
                        <!-- 링크가 있을 경우 Set S -->
                        <% If BD_RD_KBN = "P" Then %>
                            <!-- 팝업일 경우 -->
                            <a href="javascript:sdijPop2('<%=BD_LNK_URL%>','','<%=BD_POP_W%>','<%=BD_POP_H%>');"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
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
<!-- 배너 E -->
