<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 - 게시판관리 - 공통
' 모듈기능 : 게시판관리 공통게시판 Process
' 파 일 명 : board_cate.asp
' 작성일자 : 2017-02-27
' 작 성 자 : 박영순
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------

'------------------------------
' 게시판 설정 정보
'------------------------------
	arrParams = Array( _
		DbCon.makeParam("@BM_BRD_CD", adVarchar, adParamInput, 10, bcd)_
	)

	Set Rs = DbCon.ExecSPReturnRS("P_BRD_MST_VIEW", arrParams, DBSDIJBRD)

	If Not Rs.bof And Not Rs.eof Then
		BM_BRD_TYPE = Rs("BM_BRD_TYPE") '게시판 종류
		BM_BRD_PATH = Rs("BM_BRD_PATH") '파일경로
		BM_BRD_NM= Rs("BM_BRD_NM") '게시판명
		BM_WRITE_FLG= Rs("BM_WRITE_FLG") '글쓰기 사용 플래그
		BM_REPLY_FLG= Rs("BM_REPLY_FLG") '댓글 사용 플래그
		BM_MENT_FLG= Rs("BM_MENT_FLG") '덧글 사용 플래그
		BM_SCRET_FLG= Rs("BM_SCRET_FLG") '비밀글 사용 플래그
		BM_ATTACH_FLG= Rs("BM_ATTACH_FLG") '파일 첨부 사용 플래그
	End If



'------------------------------
' 상품(오픈) 유형 리스트
'------------------------------
Function FN_ITEM_TYPE_LIST(ByVal DBCon, ByVal vItemType, ByVal vTagName, ByVal vTagVal)
	Dim htmlText, tSelected

	arrParams = Array( _
		DbCon.makeParam("@ITEM_TYPE", adChar, adParamInput, 6, vItemType) _
	)

	fnList = DbCon.ExecRsList("P_ITEM_TYPE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

	htmlText = ""
	htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' >" & vbcrlf
	htmlText = htmlText & "    <option value=''>선택하세요</option>" & vbcrlf

	If IsArray(fnList) Then
		For i=0 To fnCnt
			vCode = fnList(0,i)
			vName = fnList(1,i)
			tSelected = ""
			If CStr(vCode) = CStr(vTagVal) Then
				tSelected = " selected"
			End If
			htmlText = htmlText & "    <option value='" & vCode & "'" & tSelected & ">" & vName & "</option>" & vbCrlf
		Next
	End If

	htmlText = htmlText & "</select>" & vbcrlf

	FN_ITEM_TYPE_LIST = htmlText
End Function


'------------------------------
' 게시판 공통 코드
'------------------------------
Function FN_COMMON_BRD_CATE_LIST(ByVal DBCon, ByVal vBcd, ByVal vCode,  ByVal vTagCase, ByVal vTagName, ByVal vTitleName, ByVal vOptionName,  ByVal vTagVal)
	Dim htmlText, tSelected

	arrParams = Array( _
		DbCon.MakeParam("@BM_BRD_CD",adVarchar, adParamInput, 10, vBcd), _
		DbCon.MakeParam("@CT_CD",adInteger, adParamInput, 0, vCode) _
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
			htmlText = htmlText & "<select class='select select-mid' title='" & vTitleName & "' name='" & vTagName & "' >" & vbcrlf
			htmlText = htmlText & "    <option value=''>" & vOptionName & "</option>" & vbcrlf

			If IsArray(fnList) Then
				For i=0 To fnCnt
					vCdCode     = fnList(0,i)
					vCdName     = fnList(1,i)

					tSelected = ""
					If CStr(vCdCode) = CStr(vTagVal) Then
						tSelected = " selected"
					End If

					htmlText = htmlText & "    <option value='" & vCdCode & "'" & tSelected & ">" & vCdName & "</option>" & vbCrlf
				Next
			End If

			htmlText = htmlText & "</select>" & vbcrlf
	End Select
	FN_COMMON_BRD_CATE_LIST = htmlText
End Function
%>

