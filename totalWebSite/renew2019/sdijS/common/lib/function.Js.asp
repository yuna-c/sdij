<%
' ######################################################################
'	Function name	: jsmsg
'	Parameter		:
'			msg						= Alert 경고 메시지
'			mode					= 구분코드
'	Return				:
'	Description		: Alert 경고 메세지후 종료/이전페이지가기/창닫기
' ######################################################################
Sub jsmsg(ByVal msg, ByVal mode)
	Dim strJs

	If IsNull(mode) Then mode = ""

	If Err.Number = 0 Then
		msg = Replace(msg, "'", "\'")

		strJs = "<script type='text/javascript'  charset='euc-kr'><!--"& vbCrLf

		strJs = strJs &"alert('"& msg &"');"& vbCrLf

		If mode = "B" Then
			strJs = strJs &"history.back();"& vbCrLf
		ElseIf mode = "BB" Then
			strJs = strJs &"history.go(-2);"& vbCrLf
		ElseIf mode = "C" Then
			strJs = strJs &"top.window.close();"& vbCrLf
		ElseIf mode = "R" Then
			strJs = strJs &"opener.location.reload();"& vbCrLf
		End If

		strJs = strJs &"//--></script>"

		Response.Write strJs
	End If

End Sub

' ######################################################################
'	Function name	: jsmsgLink
'	Parameter		:
'			msg						= Alert 경고 메시지
'			url						= 이동 페이지 URL
'			mode					= 구분코드
'	Return				:
'	Description		: Alert 경고 메세지후 페이지 이동
' ######################################################################
Sub jsmsgLink(ByVal msg, ByVal url, ByVal mode)
	Dim strJs

	If IsNull(mode) Then mode = ""

	If Err.Number = 0 Then
		msg = Replace(msg, "'", "\'")
		url = Replace(url, "'", "\'")

		strJs = "<script type='text/javascript'  charset='UTF-8'><!--"& vbCrLf
		strJs = strJs &"var url = '"& url &"';"& vbCrLf
		strJs = strJs &"alert('"& msg &"');"& vbCrLf

		If mode = "P" Then
			strJs = strJs &"parent.location.replace(url);"& vbCrLf
		ElseIf mode = "O" Then
			strJs = strJs &"opener.location.replace(url);"& vbCrLf
		ElseIf mode = "OC" Then
			strJs = strJs &"opener.location.replace(url);"& vbCrLf
			strJs = strJs &"window.close();"& vbCrLf
		ElseIf mode = "T" Then
			strJs = strJs &"top.location.replace(url);"& vbCrLf
		Else
			strJs = strJs &"location.replace(url);"& vbCrLf
		End If

		strJs = strJs &"//--></script>"

		Response.Write strJs
	End If

'	If Not Db Is Nothing Then Set Db = Nothing
'	Response.End
End Sub

' ######################################################################
'	Function name	: jsmsgReload
'	Parameter		:
'			msg						= Alert 경고 메시지
'			mode					= 구분코드
'	Return				:
'	Description		: Alert 경고 메세지후 페이지 리로드
' ######################################################################
Sub jsmsgReload(ByVal msg, ByVal mode)
	Dim strJs
	Dim strTarget : strTarget = ""

	If IsNull(mode) Then mode = ""

	If Err.Number = 0 Then
		msg = Replace(msg, "'", "\'")

		If mode = "O" Or mode = "C" Then
			strTarget = "opener."
		ElseIf mode = "P" Then
			strTarget = "parent."
		End If

		strJs = "<script type='text/javascript'><!--"& vbCrLf
		strJs = strJs &"alert('"& msg &"');"& vbCrLf
		strJs = strJs & strTarget &"location.reload();"& vbCrLf

		If mode = "C" Then
			strJs = strJs &"window.close();"& vbCrLf
		End If

		strJs = strJs &"//--></script>"

		Response.Write strJs
	End If

	If Not Db Is Nothing Then Set Db = Nothing
	Response.End
End Sub

' ######################################################################
'	Function name	: gotoBack
'	Parameter		:
'	Return				:
'	Description		: 이전페이지가기
' ######################################################################
Sub gotoBack()
	Dim strJs

	If Err.Number = 0 Then
		strJs = "<script type='text/javascript'><!--"& vbCrLf
		strJs = strJs &"history.back();"& vbCrLf
		strJs = strJs &"//--></script>"

		Response.Write strJs
	End If

	If Not Db Is Nothing Then Set Db = Nothing
	Response.End
