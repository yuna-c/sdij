<%
' 시험 리스트 Set s
Function FN_EXAM_MST_CODE_LIST(ByVal DBCon, ByVal vOpenFlag, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@EM_OPEN_FLG", adVarchar, adParamInput, 1, vOpenFlag) _
    )

    fnList = DbCon.ExecRsList("P_EXAM_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_EXAM_MST_CODE_LIST = htmlText
End Function
' 시험 리스트 Set e

' 과목 리스트 Set s
Function FN_SUB_MST_CODE_LIST(ByVal DBCon, ByVal vOpenFlag, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@SM_OPEN_FLG", adVarchar, adParamInput, 1, vOpenFlag) _
    )

    fnList = DbCon.ExecRsList("P_SUB_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_SUB_MST_CODE_LIST = htmlText
End Function
' 과목 리스트 Set e

' 세부과목 리스트 Set s
Function FN_SUB_DTL_CODE_LIST_FRONT(ByVal DBCon, ByVal vOpenFlag, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@SD_OPEN_FLG", adVarchar, adParamInput, 1, vOpenFlag) _
    )

    fnList = DbCon.ExecRsList("P_SUB_DTL_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' id='" & vTagName & "' name='" & vTagName & "' data-size='5'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_SUB_DTL_CODE_LIST_FRONT = htmlText
End Function
' 세부과목 리스트 Set e

' 캠퍼스 리스트 Set s
Function FN_CAMP_MST_CODE_LIST(ByVal DBCon, ByVal vOpenFlag, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@CM_OPEN_FLG", adVarchar, adParamInput, 1, vOpenFlag) _
    )

    fnList = DbCon.ExecRsList("P_CAMP_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_CAMP_MST_CODE_LIST = htmlText
End Function
' 캠퍼스 리스트 Set e

' 캠퍼스 리스트 Front Set s
Function FN_CAMP_MST_CODE_LIST_FRONT(ByVal DBCon, ByVal vOpenFlag, ByVal vTagClass, ByVal vDataSize, ByVal vNullName, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@CM_OPEN_FLG", adVarchar, adParamInput, 1, vOpenFlag) _
    )

    fnList = DbCon.ExecRsList("P_CAMP_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<span data-form='select' class='" & vTagClass & "'>" & vbcrlf
    htmlText = htmlText & "    <select class='select select-mid' name='" & vTagName & "' data-size='" & vDataSize & "'>" & vbcrlf
    htmlText = htmlText & "        <option value=''>" & blank2Text(vNullName, "선택") & "</option>" & vbcrlf

    If IsArray(fnList) Then
        For i=0 To fnCnt
            vCode = fnList(0,i)
            vName = fnList(1,i)

            htmlText = htmlText & "    <option value='" & vCode & "'" & isSelected(vCode, vTagVal) & ">" & vName & "</option>" & vbCrlf
        Next
    End If

    htmlText = htmlText & "    </select>" & vbcrlf
    htmlText = htmlText & "</span>" & vbcrlf

    FN_CAMP_MST_CODE_LIST_FRONT = htmlText
End Function
' 캠퍼스 리스트 Front Set e

' 캠퍼스 클래스 리스트 Front Set s
Function FN_CAMP_CLASS_CODE_LIST_FRONT(ByVal DBCon, ByVal vTagClass, ByVal vDataSize, ByVal vNullName, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@OPEN_FLG", adVarchar, adParamInput, 1, "Y") _
    )

    fnList = DbCon.ExecRsList("P_CAMP_CLASS_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    'htmlText = htmlText & "<span data-form='select' class='" & vTagClass & "'>" & vbcrlf
    htmlText = htmlText & "    <select class='select select-mid' name='" & vTagName & "' data-size='" & vDataSize & "'>" & vbcrlf
    htmlText = htmlText & "        <option value=''>" & blank2Text(vNullName, "선택") & "</option>" & vbcrlf

    If IsArray(fnList) Then
        For i=0 To fnCnt
            vCode       = fnList(0,i)
            vName       = fnList(1,i)
            vNameSub    = fnList(2,i)

            htmlText = htmlText & "    <option value='" & vCode & "'" & isSelected(CStr(vCode), vTagVal) & ">" & vNameSub & "</option>" & vbCrlf
        Next
    End If

    htmlText = htmlText & "    </select>" & vbcrlf
    'htmlText = htmlText & "</span>" & vbcrlf

    FN_CAMP_CLASS_CODE_LIST_FRONT = htmlText
End Function
' 캠퍼스 클래스 리스트 Front Set e

' 강사 리스트
Function FN_TEC_MST_CODE_LIST(ByVal DBCon, ByVal vSubCd, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@SM_SUB_CD", adVarchar, adParamInput, 4, vSubCd) _
    )

    fnList = DbCon.ExecRsList("P_TEC_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_TEC_MST_CODE_LIST = htmlText
End Function

' 강사 리스트 - DATA(Ajax)
Function FN_TEC_MST_CODE_LIST_DATA(ByVal DBCon, ByVal vSubCd, ByRef fnList, ByRef fnCnt)
    arrParams = Array( _
        DbCon.makeParam("@SM_SUB_CD", adVarchar, adParamInput, 4, vSubCd) _
    )

    fnList = DbCon.ExecRsList("P_TEC_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)
End Function


' 사업부 리스트 Set s
Function FN_ORG_BIZ_CODE_LIST(ByVal DBCon, ByVal vOpenFlag, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@OB_OPEN_FLG", adVarchar, adParamInput, 1, vOpenFlag) _
    )

    fnList = DbCon.ExecRsList("P_ORG_BIZ_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_ORG_BIZ_CODE_LIST = htmlText
End Function
' 사업부 리스트 Set e


' 팀 리스트 Set s
Function FN_ORG_TEAM_CODE_LIST(ByVal DBCon, ByVal vBizCd, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@OT_BIZ_CD", adVarchar, adParamInput, 10, vBizCd) _
    )

    fnList = DbCon.ExecRsList("P_ORG_TEAM_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_ORG_TEAM_CODE_LIST = htmlText
End Function
' 팀 리스트 Set e

' 팀 리스트 - DATA(Ajax)
Function FN_ORG_TEAM_CODE_LIST_DATA(ByVal DBCon, ByVal vBizCd, ByRef fnList, ByRef fnCnt)
    arrParams = Array( _
        DbCon.makeParam("@OT_BIZ_CD", adVarchar, adParamInput, 10, vBizCd) _
    )

    fnList = DbCon.ExecRsList("P_ORG_TEAM_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)
End Function


' 직원 리스트 Set s
Function FN_EMP_MST_CODE_LIST(ByVal DBCon, ByVal vTeamCd, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@EM_TEAM_CD", adVarchar, adParamInput, 10, vTeamCd) _
    )

    fnList = DbCon.ExecRsList("P_EMP_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
    htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

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

    FN_EMP_MST_CODE_LIST = htmlText
End Function
' 직원 리스트 Set e

' 직원 리스트 - DATA(Ajax)
Function FN_EMP_MST_CODE_LIST_DATA(ByVal DBCon, ByVal vTeamCd, ByRef fnList, ByRef fnCnt)
    arrParams = Array( _
        DbCon.makeParam("@EM_TEAM_CD", adVarchar, adParamInput, 10, vTeamCd) _
    )

    fnList = DbCon.ExecRsList("P_EMP_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)
End Function



' 학습단계 Set s
Function FN_STD_LEV_MST_CODE_LIST(ByVal DBCon, ByVal vOpenFlag, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.makeParam("@SLM_OPEN_FLG", adVarchar, adParamInput, 1, vOpenFlag) _
    )

    fnList = DbCon.ExecRsList("P_STD_LEV_MST_CODE_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    If IsArray(fnList) Then
        For i=0 To fnCnt
            vCode = fnList(0,i)
            vName = fnList(1,i)

            tSelected = ""
            If InStr(CStr(vTagVal), CStr(vCode)) > 0 Then
                tSelected = " checked"
            End If

            htmlText = htmlText & "<input type='checkbox' name='" & vTagName & "' value='" & vCode & "' class='flat' " & tSelected & " /> <label class='control-label mr10'>" & vName & "</label>" & vbCrlf
        Next
    End If

    FN_STD_LEV_MST_CODE_LIST = htmlText
End Function
' 학습단계 Set e



' 코드 DTL Set s
Function FN_CODE_DTL_VIEW(ByVal DBCon, ByVal vCode, ByVal vActive, ByVal vTagCase, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected, vTagCaseMain, vTagCaseSub

    arrParams = Array( _
        DbCon.MakeParam("@cd_code",adVarchar,adParamInput,3, ""), _
        DbCon.MakeParam("@cd_cm_code",adVarchar,adParamInput,3, vCode), _
        DbCon.MakeParam("@cd_code_nm",adVarchar,adParamInput,50, ""), _
        DbCon.MakeParam("@cd_active",adVarchar,adParamInput,1, vActive) _
    )
    fnList = DbCon.ExecRsList("P_CODE_DTL_VIEW", adCmdStoredProc, arrParams, fnCnt, Nothing)

    vTagCaseMain    = ""
    vTagCaseSub     = ""
    If Len(vTagCase) = 2 Then
        vTagCaseMain    = Left(vTagCase,1)
        vTagCaseSub     = Right(vTagCase,1)
    Else
        vTagCaseMain    = vTagCase
    End If


    htmlText = ""
    Select Case UCase(vTagCaseMain)
        Case "R", "C"
            If IsArray(fnList) Then
                For j=0 To fnCnt
                    vCdCode     = fnList(0,j)
                    vCmCode     = fnList(1,j)
                    vCmName     = fnList(2,j)
                    vCdName     = fnList(3,j)
                    vCdClass    = fnList(4,j)

                    ' 코드 및 이름 생성 Set s
                    If vTagCaseSub = "C" Then
                        vCdClass    = vCdCode
                        vCdName     = vCdCode

                        If vCmCode = "902" And vCdCode = "002" Then
                            vCdClass    = "02"
                            vCdName     = "02"
                        End If

                    ElseIf vTagCaseSub = "N" Then
                        vCdClass    = vCdName
                        vCdName     = vCdName

                    End If
                    ' 코드 및 이름 생성 Set e

                    tSelected = ""
                    If UCase(vTagCaseMain) = "R" Then
                        If CStr(vCdClass) = CStr(vTagVal) Then
                            tSelected = " checked"
                        End If

                        htmlText = htmlText & "<input type='radio' name='" & vTagName & "' class='flat' value='" & vCdClass & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
                    Else
                        If InStr(CStr(vTagVal), CStr(vCdClass)) > 0 Then
                            tSelected = " checked"
                        End If

                        htmlText = htmlText & "<input type='checkbox' name='" & vTagName & "' class='flat' value='" & vCdClass & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
                    End If
                Next
            End If
        Case "S"
            htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control' data-size='6'>" & vbcrlf
            htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

            If IsArray(fnList) Then
                For j=0 To fnCnt
                    vCdCode     = fnList(0,j)
                    vCmCode     = fnList(1,j)
                    vCmName     = fnList(2,j)
                    vCdName     = fnList(3,j)
                    vCdClass    = fnList(4,j)

                    ' 코드 및 이름 생성 Set s
                    If vTagCaseSub = "C" Then
                        vCdClass    = vCdCode
                        vCdName     = vCdCode

                        If vCmCode = "902" And vCdCode = "002" Then
                            vCdClass    = "02"
                            vCdName     = "02"
                        End If

                    ElseIf vTagCaseSub = "N" Then
                        vCdClass    = vCdName
                        vCdName     = vCdName

                    ElseIf vTagCaseSub = "D" Then
                        vCdClass    = vCdCode
                        vCdName     = vCdName

                    End If
                    ' 코드 및 이름 생성 Set e

                    tSelected = ""
                    If CStr(vCdClass) = CStr(vTagVal) Then
                        tSelected = " selected"
                    End If

                    htmlText = htmlText & "    <option value='" & vCdClass & "'" & tSelected & ">" & vCdName & "</option>" & vbCrlf
                Next
            End If

            htmlText = htmlText & "</select>" & vbcrlf
    End Select
    FN_CODE_DTL_VIEW = htmlText
End Function
' 코드 DTL Set s

' 코드 DTL Front Set s
Function FN_CODE_DTL_VIEW_FRONT(ByVal DBCon, ByVal vCode, ByVal vActive, ByVal vTagCase, ByVal vTagClass, ByVal vDataSize, ByVal vNullName, ByVal vTagName, ByVal vTagVal)
    Dim htmlText, tSelected, vTagCaseMain, vTagCaseSub

    arrParams = Array( _
        DbCon.MakeParam("@cd_code",adVarchar,adParamInput,3, ""), _
        DbCon.MakeParam("@cd_cm_code",adVarchar,adParamInput,3, vCode), _
        DbCon.MakeParam("@cd_code_nm",adVarchar,adParamInput,50, ""), _
        DbCon.MakeParam("@cd_active",adVarchar,adParamInput,1, vActive) _
    )
    fnList = DbCon.ExecRsList("P_CODE_DTL_VIEW", adCmdStoredProc, arrParams, fnCnt, Nothing)

    vTagCaseMain    = ""
    vTagCaseSub     = ""
    If Len(vTagCase) = 2 Then
        vTagCaseMain    = Left(vTagCase,1)
        vTagCaseSub     = Right(vTagCase,1)
    Else
        vTagCaseMain    = vTagCase
    End If


    htmlText = ""
    Select Case UCase(vTagCaseMain)
        Case "R", "C"
            If IsArray(fnList) Then
                For i=0 To fnCnt
                    vCdCode     = fnList(0,i)
                    vCmCode     = fnList(1,i)
                    vCmName     = fnList(2,i)
                    vCdName     = fnList(3,i)
                    vCdClass    = fnList(4,i)

                    ' 코드 및 이름 생성 Set s
                    If vTagCaseSub = "C" Then
                        vCdClass    = vCdCode
                        vCdName     = vCdCode

                        If vCmCode = "902" And vCdCode = "002" Then
                            vCdClass    = "02"
                            vCdName     = "02"
                        End If

                    ElseIf vTagCaseSub = "N" Then
                        vCdClass    = vCdName
                        vCdName     = vCdName

                    End If
                    ' 코드 및 이름 생성 Set e

                    tSelected = ""
                    If UCase(vTagCaseMain) = "R" Then
                        If CStr(vCdClass) = CStr(vTagVal) Then
                            tSelected = " checked"
                        End If

                        htmlText = htmlText & "<input type='radio' name='" & vTagName & "' class='flat' value='" & vCdClass & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
                    Else
                        If InStr(CStr(vTagVal), CStr(vCdClass)) > 0 Then
                            tSelected = " checked"
                        End If

                        htmlText = htmlText & "<input type='checkbox' name='" & vTagName & "' class='flat' value='" & vCdClass & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
                    End If
                Next
            End If
        Case "S"
            'htmlText = htmlText & "<span data-form='select' class='" & vTagClass & "'>" & vbcrlf
            htmlText = htmlText & "    <select class='select select-mid' id='" & vTagName & "' name='" & vTagName & "' data-size='" & vDataSize & "'>" & vbcrlf
            htmlText = htmlText & "        <option value=''>" & blank2Text(vNullName, "선택") & "</option>" & vbcrlf

            If IsArray(fnList) Then
                For i=0 To fnCnt
                    vCdCode     = fnList(0,i)
                    vCmCode     = fnList(1,i)
                    vCmName     = fnList(2,i)
                    vCdName     = fnList(3,i)
                    vCdClass    = fnList(4,i)

                    ' 코드 및 이름 생성 Set s
                    If vTagCaseSub = "C" Then
                        vCdClass    = vCdCode
                        vCdName     = vCdCode

                        If vCmCode = "902" And vCdCode = "002" Then
                            vCdClass    = "02"
                            vCdName     = "02"
                        End If

                    ElseIf vTagCaseSub = "N" Then
                        vCdClass    = vCdName
                        vCdName     = vCdName

                    ElseIf vTagCaseSub = "D" Then
                        vCdClass    = vCdCode
                        vCdName     = vCdName

                    End If
                    ' 코드 및 이름 생성 Set e

                    htmlText = htmlText & "    <option value='" & vCdClass & "'" & isSelected(vCdClass, vTagVal) & ">" & vCdName & "</option>" & vbCrlf
                Next
            End If

            htmlText = htmlText & "    </select>" & vbcrlf
            'htmlText = htmlText & "</span>" & vbcrlf
    End Select
    FN_CODE_DTL_VIEW_FRONT = htmlText
End Function
' 코드 DTL Front Set s

' 코드(예외코드 제외) DTL Set s
Function FN_CODE_DTL_EXCP_VIEW(ByVal DBCon, ByVal vCode, ByVal vActive, ByVal vTagCase, ByVal vTagName, ByVal vTagVal, ByVal vExcp)
    Dim htmlText, tSelected

    arrParams = Array( _
        DbCon.MakeParam("@cd_code",adVarchar,adParamInput,3, ""), _
        DbCon.MakeParam("@cd_cm_code",adVarchar,adParamInput,3, vCode), _
        DbCon.MakeParam("@cd_code_nm",adVarchar,adParamInput,50, ""), _
        DbCon.MakeParam("@cd_active",adVarchar,adParamInput,1, vActive), _
        DbCon.MakeParam("@cd_excp",adVarchar,adParamInput,500, vExcp) _
    )
    fnList = DbCon.ExecRsList("P_CODE_DTL_EXCP_VIEW", adCmdStoredProc, arrParams, fnCnt, Nothing)

    htmlText = ""
    Select Case UCase(vTagCase)
        Case "R", "C"
            If IsArray(fnList) Then
                For i=0 To fnCnt
                    vCdCode     = fnList(0,i)
                    vCmCode     = fnList(1,i)
                    vCmName     = fnList(2,i)
                    vCdName     = fnList(3,i)
                    vCdClass    = fnList(4,i)

                    tSelected = ""
                    If UCase(vTagCase) = "R" Then
                        If CStr(vCdClass) = CStr(vTagVal) Then
                            tSelected = " checked"
                        End If

                        htmlText = htmlText & "<input type='radio' name='" & vTagName & "' class='flat' value='" & vCdClass & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
                    Else
                        If InStr(CStr(vTagVal), CStr(vCdClass)) > 0 Then
                            tSelected = " checked"
                        End If

                        htmlText = htmlText & "<input type='checkbox' name='" & vTagName & "' class='flat' value='" & vCdClass & "' " & tSelected & "/> <label class='control-label mr10'>" & vCdName & "</label>" & vbCrlf
                    End If
                Next
            End If
        Case "S"
            htmlText = htmlText & "<select class='select select-mid' name='" & vTagName & "' class='form-control'>" & vbcrlf
            htmlText = htmlText & "    <option value=''>선택</option>" & vbcrlf

            If IsArray(fnList) Then
                For i=0 To fnCnt
                    vCdCode     = fnList(0,i)
                    vCmCode     = fnList(1,i)
                    vCmName     = fnList(2,i)
                    vCdName     = fnList(3,i)
                    vCdClass    = fnList(4,i)

                    tSelected = ""
                    If CStr(vCdClass) = CStr(vTagVal) Then
                        tSelected = " selected"
                    End If

                    htmlText = htmlText & "    <option value='" & vCdClass & "'" & tSelected & ">" & vCdName & "</option>" & vbCrlf
                Next
            End If

            htmlText = htmlText & "</select>" & vbcrlf
    End Select
    FN_CODE_DTL_EXCP_VIEW = htmlText
End Function
' 코드 DTL Set s

' FRONT 메뉴 리스트 Set s
Function FN_MENU_NAVI_USER_LIST(ByVal DBCon, ByVal vSiteCd, ByVal vMenuCd, ByRef fnList, ByRef fnCnt)
    arrParams = Array( _
        DbCon.makeParam("@MN_OPEN_FLG", adVarchar, adParamInput, 1, "Y"), _
        DbCon.makeParam("@MN_SITE_CD", adVarchar, adParamInput, 6, blank2Text(vSiteCd, "905002")), _
        DbCon.makeParam("@MN_MENU_CD", adVarchar, adParamInput, 6, blank2Null(vMenuCd)) _
    )

    fnList = DbCon.ExecRsList("P_MENU_NAVI_USER_LIST", adCmdStoredProc, arrParams, fnCnt, Nothing)
End Function
' FRONT 메뉴 리스트 Set e

'교통안내 색상 표기 Set s
Function INFO_MAP(CONTENTS)
	If Trim(CONTENTS) <> "" Then
		CONTENTS = replace(CONTENTS,"[간선버스]","<span style='font-weight: bold; color:#153CBC'>간선버스</span>")
        CONTENTS = replace(CONTENTS,"[지선버스]","<span style='font-weight: bold; color:#40CB00'>지선버스</span>")
        CONTENTS = replace(CONTENTS,"[마을버스]","<span style='font-weight: bold; color:#40CB00'>마을버스</span>")
        CONTENTS = replace(CONTENTS,"[1호선]","<span style='font-weight: bold; color:#153CBC'>1호선</span>")
        CONTENTS = replace(CONTENTS,"[2호선]","<span style='font-weight: bold; color:#40CB00'>2호선</span>")
        CONTENTS = replace(CONTENTS,"[3호선]","<span style='font-weight: bold; color:#E46912'>3호선</span>")
        CONTENTS = replace(CONTENTS,"[4호선]","<span style='font-weight: bold; color:#209AF8'>4호선</span>")
        CONTENTS = replace(CONTENTS,"[5호선]","<span style='font-weight: bold; color:#600AD1'>5호선</span>")
        CONTENTS = replace(CONTENTS,"[6호선]","<span style='font-weight: bold; color:#9A7807'>6호선</span>")
        CONTENTS = replace(CONTENTS,"[7호선]","<span style='font-weight: bold; color:#244618'>7호선</span>")
        CONTENTS = replace(CONTENTS,"[8호선]","<span style='font-weight: bold; color:#E80390'>8호선</span>")
        CONTENTS = replace(CONTENTS,"[9호선]","<span style='font-weight: bold; color:#AE9621'>9호선</span>")
        CONTENTS = replace(CONTENTS,"[분당선]","<span style='font-weight: bold; color:#FFD500'>분당선</span>")
        CONTENTS = replace(CONTENTS,"[신분당선]","<span style='font-weight: bold; color:#921734'>신분당선</span>")
	End if
	INFO_MAP = CONTENTS
End Function
' 교통안내 표기 Set e

'SMS 발송 Set s
Function FN_SMS(ByVal DBCon, ByVal SMS_HP, ByVal SMS_TEL, ByVal SMS_MSG, ByVal SMS_DATE)
    If SMS_TEL = "" Then
        SMS_TEL = "15220568"
    End If

    arrParams = Array( _
        DbCon.makeParam("@SA_HP", adVarChar, adParamInput, 15, SMS_HP), _
        DbCon.makeParam("@SA_TEL", adVarChar, adParamInput, 15, SMS_TEL), _
        DbCon.makeParam("@SA_DATE", adDate, adParamInput, 50, SMS_DATE), _
        DbCon.makeParam("@SA_MSG", adVarchar, adParamInput, 255, SMS_MSG) _
    )

    Call DbCon.ExecSP("P_SMS_PROC",arrParams, DBSDIJSMS)
End Function
'SMS 발송 Set e

'MMS 발송 Set s
Function FN_MMS(ByVal DBCon, ByVal MMS_HP, ByVal MMS_TEL, ByVal MMS_MSG, ByVal MMS_DATE, ByVal MMS_SUBJECT)
    If MMS_TEL = "" Then
        MMS_TEL = "15220568"
    End If

    arrParams = Array( _
        DbCon.makeParam("@MM_HP", adVarChar, adParamInput, 15, MMS_HP), _
        DbCon.makeParam("@MM_TEL", adVarChar, adParamInput, 15, MMS_TEL), _
        DbCon.makeParam("@MM_DATE", adDate, adParamInput, 50, MMS_DATE), _
        DbCon.makeParam("@MM_SUBJECT", adVarchar, adParamInput, 120, MMS_SUBJECT), _
        DbCon.makeParam("@MM_MSG", adVarchar, adParamInput, 4000, MMS_MSG) _
    )

    Call DbCon.ExecSP("P_MMS_PROC",arrParams, DBSDIJSMS)
End Function
'MMS 발송 Set e

' SMS 발송 인증키
Function FN_SMS_AUTH_IDX(ByVal DBCon, ByVal SA_HP)
    If SA_HP <> "" Then
        SA_HP = Replace(SA_HP, "-", "")
    End If

    arrParams = Array( _
        DbCon.makeParam("@SA_HP",  adVarchar, adParamInput, 11, SA_HP), _
        DbCon.makeParam("@RETUN_VAL", adInteger, adParamOutput, 4, 0) _
    )

    Call DbCon.ExecSP("P_SMS_AUTH_IDX",arrParams,Nothing)
    FN_SMS_AUTH_IDX = arrParams(UBound(arrParams))(4)
End Function
%>