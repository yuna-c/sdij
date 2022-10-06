<!-- #include virtual="/common/include/config.asp"-->
<%

'------------------------------
' VARS
'------------------------------
mem_id      = fncRequestCookie("mem_id")
viewCnt     = fncRequestForm("viewCnt")


'------------------------------
' QUERY
'------------------------------
Dim paramInfo(0)
paramInfo(0) = DbCon.MakeParam("@view_cnt",adInteger,adParamInput,4, viewCnt)
vNoticeList = DbCon.ExecRsList("pNoticeList", adCmdStoredProc, paramInfo, vNoticeListCnt, nothing)

%>

                        <% 
                            If IsArray(vNoticeList) Then
                                For i=0 To vNoticeListCnt
                                    totalCnt        = vNoticeList(0,i)
                                    rownum          = vNoticeList(1,i)
                                    tblNoticeIdx    = vNoticeList(2,i)
                                    noticeTitle     = vNoticeList(3,i)
                                    regDate         = vNoticeList(4,i)
                        %>
                                    <tr>
                                        <td class="txt-center"><%=rownum%></td>
                                        <td><a href="notice_detail.asp?tblNoticeIdx=<%=tblNoticeIdx%>" class="tit-link"><%=noticeTitle%></a></td>
                                        <td class="color-gray txt-center"><%=regDate%></td>
                                    </tr>
                        <%
                                Next
                            Else 
                        %>
                                    <tr>
                                        <td colspan="3" class="txt-center">공지사항이 없습니다.</td>
                                    </tr>
                        <%
                            End If
                        %>