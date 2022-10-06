<%
Const cdoSMTPPort   = 25
Const cdoBasic      = 1
Const cdoCharset    = "utf-8"

' ######################################################################
'   Function name   : sendMail
'   Parameter       :
'                       fromEmail   = 발송 이메일
'                       fromName    = 발송자명
'                       toEmail     = 수신 이메일
'                       toName      = 수신자명
'                       subject     = 제목
'                       content     = 내용
'                       attachs     = 첨부파일(Array)
'   Return          :
'   Description     : Send Mail
' ######################################################################
Sub sendMail(ByVal fromEmail, ByVal fromName, ByVal toEmail, ByVal toName, ByVal subject, ByVal content, ByVal attachs)
    Dim objMessage, objConfig, objAttach
    Dim objFso
    Dim arrServerSoftware
    Dim strFrom : strFrom = ""
    Dim strTo : strTo = ""
    Dim f

    If IsNull(fromEmail) Then fromEmail = ""
    If IsNull(fromName) Then fromName = ""
    If IsNull(toEmail) Then toEmail = ""
    If IsNull(toName) Then toName = ""

    If fromEmail = "" Or toEmail = "" Then Exit Sub

    strFrom = fromEmail
    If fromName <> "" Then strFrom = "<"& strFrom &">"& fromName
    strTo = toEmail
    If toName <> "" Then strTo = "<"& strTo &">"& toName
    If Not IsArray(attachs) Then attachs = Array(attachs)

    On Error Resume Next

    arrServerSoftware = Split(Request.ServerVariables("SERVER_SOFTWARE"), "/")

        Set objMessage = Server.CreateObject("CDO.Message")
        Set objConfig = Server.CreateObject("CDO.Configuration")

        ' Setting the SMTP Server
        With objConfig.Fields
            .Item("http://schemas.microsoft.com/cdo/configuration/languagecode") = cdoCharset

'       If flag2Bool(cfgIsOutsideSmtp) Then
'           .Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 ' 1: 로컬(SMTP), 2 : 외부(SMTP)
'           .Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = cfgSmtpServer
'           .Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = cdoBasic
'           .Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = cfgSmtpId
'           .Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = cfgSmtpPw
'       Else
            .Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 1 ' 1: 로컬(SMTP), 2 : 외부(SMTP)
            .Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "localhost"
            .Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory") = "C:\Inetpub\mailroot\Pickup" ' Pickup 디렉토리 설정
'       End If

            .Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = cdoSMTPPort
            .Item("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30 ' 연결 시간
            .Update
        End With

        With objMessage
            Set .Configuration      = objConfig
            .BodyPart.Charset       = cdoCharset
            .To                     = strTo
            .From                   = strFrom
            .Subject                = subject
            .HTMLBody               = content
            .HTMLBodyPart.Charset   = cdoCharset

            ' 첨부파일 처리
            If IsArray(attachs) Then
                Set objFso = Server.CreateObject("Scripting.FileSystemObject")

                For f=0 To UBound(attachs)
                    If null2Blank(attachs(f)) <> "" Then
                        attachs(f) = Server.MapPath(attachs(f))

                        If objFso.FileExists(attachs(f)) Then
                            Set objAttach = .AddAttachment(attachs(f))
                        End If
                    End If
                Next

                Set objFso = Nothing

                If IsObject(objAttach) Then
                    objAttach.ContentMediaType = "application/octet-stream"
                End If
            End If

            .Fields.Update
            .Send
        End With

        Set objConfig = Nothing

        Set objMessage = Nothing

    If Err.Number <> 0 Then
        With Response
            .Write "<table cellpadding='0' cellspacing='0' border='0' width='100%'>"
            .Write "<tr><td style='font-size:12px'><strong>메일발송 중 오류가 발생 했습니다.</strong></td></tr>"
            .Write "<tr height='2'><td bgcolor='#CCCCCC'></td></tr>"
            .Write "<tr height='20'><td></td></tr>"
            .Write "<tr><td style='font-size:12px;color:#CC0000'><strong>오류 내용:</strong></td></tr>"
            .Write "<tr><td style='font-size:12px;color:#CC0000'>"& Err.Description &"</td></tr>"
            .Write "<tr height='20'><td></td></tr>"
            .Write "<tr><td style='font-size:12px;'>위의 오류 내용을 사이트 관리자에게 문의해 주시기 바랍니다.</td></tr>"
            .Write "</table>"
        End With
        Err.Clear
        Response.End
    End If
End Sub
%>
