<%


' 코드 DTL Set s (셀렉트 박스 클래스변경)
Function FN_CODE_DTL_VIEW_SD2019(ByVal DBCon, ByVal vCode, ByVal vActive, ByVal vTagCase, ByVal vTagName, ByVal vTagVal)
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
            htmlText = htmlText & "<select name='" & vTagName & "' class=""select"">" & vbcrlf
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

    FN_CODE_DTL_VIEW_SD2019 = htmlText
End Function
' 코드 DTL Set s

%>