End Sub

' ######################################################################
'	Function name	: gotoURL
'	Parameter		:
'			url						= 이동페이지 URL
'			mode					= 구분코드
'	Return				:
'	Description		: 페이지이동
' ######################################################################
Sub gotoURL(ByVal url, ByVal mode)
	Dim strJs

	If IsNull(mode) Then mode = ""

	If Err.Number = 0 Then
		If mode = "REDIRECT" Then
			If Not DbCon Is Nothing Then Set DbCon = Nothing

			Response.Redirect url
			Response.End
		Else
			url = Replace(url, "'", "\'")

			strJs = "<script type='text/javascript'><!--"& vbCrLf
			strJs = strJs &"var url = '"& url &"';"& vbCrLf

			If mode = "T" Then
				strJs = strJs &"top.location.replace(url);"& vbCrLf
			ElseIf mode = "O" Then
				strJs = strJs &"opener.location.replace(url);"& vbCrLf
				strJs = strJs &"window.close();"& vbCrLf
			ElseIf mode = "OP" Then
				strJs = strJs &"opener.parent.location.replace(url);"& vbCrLf
				strJs = strJs &"window.close();"& vbCrLf
			ElseIf mode = "OT" Then
				strJs = strJs &"opener.top.location.replace(url);"& vbCrLf
				strJs = strJs &"window.close();"& vbCrLf
			ElseIf mode = "P" Then
				strJs = strJs &"parent.location.replace(url);"& vbCrLf
			Else
				strJs = strJs &"location.replace(url);"& vbCrLf
			End If

			strJs = strJs &"//--></script>"

			Response.Write strJs
		End If
	End If

	If Not Db Is Nothing Then Set Db = Nothing
	Response.End
End Sub

' ######################################################################
'	Function name	: submitURL
'	Parameter		:
'			action					= Form Action
'			target					= Form Target
'			arrParams			= Form Parameter Array
'	Return				:
'	Description		: 페이지이동(POST)
' ######################################################################
Sub submitURL(ByVal url, ByVal target, ByVal arrParams)
	Dim strTag
	Dim paramsLen
	Dim f

	If IsNull(target) Then target = ""

	If Err.Number = 0 Then
		strTag = "<!DOCTYPE HTML PUBLIC ""-//W3C//DTD HTML 4.01 Transitional//EN"">"& vbCrLf
		strTag = strTag &"<html><body>"& vbCrLf

		strTag = strTag &"<form id='goFrm' name='goFrm' method='post'"
		If target <> "" Then strTag = strTag &" target='"& target &"'"
		strTag = strTag &" action='"& url &"'>"& vbCrLf
		If IsArray(arrParams) Then
			paramsLen = UBound(arrParams)
			For f=0 To paramsLen
				If IsArray(arrParams(f)) Then
					If UBound(arrParams(f)) = 1 Then
						strTag = strTag &"<input type='hidden' name='"& Trim(arrParams(f)(0)) &"' value='"& Trim(arrParams(f)(1)) &"' />"& vbCrLf
					End If
				End If
			Next
		End If
		strTag = strTag &"</form>"& vbCrLf

		strTag = strTag &"<script type=""text/javascript""><!--"& vbCrLf
		strTag = strTag &"document.goFrm.submit();"& vbCrLf
		strTag = strTag &"//--></script>"& vbCrLf

		strTag = strTag &"</body></html>"& vbCrLf

		Response.Write strTag
	End If

	If Not Db Is Nothing Then Set Db = Nothing
	Response.End
End Sub

' ######################################################################
'	Function name	: windowClose
'	Parameter		:
'	Return				:
'	Description		: 팝업 닫기
' ######################################################################
Sub windowClose()
	Dim strJs

	If Err.Number = 0 Then
		strJs = "<script type='text/javascript'><!--"& vbCrLf
		strJs = strJs &"if (opener) {"& vbCrLf
		strJs = strJs &"window.close();"& vbCrLf
		strJs = strJs &"} else {"& vbCrLf
		strJs = strJs &"location.href = '"& SITE_URL &"';"& vbCrLf
		strJs = strJs &"}"& vbCrLf
		strJs = strJs &"//--></script>"

		Response.Write strJs
	End If

	If Not Db Is Nothing Then Set Db = Nothing
	Response.End
