<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 - 게시판관리 - 공통
' 모듈기능 : 게시판관리 공통게시판 등록/수정
' 파 일 명 : board_cate.asp
' 작성일자 : 2017-02-27
' 작 성 자 : 박영순
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------
If Not IsObject(DbCon) Then Response.End


'------------------------------
' page navi code
'------------------------------

'------------------------------
' VARS
'------------------------------


bcd = fncRequestForm("bcd")
code = fncRequestForm("code")

vTagCase = "S"
vTagVal = fncRequestForm("tcode")
'------------------------------
' QUERY
'------------------------------
	arrParams = Array( _
		DbCon.MakeParam("@BM_BRD_CD",adVarchar, adParamInput, 10, bcd), _
		DbCon.MakeParam("@CT_CD",adInteger, adParamInput, 0, code) _
	)

	fnList = DbCon.ExecRsList("P_COMMON_BRD_CATE_LIST", adCmdStoredProc, arrParams, fnCnt, DBSDIJBRD)

	htmlText = ""

	Select Case UCase(vTagCase)
		Case "R", "C"
			If IsArray(fnList) Then
				For i=0 To fnCnt
					vCdCode     = fnList(0,i)
					vCdName     = fnList(1,i)

					tSelected = ""
					If UCase(vTagCase) = "R" Then
						If CStr(vCdCode) = CStr(vTagVal) Then
							tSelected = " checked"
						End If

						htmlText = htmlText & "<input type='radio' name='" & vTagName & "' class='flat' value='" & vCdCode & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
					Else
						If InStr(CStr(vTagVal), CStr(vCdCode)) > 0 Then
							tSelected = " checked"
						End If

						htmlText = htmlText & "<input type='checkbox' name='" & vTagName & "' class='flat' value='" & vCdCode & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
					End If
				Next
			End If
		Case "S"
			htmlText = htmlText & "<option value=''>선택하세요</option>"

			If IsArray(fnList) Then
				For i=0 To fnCnt
					vCdCode     = fnList(0,i)
					vCdName     = fnList(1,i)

					tSelected = ""
					If CStr(vCdCode) = CStr(vTagVal) Then
						tSelected = " selected"
					End If

					htmlText = htmlText & "    <option value='" & vCdCode & "'" & tSelected & ">" & vCdName & "</option>"
				Next
			End If
	End Select
	return_val = htmlText

'------------------------------
' ETC
'------------------------------
Response.write "{""return_val"":""" & return_val& """}"

DbCon.Dispose
Set DbCon = Nothing
%>