End Sub

' ######################################################################
'	Function name	: pageReload
'	Parameter		:
'			mode					= 구분코드
'	Return				:
'	Description		:
' ######################################################################
Sub pageReload(ByVal mode)
	Dim strJs
	Dim strTarget : strTarget = ""

	If IsNull(mode) Then mode = ""

	If Err.Number = 0 Then
		If mode = "O" Or mode = "C" Then
			strTarget = "opener."
		ElseIf mode = "P" Then
			strTarget = "parent."
		End If

		strJs = "<script type='text/javascript'><!--"& vbCrLf
		strJs = strJs & strTarget &"location.reload();"& vbCrLf

		If mode = "C" Then
			strJs = strJs &"window.close();"& vbCrLf
		End If

		strJs = strJs &"//--></script>"

		Response.Write strJs
	End If

	If Not Db Is Nothing Then Set Db = Nothing
	Response.End
End Sub

' ######################################################################
'	Function name	: setLoadingMsg
'	Parameter		:
'			msg						= 메세지
'	Return				:
'	Description		:
' ######################################################################
Sub setLoadingMsg(ByVal msg)
	Dim strJs

	Response.Buffer = True

	If IsNull(msg) Or msg = "" Then msg = "<strong style='color:#EC1385'>데이터</strong>를 로딩하고 있습니다.<br>잠시만 기다려주세요."

	strJs = "<script type='text/javascript'><!--"& vbCrLf

	strJs = strJs &"function showLoading() {"& vbCrLf
	strJs = strJs &"document.write(""<div id='loadingBox' style='position:absolute; visibility:hidden;'>"");"& vbCrLf
	strJs = strJs &"document.write(""<table border='0' cellpadding='0' cellspacing='0'>"");"& vbCrLf
	strJs = strJs &"document.write(""<tr><td bgcolor='#F7F7F7' style='padding:15px 20px 15px 20px;'>"");"& vbCrLf
	strJs = strJs &"document.write(""<table width='200' align='center' border='0' cellspacing='0' cellpadding='0'>"");"& vbCrLf
	strJs = strJs &"document.write(""<tr><td style='text-align:center; font-size:9pt; color:#808080;'>"");"& vbCrLf
	strJs = strJs &"document.write(""<strong>"& msg &"</strong>"");"& vbCrLf
	strJs = strJs &"document.write(""</td></tr>"");"& vbCrLf
	strJs = strJs &"document.write(""<tr><td style='padding:5px; text-align:center;'><img src='"& adminImgURL2 &"/loading.gif'></td></tr>"");"& vbCrLf
	strJs = strJs &"document.write(""</table>"");"& vbCrLf
	strJs = strJs &"document.write(""</td></tr>"");"& vbCrLf
	strJs = strJs &"document.write(""</table>"");"& vbCrLf
	strJs = strJs &"document.write(""</div>"");"& vbCrLf
	strJs = strJs &"var x = (document.body.offsetWidth/2) - (document.getElementById('loadingBox').offsetWidth/2);"& vbCrLf
	strJs = strJs &"var y = (document.body.offsetHeight/2) - (document.getElementById('loadingBox').offsetHeight/2);"& vbCrLf
	strJs = strJs &"document.getElementById('loadingBox').style.top = y;"& vbCrLf
	strJs = strJs &"document.getElementById('loadingBox').style.left = x;"& vbCrLf
	strJs = strJs &"document.getElementById('loadingBox').style.visibility = 'visible';"& vbCrLf
	strJs = strJs &"}"& vbCrLf

	strJs = strJs &"function hideLoading() {"& vbCrLf
	strJs = strJs &"document.getElementById('loadingBox').style.visibility = 'hidden';"& vbCrLf
	strJs = strJs &"}"& vbCrLf

	strJs = strJs &"showLoading();"& vbCrLf

	strJs = strJs &"if (document.all) window.attachEvent('onload', hideLoading);"& vbCrLf
	strJs = strJs &"else if (window.addEventListener) window.addEventListener('load', hideLoading, false);"& vbCrLf
	strJs = strJs &"else if (window.attachEvent) window.attachEvent('load', hideLoading);"& vbCrLf

	strJs = strJs &"//--></script>"

	Response.Write strJs
	Response.Flush
End Sub
%>
