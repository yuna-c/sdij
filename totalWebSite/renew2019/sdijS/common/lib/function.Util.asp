<%
'-------------------------------------------------------------------------------
'   Function name   : iif
'   Parameter       :
'   condition       : 연산결과
'   val1            : True 경우 반환값
'   val2            : False 경우 반환값
'   Return          :
'   Description     : 3항 연산자
'-------------------------------------------------------------------------------
Function iif(ByVal condition, ByVal val1, ByVal val2)

    If condition Then
        iif = val1
    Else
        iif = val2
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : noCache
'   Parameter       :
'   Return          :
'   Description     :
'-------------------------------------------------------------------------------
Sub noCache()

    Response.Expires = -1
    Response.AddHeader "Pragma", "no-cache"
    Response.AddHeader "cache-control", "no-store"

End Sub



'-------------------------------------------------------------------------------
'   Function name   : checkReferer
'   Parameter       :
'   pageUrl         : 페이지 주소
'   Return          : Boolean
'   Description		:
'-------------------------------------------------------------------------------
Function checkReferer(ByVal pageUrl)

    Dim referer : referer = Request.ServerVariables("HTTP_REFERER")
    Dim result : result = False

    pageUrl = Replace(pageUrl, "http://", "")
    referer = Replace(referer, "http://", "")

    arrReferer = Split(referer, "?")
    If UBound(arrReferer) > -1 Then
        If Trim(arrReferer(0)) = pageUrl Then result = True
    End If

    checkReferer = result

End Function



'-------------------------------------------------------------------------------
'   Function name   : getRefererPage
'   Parameter       :
'   Return          : Boolean
'   Description     :
'-------------------------------------------------------------------------------
Function getRefererPage

    Dim refererValue, chkPos

    '호출한 페이지값을 받습니다.
    refererValue = Request.ServerVariables("HTTP_REFERER")

    '호출한 페이지 값이 없을 경우
    IF Len(refererValue) = 0 Then
        getRefererPage = ""
        Exit Function
    End IF

    '문자열에서 마지막 '/'값의 위치를 찾습니다. Text비교
    chkPos = InstrRev(refererValue, "/", -1, 1)

    '마지막 '/'값을 찾은 위치에서 마지막까지의 문자열만 추출합니다.
    refererValue = Right( refererValue, Len(refererValue) - chkPos )

    '추출한 페이지이름을 리턴합니다.
    getRefererPage = refererValue

End Function



'-------------------------------------------------------------------------------
'   Function name   : checkSSL
'   Parameter       :
'   Return          :
'   Description     : SSL 확인
'-------------------------------------------------------------------------------
Sub checkSSL()

    If UCase(Request.ServerVariables("HTTPS")) <> "ON" Then
        If Not Db Is Nothing Then Set Db = Nothing
        Response.Redirect mainURL
        Response.End
    End If

End Sub



'-------------------------------------------------------------------------------
'   Function name   : print
'   Parameter       :
'   value           :
'   Return          :
'   Description     : Response.Write
'-------------------------------------------------------------------------------
Function print(ByVal value)

    Response.Write value

End Function



'-------------------------------------------------------------------------------
'   Function name   : getRequest
'   Parameter       :
'   key             : Request Key
'   method          : Request 종류 (POST, GET)
'   Return          : String
'   Description		: Request 받기
'-------------------------------------------------------------------------------
Function getRequest(ByVal key, ByVal method)

    Dim value : value = ""

    If IsNull(method) Then method = ""
    If method = REQUEST_POST Then
        value = Request.Form(key)
    ElseIf method = REQUEST_GET Then
        value = Request.QueryString(key)
    Else
        value = Request(key)
    End If

    If IsNumeric(value) Or Trim(value) = "" Then
        getRequest = value
    Else
        getRequest = Replace(Replace(Replace(Replace(Replace(value _
            , "&"   , "&amp;") _
            , "<"   , "&lt;") _
            , ">"   , "&gt;") _
            , """"  , "&quot;") _
            , "'"   , "&#39;")
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : getRequestCnt
'   Parameter       :
'   key             : Request Key
'   method          : Request 종류 (POST, GET)
'   Return          : String
'   Description     : Request Key Count
'-------------------------------------------------------------------------------
Function getRequestCnt(ByVal key, ByVal method)

    Dim objRequest

    If IsNull(method) Then method = ""
    If method = REQUEST_POST Then
        Set objRequest = Request.Form(key)
    ElseIf method = REQUEST_GET Then
        Set objRequest = Request.QueryString(key)
    Else
        Set objRequest = Request(key)
    End If

    getRequestCnt = objRequest.Count

End Function



'-------------------------------------------------------------------------------
'   Function name   : getRequestList
'   Parameter       :
'   key             : Request Key
'   method          : Request 종류 (POST, GET)
'   idx             : Request Item Index
'   Return          : String
'   Description     : Request 받기
'-------------------------------------------------------------------------------
Function getRequestList(ByVal key, ByVal method, ByVal idx)

    Dim objRequest
    Dim value : value = ""

    getRequestList = ""

    If IsNull(method) Then method = ""

    If method = REQUEST_POST Then
        Set objRequest = Request.Form(key)
    ElseIf method = REQUEST_GET Then
        Set objRequest = Request.QueryString(key)
    Else
        Set objRequest = Request(key)
    End If

    If idx > 0 And idx <= objRequest.Count Then
        value = objRequest(idx)
        If IsNumeric(value) Or Trim(value) = "" Then
            getRequestList = value
        Else
            getRequestList = Replace(Replace(Replace(Replace(Replace(value _
                , "&"   , "&amp;") _
                , "<"   , "&lt;") _
                , ">"   , "&gt;") _
                , """"  , "&quot;") _
                , "'"   , "&#39;")
        End If
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : getUserIP
'   Parameter       :
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function getUserIP()

    Dim httpXForwardedFor, remoteAddr
    Dim result

    httpXForwardedFor = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
    remoteAddr = Request.ServerVariables("REMOTE_ADDR")

    If httpXForwardedFor = "" OR InStr(httpXForwardedFor, "unknown") > 0 Then
        result = remoteAddr
    ElseIf InStr(httpXForwardedFor, ",") > 0 Then
        result = Mid(httpXForwardedFor, 1, InStr(httpXForwardedFor, ",")-1)
    ElseIf InStr(httpXForwardedFor, ";") > 0 Then
        result = Mid(httpXForwardedFor, 1, InStr(httpXForwardedFor, ";")-1)
    Else
        result = httpXForwardedFor
    End If

    getUserIP = Trim(Mid(result, 1, 30))

End Function



'-------------------------------------------------------------------------------
'   Function name       : eRegiTest
'   Parameter           :
'   value               : 검사 문자열
'   pattern             : 정규식
'   Return              : Boolean
'   Description         : 문자열 정규식 Test
'   Pattern Ex)
'   [^가-힣]             : 한글
'   [^-0-9 ]            : 숫자
'   [^-a-zA-Z]          : 영어
'   [^-가-힣a-zA-Z0-9/ ]  : 한글,영어,숫자
'   <[^>]*>             : 태그
'   [^-a-zA-Z0-9/ ]     : 영어,숫자
'-------------------------------------------------------------------------------
Function eRegiTest(ByVal value, ByVal pattern)

    Dim objRegExp
    Set objRegExp = New RegExp

    objRegExp.Pattern = pattern
    objRegExp.IgnoreCase = False        ' 대/소문자를 구분하지 않도록 함
    objRegExp.Global = True             ' 문자열 전체에서 검색

    eRegiTest = objRegExp.Test(value)
    Set objRegExp = Nothing

End Function



'-------------------------------------------------------------------------------
'   Function name   : eRegiReplace
'   Parameter       :
'   value           : 검사 문자열
'   pattern         : 정규식
'   Return          : String
'   Description     : 문자열 정규식 Replace
'-------------------------------------------------------------------------------
Function eRegiReplace(ByVal value, ByVal pattern, ByVal replacement)

    Dim objRegExp
    Set objRegExp = New RegExp

    objRegExp.Pattern = pattern
    objRegExp.IgnoreCase = True             ' 대/소문자를 구분하지 않도록 함
    objRegExp.Global = True                 ' 문자열 전체에서 검색

    eRegiReplace = objRegExp.Replace(value, replacement)
    Set objRegExp = Nothing

End Function



'-------------------------------------------------------------------------------
'   Function name   : urlDecode
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description		:
'-------------------------------------------------------------------------------
Function urlDecode(ByVal value)

    Dim strSource, strTemp, strResult, strChr
    Dim lngPos, AddNum, IFKor

    On Error Resume Next

    strSource = Replace(value, "+", " ")

    For lngPos = 1 To Len(strSource)
        AddNum = 2
        strTemp = Mid(strSource, lngPos, 1)
        If strTemp = "%" Then
            If lngPos + AddNum < Len(strSource) + 1 Then
                strChr = CInt("&H"& Mid(strSource, lngPos + 1, AddNum))
                If strChr > 130 Then
                    AddNum = 5
                    IFKor = Mid(strSource, lngPos + 1, AddNum)
                    IFKor = Replace(IFKor, "%", "")
                    strChr = CInt("&H"& IFKor)
                End If
                strResult = strResult & Chr(strChr)
                lngPos = lngPos + AddNum
            End If
        Else
            strResult = strResult & strTemp
        End If
    Next

    urlDecode = strResult

End Function



'-------------------------------------------------------------------------------
'   Function name   : rejectXss
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description		: Xss 방지
'-------------------------------------------------------------------------------
Function rejectXss(ByVal value)

    value = Replace(Replace(Replace(Replace(Replace(value _
        , "&#39;"   , "'") _
        , "&quot;"  , """") _
        , "&gt;"    , ">") _
        , "&lt;"    , "<") _
        , "&amp;"   , "&")

    value = eRegiReplace(value, "<script[^>]*>.*?<\/script[^>]*>", "")
    value = eRegiReplace(value, "<style[^>]*>.*?<\/style[^>]*>", "")
    value = eRegiReplace(value, "(\<a [^>]+)onclick=[^ ]+([^>]*>)", "$1$2")
    value = eRegiReplace(value, "(\<a [^>]+)href=.*javascript:[^ ]+([^>]*>)", "$1$2")
    value = eRegiReplace(value, "(\<a [^>]+)href=.*vbscript:[^ ]+([^>]*>)", "$1$2")
    value = eRegiReplace(value, "javascript\s*:", "x-javascript:")
    value = eRegiReplace(value, "vbscript\s*:", "x-vbscript:")
    value = eRegiReplace(value, "onload=[^>]+", "")
    value = eRegiReplace(value, "onclick=[^>]+", "")
    value = eRegiReplace(value, "onmouseover=[^>]+", "")
    value = eRegiReplace(value, "onmouseout=[^>]+", "")
    value = eRegiReplace(value, "onmousedown=[^>]+", "")

    rejectXss = Replace(Replace(Replace(Replace(Replace(value _
        , "&"   , "&amp;") _
        , "<"   , "&lt;") _
        , ">"   , "&gt;") _
        , """"  , "&quot;") _
        , "'"   , "&#39;")

End Function



'-------------------------------------------------------------------------------
'   Function name   : rejectStyle
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description		:
'-------------------------------------------------------------------------------
Function rejectStyle(ByVal value)

    rejectStyle = eRegiReplace(value, "<style[^>]*>.*?<\/style[^>]*>", "")

End Function



'-------------------------------------------------------------------------------
'   Function name   : encQuote
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     : " To &quot; / ' To &#39;
'-------------------------------------------------------------------------------
Function encQuote(ByVal value)

    If IsNull(value) Then value = ""
    encQuote = Replace(Replace(value, "'", "&#39;"), """", "&quot;")

End Function



'-------------------------------------------------------------------------------
'   Function name   : decQuote
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description		: &quot; To " / &#39 To ';
'-------------------------------------------------------------------------------
Function decQuote(ByVal value)

    If IsNull(value) Then value = ""
    decQuote = Replace(Replace(value, "&#39;", "'"), "&quot;", """")

End Function



'-------------------------------------------------------------------------------
'   Function name   : encParams
'   Parameter       :
'   value           : Plain Parameter
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function encParams(ByVal value)

    If IsNull(value) Then value = ""
    encParams = Replace(Replace(value, "&amp;", "&"), "&", "^")

End Function



'-------------------------------------------------------------------------------
'   Function name   : decParams
'   Parameter       :
'   value           : Encode Parameter
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function decParams(ByVal value)

    If IsNull(value) Then value = ""
    decParams = Replace(value, "^", "&")

End Function



'-------------------------------------------------------------------------------
'   Function name   : filterParams
'   Parameter       :
'   params          : 파라미터
'   remove          : 제거 항목
'   Return          : String
'   Description     : Parameter 정리
'-------------------------------------------------------------------------------
Function filterParams(ByVal params, ByVal remove)

        Dim arrParam, paramLen
        Dim f
        Dim result : result = ""

        If IsNull(params) Then params = ""
        If IsNull(remove) Then remove = ""

        If Trim(params) <> "" And remove <> "" Then
            arrParam = Split(params, "&") : paramLen = UBound(arrParam)
            For f=0 To paramLen
                If InStr("&"& Trim(arrParam(f)), "&"& remove &"=") < 1 Then
                    result = result & iif(result<>"", "&", "") & Trim(arrParam(f))
                End If
            Next
        End If
        filterParams = result

End Function



'-------------------------------------------------------------------------------
'   Function name   : checkNumeric
'   Parameter       :
'   value           : 검사 문자열
'   Return          : Integer
'   Description     :
'-------------------------------------------------------------------------------
Function checkNumeric(ByVal value)

    If IsNumeric(value) Or VarType(value) = 14 Then ' VarType 14 : adDecimal
        checkNumeric = CDbl(value)
    Else
        checkNumeric = 0
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : checkFlag
'   Parameter       :
'   value           : 검사 문자열
'   Return          : String (T, F)
'   Description     :
'-------------------------------------------------------------------------------
Function checkFlag(ByVal value)

    If value <> "T" Then value = "F"
    checkFlag = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : isSelected
'   Parameter       :
'   arg1            : 비교값 1
'   arg2            : 비교값 2
'   Return          : String
'   Description     : 값 비교후 selected
'-------------------------------------------------------------------------------
Function isSelected(ByVal arg1, ByVal arg2)

    isSelected = ""
    If arg1 = arg2 Then isSelected = " selected"

End Function



'-------------------------------------------------------------------------------
'   Function name   : isChecked
'   Parameter       :
'   arg1            : 비교값 1
'   arg2            : 비교값 2
'   Return          : String
'   Description		: 값 비교후 checked
'-------------------------------------------------------------------------------
Function isChecked(ByVal arg1, ByVal arg2)

    isChecked = ""
    If arg1 = arg2 Then isChecked = " checked"

End Function



'-------------------------------------------------------------------------------
'   Function name   : isDisabled
'   Parameter       :
'   arg1            : 비교값 1
'   arg2            : 비교값 2
'   Return          : String
'   Description     : 값 비교후 disabled
'-------------------------------------------------------------------------------
Function isDisabled(ByVal arg1, ByVal arg2)

    isDisabled = ""
    If arg1 = arg2 Then isDisabled = " disabled"

End Function



'-------------------------------------------------------------------------------
'   Function name   : isReadOnly
'   Parameter       :
'   arg1            : 비교값 1
'   arg2            : 비교값 2
'   Return          : String
'   Description     : 값 비교후 readonly
'-------------------------------------------------------------------------------
Function isReadOnly(ByVal arg1, ByVal arg2)

    isReadOnly = ""
    If arg1 = arg2 Then isReadOnly = " readonly"

End Function



'-------------------------------------------------------------------------------
'   Function name   : setFloor
'   Parameter       :
'   num             : 대상 숫자
'   pos             : 대상 자리수
'   Return          : Integer
'   Description     : 내림
'-------------------------------------------------------------------------------
Function setFloor(ByVal value, ByVal pos)

    If IsNumeric(value) Or VarType(value) = 14 Then ' VarType 14 : adDecimal
        If Not IsNumeric(pos) Then pos = 0
        value = Int(value * (10 ^ pos)) / (10 ^ pos)
    End If
    setFloor = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : setRound
'   Parameter       :
'   num             : 대상 숫자
'   pos             : 대상 자리수
'   Return          : Integer
'   Description     : 반올림
'-------------------------------------------------------------------------------
Function setRound(ByVal value, ByVal pos)

    If IsNumeric(value) Or VarType(value) = 14 Then ' VarType 14 : adDecimal
        If Not IsNumeric(pos) Then pos = 0
        value = FormatNumber(value * (10 ^ pos), 0, , , 0) / (10 ^ pos)
    End If
    setRound = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : tag2Text
'   Parameter       :
'   value           : Tag
'   Return          : String
'   Description     : Tag를 문자열로 변환
'-------------------------------------------------------------------------------
Function tag2Text(ByVal value)

    If IsNull(value) Then value = ""
    value = Replace(Replace(Replace(value, "&", "&amp;"), "<", "&lt;"), ">", "&gt;")
    tag2Text = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : text2Tag
'   Parameter       :
'   value           : Text
'   Return          : String
'   Description     : 문자열을 Tag로 변환
'-------------------------------------------------------------------------------
Function text2Tag(ByVal value)

    If IsNull(value) Then value = ""
    value = Replace(Replace(Replace(value, "&gt;", ">"), "&lt;", "<"), "&amp;", "&")
    text2Tag = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : num2Cur
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     : Numeric To Currency
'-------------------------------------------------------------------------------
Function num2Cur(ByVal value)

    If IsNull(value) Then value = ""

    If value <> "" And IsNumeric(value) Then
        num2Cur = FormatNumber(CDbl(value), 0)
    Else
        num2Cur = value
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : num2SText
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     : Numeric To Special Character
'-------------------------------------------------------------------------------
Function num2SText(ByVal value)

    If IsNull(value) Then
        value = ""
    End If

    If value <> "" Then
        Select Case value
            Case "1"
                value = "①"
            Case "2"
                value = "②"
            Case "3"
                value = "③"
            Case "4"
                value = "④"
            Case "5"
                value = "⑤"
        End Select
    End If

    num2SText = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : zero2Blank
'   Parameter       :
'   value           : 숫자
'   Return          : String
'   Description     : 0 To ""
'-------------------------------------------------------------------------------
Function zero2Blank(ByVal value)

    If IsNull(value) Then value = ""

    If IsNumeric(value) Or VarType(value) = 14 Then ' VarType 14 : adDecimal
        If CDbl(value) = 0 Then
            zero2Blank = ""
        Else
            zero2Blank = value
        End If
    Else
        zero2Blank = value
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : flag2Bool
'   Parameter       :
'   value           : flag ('T', 'F')
'   Return          : String
'   Description     : Flag('T', 'F') To Boolean
'-------------------------------------------------------------------------------
Function flag2Bool(ByVal value)

    If VarType(value) = 11 Then ' VarType 11 : adBoolean
        flag2Bool = value
    Else
        If value = "T" Then
            flag2Bool = True
        Else
            flag2Bool = False
        End If
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : nl2Br
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     : vbCrLf To <br>
'-------------------------------------------------------------------------------
Function nl2Br(ByVal value)

    If IsNull(value) Then value = ""
    value = Replace(value, vbCrLf, "<br>")
    nl2Br = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : br2Nl
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     : <br> To vbCrLf
'-------------------------------------------------------------------------------
Function br2Nl(ByVal value)

    If IsNull(value) Then value = ""
    value = Replace(value, "<br>", vbCrLf)
    br2Nl = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : null2Blank
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function null2Blank(ByVal value)

    If IsNull(value) Then value = ""
    null2Blank = Trim(value)

End Function



'-------------------------------------------------------------------------------
'   Function name   : null2Char
'   Parameter       :
'   value           : 문자열
'   rChar           : 공백시 변경 문자
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function null2Char(ByVal value, ByVal rChar)

    If IsNull(value) Then value = rChar

    null2Char = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : Blank2Null
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function Blank2Null(ByVal value)

    If value = "" Then
        value = Null
    End If

    Blank2Null = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : Blank2Text
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function Blank2Text(ByVal value, ByVal rValue)

    If IsNull(value) Then value = rValue
    If value = "" Then value = rValue

    Blank2Text = Trim(value)

End Function



'-------------------------------------------------------------------------------
'   Function name   : getFilenameUrlEncode
'   Parameter       :
'   filename        : 파일명
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function getFilenameUrlEncode(ByVal filename)

    Dim fName, fExt
    fName = Trim(Left(filename, InstrRev(filename, ".")-1))
    fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))
    getFilenameUrlEncode = Server.URLEncode(fName) &"."& fExt

End Function



'-------------------------------------------------------------------------------
'   Function name   : getExt
'   Parameter       :
'   filename        : 파일명
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function getExt(ByVal filename)

    If IsNull(filename) Then filename = ""

    If filename <> "" Then
        getExt = Trim(Mid(filename, InstrRev(filename, ".")+1))
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : makeCapacity
'   Parameter       :
'   size            : 파일용량(byte)
'   Return          : String
'   Description     : 파일용량 문자열 생성
'-------------------------------------------------------------------------------
Function makeCapacity(ByVal size)

    Dim result

    If IsNumeric(size) Or VarType(size) = 14 Then ' VarType 14 : adDecimal
        size = CDbl(size)
    Else
        size = 0
    End If

    If size < 1024 Then
        result = size &" Byte"
    ElseIf size >= 1024 And size < (1024 * 1024) Then
        size = size / 1024
        result = Round(size, 1) &" KB"
    Else
        size = size / (1024 * 1024)
        result = Round(size, 2) &" MB"
    End If

    makeCapacity = result

End Function



'-------------------------------------------------------------------------------
'   Function name   : cutString
'   Parameter       : value = 원본 문자열
'   cutLen          : 자를 길이
'   Description     : 문자열 자르기
'-------------------------------------------------------------------------------
Function cutString(ByVal value, ByVal cutLen)

    Dim f
    Dim nLen : nLen = 0.00
    Dim result : result = ""
    Dim tmpStr, tmpLen

    If IsNull(value) Then value = ""

    value = decQuote(value)

    For f = 1 To Len(value)
        tmpStr = Mid(value, f, 1)
        tmpLen = Asc(tmpStr)

        If tmpLen < 0 Then                          ' 한글
            nLen = nLen + 1.4                       ' 한글일때 길이값 설정
            result = result & tmpStr
        ElseIf tmpLen >= 97 And tmpLen <= 122 Then  ' 영문 소문자
            nLen = nLen + 0.75                      ' 영문소문자 길이값 설정
            result = result & tmpStr
        ElseIf tmpLen >= 65 And tmpLen <= 90 Then   ' 영문 대문자
            nLen = nLen + 1                         ' 영문대문자 길이값 설정
            result = result & tmpStr
        Else                                        ' 그외 키값
            nLen = nLen + 0.6                       ' 특수문자 기호값...
            result = result & tmpStr
        End If

        If nLen > cutLen Then
            result = result &".."
            Exit For
        End If
    Next

    cutString = result

End Function



'-------------------------------------------------------------------------------
'   Function name   : calcTextLenByte
'   Parameter       :
'   value           : 문자열
'   Return          : String
'   Description     : 문자열 바이트 길이 계산
'-------------------------------------------------------------------------------
Function calcTextLenByte(ByVal value)

    Dim rValue, tmpStr, tmpASC, lenSum, f

    If value <> "" Then
        lenSum = 0
        rValue = ""

        for f = 1 to Len(value)
            tmpStr = MID(value,f,1)
            tmpASC = ASC(tmpStr)
            if tmpASC>0 and tmpASC<255 then lenSum = lenSum + 1    else lenSum = lenSum + 2
            rValue = rValue & tmpStr
        next
        calcTextLenByte = lenSum
    End If

End Function



'-------------------------------------------------------------------------------
'   Function name   : dateFormat
'   Parameter       :
'   date            : 변환 대상 날짜/시간
'   format          : 변환 형식
'   Return          : String
'   Description     : 날짜/시간 형식 변환
'-------------------------------------------------------------------------------
Function dateFormat(ByVal pdate, ByVal format)

    Dim result : result = ""
    Dim myear, mmonth, mday, mhour, mminute, msecond

    If IsDate(pdate) Then
        If format = "yyyy-mm-dd" Then
            result = FormatDateTime(pdate, 2)
        Else
            myear = Year(pdate)
            mmonth = Month(pdate)
            mday = Day(pdate)
            mhour = Hour(pdate)
            mminute = Minute(pdate)
            msecond = Second(pdate)

            result = format

            If InStr(result, "yyyy") > 0 Then result = Replace(result, "yyyy", myear)
            If InStr(result, "yy") > 0 Then result = Replace(result, "yy", Right(myear, 2))
            If InStr(result, "mm") > 0 Then result = Replace(result, "mm", Right("0"& mmonth, 2))
            If InStr(result, "m") > 0 Then result = Replace(result, "m", mmonth)
            If InStr(result, "dd") > 0 Then result = Replace(result, "dd", Right("0"& mday, 2))
            If InStr(result, "d") > 0 Then result = Replace(result, "d", mday)
            If InStr(result, "hh") > 0 Then result = Replace(result, "hh", Right("0"& mhour, 2))
            If InStr(result, "h") > 0 Then result = Replace(result, "h", mhour)
            If InStr(result, "nn") > 0 Then result = Replace(result, "nn", Right("0"& mminute, 2))
            If InStr(result, "n") > 0 Then result = Replace(result, "n", mminute)
            If InStr(result, "ss") > 0 Then result = Replace(result, "ss", Right("0"& msecond, 2))
            If InStr(result, "s") > 0 Then result = Replace(result, "s", msecond)
        End If
    End If

    dateFormat = result

End Function



'-------------------------------------------------------------------------------
'   Function name   : tempKey
'   Parameter       :
'   date            : 변환 대상 날짜/시간
'   format          : 변환 형식
'   Return          : String
'   Description     : 파일 임시키
'-------------------------------------------------------------------------------
Function getTempKey()

    Dim pdate
    pdate = "F"
    pdate = pdate & Year(now)
    pdate = pdate & ZeroFormat(Month(now),2)
    pdate = pdate & ZeroFormat(Day(now),2)
    pdate = pdate & ZeroFormat(Hour(now),2)
    pdate = pdate & ZeroFormat(Minute(now),2)
    pdate = pdate & ZeroFormat(second(now),2)

    getTempKey = pdate

End Function



'-------------------------------------------------------------------------------
'   Function name   : ordkey
'   Parameter       :
'   date            : 변환 대상 날짜/시간
'   format          : 변환 형식
'   Return          : String
'   Description     : 주문번호
'-------------------------------------------------------------------------------
Function ordkey()

    Dim pdate
    pdate = ""
    pdate = pdate & Year(now)
    pdate = pdate & ZeroFormat(Month(now),2)
    pdate = pdate & ZeroFormat(Day(now),2)
    pdate = pdate & ZeroFormat(Hour(now),2)
    pdate = pdate & ZeroFormat(Minute(now),2)
    pdate = pdate & ZeroFormat(second(now),2)

    SQL = SQL & "EXEC P_ORD_NO_GET_SEQ"
    Set Rs = DbCon.ExecSQLReturnRS(SQL, Nothing, Nothing)

    ordKey = pdate & ZeroFormat(Right((timer * 1000) Mod 1000,3),3) & Rs(0) 'fncRandom("0123456789", 3)

    'ordKey = pdate & ZeroFormat(Right((timer * 1000) Mod 1000,3),3) & fncRandom("0123456789", 3)

End Function



'-------------------------------------------------------------------------------
'   Function name   : getLastDay
'   Parameter       :
'   pyear           :
'   pmonth          :
'   Return          : Integer
'   Description     : 해당 월 마지막 일자 추출
'-------------------------------------------------------------------------------
Function getLastDay(ByVal pyear, ByVal pmonth)

    If Not IsNumeric(pyear) Then pyear = 0 Else pyear = CLng(pyear)
    If Not IsNumeric(pmonth) Then pmonth = 0 Else pmonth = CLng(pmonth)

    Select Case pmonth
        Case 1: getLastDay = 31
        Case 2
            If ((pyear Mod 4 = 0) And (pyear Mod 100 <> 0)) Or (pyear Mod 400 = 0) Then
                getLastDay = 29
            Else
                getLastDay = 28
            End If
        Case 3 : getLastDay = 31
        Case 4 : getLastDay = 30
        Case 5 : getLastDay = 31
        Case 6 : getLastDay = 30
        Case 7 : getLastDay = 31
        Case 8 : getLastDay = 31
        Case 9 : getLastDay = 30
        Case 10 : getLastDay = 31
        Case 11 : getLastDay = 30
        Case 12 : getLastDay = 31
        Case Else : getLastDay = 31
    End Select

End Function



'-------------------------------------------------------------------------------
'   Function name   : getMonthName
'   Parameter       :
'   pmonth          :
'   Return          : String
'   Description     :
'-------------------------------------------------------------------------------
Function getMonthName(ByVal pmonth)

    If Not IsNumeric(pmonth) Then pmonth = 0 Else pmonth = CLng(pmonth)

    Select Case pmonth
        Case 1
            getMonthName = "January"
        Case 2
            getMonthName = "February"
        Case 3
            getMonthName = "March"
        Case 4
            getMonthName = "April"
        Case 5
            getMonthName = "May"
        Case 6
            getMonthName = "June"
        Case 7
            getMonthName = "July"
        Case 8
            getMonthName = "August"
        Case 9
            getMonthName = "September"
        Case 10
            getMonthName = "October"
        Case 11
            getMonthName = "November"
        Case 12
            getMonthName = "December"
    End Select

End Function



'-------------------------------------------------------------------------------
'   Function name   : checkExcelDll
'   Parameter       :
'   Return          :
'   Description     : 엑셀DLL 체크
'-------------------------------------------------------------------------------
Sub checkExcelDll()

    Dim objExcel
    Dim objUnZip

    On Error Resume next

    Set objExcel = Server.CreateObject ("Excel.Application")
    Set objExcel = Nothing

    If Err.Number <> 0 Then
        Err.Clear()
        Call jsmsg("엑셀 업로드는 해당 서버에 엑셀이 깔려져 있어야만 기능을 이용할 수 있습니다.", "B")
    End If

'   Set objUnZip = CreateObject("CGZipLibrary.CGUnzipFiles")
'   Set objUnZip = Nothing

'   If Err.Number <> 0 Then
'       Err.Clear()
'       Call jsmsg("엑셀 업로드는 압축화일을 핸들링하는 어플리케이션이 깔려져있어야합니다.\n\n"& pathAdmin &"/util 디렉토리에 해당 컴퍼넌트의 설치방법을 참조하세요.","B")
'   End If

End Sub



'-------------------------------------------------------------------------------
'   Function name   : getImgSize
'   Parameter       :
'   path            : 이미지 경로 (경로에 파일명 포함시 filename 는 "" 또는 Null로 설정해야 함)
'   filename        : 이미지 파일명
'   width           : 이미지 폭 (ByRef)
'   height          : 이미지 높이 (ByRef)
'   Return          :
'   Description     : 이미지 사이즈 추출
'-------------------------------------------------------------------------------
Function getImgSize(ByVal path, ByVal filename, ByRef width, ByRef height)

    Dim Fso, objImage
    Dim target

    width = 0
    height = 0

    If IsNull(filename) Then filename = ""
    If filename <> "" Then
        target = Server.MapPath(path) &"\"& filename
    Else
        target = Server.MapPath(path)
    End If

    Set Fso = Server.CreateObject("Scripting.FileSystemObject")

    If Fso.FileExists(target) Then
        Set objImage = LoadPicture(target)

        width = CLng(CDbl(objImage.Width) * 24 / 635)
        height = CLng(CDbl(objImage.Height) * 24 / 635)

        Set objImage = Nothing
    End If

    Set Fso = Nothing

End Function



'-------------------------------------------------------------------------------
'   Function name   : getFileExtIcon
'   Parameter       :
'   filename        : 파일명
'   Return          :
'   Description     : 파일확장자 이미지
'-------------------------------------------------------------------------------
Function getFileExtIcon(ByVal filename)

    Dim ext
    Dim result

    ext = LCase(Mid(filename, InstrRev(filename, ".")+1)) ' 파일 확장자

    Select Case ext
        Case "avi", "bmp", "doc", "exe", "gif", "hwp", "mp3", "ppt", "rar", "swf", "txt", "wav", "xls", "zip"
            result = ext
        Case "ra", "ram", "rm"
            result = "ra"
        Case "htm", "html"
            result = "htm"
        Case "jpg", "jpeg"
            result = "jpg"
        Case "mpg", "mpeg"
            result = "mpg"
        Case "asf", "asx"
            result = "asf"
        Case Else
            result = "etc"
    End Select

    getFileExtIcon = result &".gif"

End Function



'-------------------------------------------------------------------------------
'   Function name   : setPositiveImgSrc
'   Parameter       :
'   value           : 문자열 데이터(HTML)
'   Return          :
'   Description     : IMG TAG SRC의 상대경로 -> 절대경로로 변환(현재 HOST)
'-------------------------------------------------------------------------------
Function setPositiveImgSrc(ByVal value)

    Dim objRegExp, objSchImg, objItemImg
    Dim host : host = Request.ServerVariables("HTTP_HOST")

    Set objRegExp = New RegExp
    objRegExp.IgnoreCase = True
    objRegExp.Global = True

    objRegExp.Pattern = "<img [^<>]*>"
    Set objSchImg = objRegExp.Execute(value)

    objRegExp.Pattern = "(<img.*src[\s]*[\=][\s]*(?:|'|""))(\/+[^>\""\']+)((?:|'|"").*>)"

    For Each objItemImg In objSchImg
        value = Replace(value, objItemImg.value, objRegExp.Replace(objItemImg.value, "$1http://"& host &"$2$3"))
    Next

    Set objItemImg = Nothing
    Set objSchImg = Nothing
    Set objRegExp = Nothing

    setPositiveImgSrc = value

End Function



'-------------------------------------------------------------------------------
'   Function name   : setProgressBar
'   Parameter       :
'   Return          :
'   Description     : Set DEXT Uploader ProgressBar
'-------------------------------------------------------------------------------
Sub setProgressBar()

    Dim js

    js = "<script type='text/javascript'><!--"& vbCrLf & _
            "function progressBar() {"& vbCrLf & _
            "	var winstyle, winpos;"& vbCrLf

    If cfgUploadMethod = CM_UPLOAD_DEXT Then
        Set objMon = Server.CreateObject("DEXT.FileUploadMonitor")
        objMon.UseMonitor(True)
        Set objMon = Nothing

        js = js &"  strAppVersion = navigator.appVersion.toLowerCase();"& vbCrLf & _
                    "   if (strAppVersion.indexOf('msie') != -1 && strAppVersion.substr(strAppVersion.indexOf('msie')+5,1) > 4) {"& vbCrLf & _
                    "       winstyle = 'dialogWidth=385px;'+((strAppVersion.indexOf('msie 7.0') != -1) ? ' dialogHeight:160px;' : ' dialogHeight:205px;')+' center:yes;';"& vbCrLf & _
                    "       window.showModelessDialog('/common/progress/show_progress.asp?nav=ie', null, winstyle);"& vbCrLf & _
                    "   }"& vbCrLf & _
                    "   else {"& vbCrLf & _
                    "       winpos = 'left=' + ((window.screen.width-380)/2) + ',top=' + ((window.screen.height-180)/2);"& vbCrLf & _
                    "       winstyle='width=380,height=180,status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=no,copyhistory=no,'+winpos;"& vbCrLf & _
                    "       //window.open('/common/progress/show_progress.asp?nav=ns',null,winstyle);"& vbCrLf & _
                    "   }"& vbCrLf
    End If

    js = js &"}"& vbCrLf & _
                "//--></script>"& vbCrLf

    Response.write js

End Sub



'-------------------------------------------------------------------------------
' 함수명 : gfCeil()
' 리턴  : 값
' 기능  : 소수점이하, 올림함수 (1.1 -> 2)
'-------------------------------------------------------------------------------
Function gfCeil(val)

  if cint(val) < val then
    gfCeil = cint(val)+1
  else
    gfCeil = cint(val)
  end If

End Function



'-------------------------------------------------------------------------------
' 서브명   : rw
' INPUT  : str
' 기능설명  : response.write 축약
'-------------------------------------------------------------------------------
Sub rw(str)

    response.write str & "<br>"

End Sub



'-------------------------------------------------------------------------------
' 서브명  : rend
' INPUT :
' 기능설명 : response.end 축약
'-------------------------------------------------------------------------------
Sub rend()

    response.End

End Sub



'-------------------------------------------------------------------------------
' 함수명  : fncRequest
' INPUT : Request명
' 기능설명 :
'-------------------------------------------------------------------------------
function fncRequest(varParam)

    fncRequest = sqlFilter(Request.QueryString(varParam))

end function



'-------------------------------------------------------------------------------
' 함수명  : fncRequestForm
' INPUT : Request명
' 기능설명 :
'-------------------------------------------------------------------------------
function fncRequestForm(varParam)

    fncRequestForm = sqlFilter(Request.Form(varParam))

end function



'-------------------------------------------------------------------------------
' 함수명  : fncReq
' INPUT : Request명
' 기능설명 :
'-------------------------------------------------------------------------------
function fncReq(varParam)

    dim get_post

    if Request.ServerVariables("REQUEST_METHOD") = "GET" then
        get_post = request.QueryString(varParam)
    else
        get_post = request.form(varParam)
    end if

    fncReq = sqlFilter(get_post)

end Function



'-------------------------------------------------------------------------------
' 함수명  : sqlFilter()
' 리턴   : 값
' 기능   : 공격 위험성이 존재하는 문자들을 필터링
'         문자열 입력값을 검증
'         숫자형은 데이터 타입을 별도로 체크하도록 한다.
'-------------------------------------------------------------------------------
Function sqlFilter(search)

    Dim strSearch(30), strReplace(30), cnt, data

    'SQL Injection 특수문자 필터링
    '필수 필터링 문자 리스트
    strSearch(0)="'"
    strSearch(1)=""""
    strSearch(2)="\"
    strSearch(3)="null"
    strSearch(4)="#"
    strSearch(5)="--"
    strSearch(6)=";"

    strSearch(7)="insert "
    strSearch(8)="update "
    strSearch(9)="delete "
    strSearch(10)="select "
    strSearch(11)="exec "
    strSearch(12)="drop "
    strSearch(13)="truncate "
    strSearch(14)="create "
    strSearch(15)="alter "
    strSearch(16)="varchar "
    strSearch(17)="cmdshell "
    strSearch(18)="script "
    strSearch(19)="iframe "
    strSearch(20)="embed "
    strSearch(21)="object "
    strSearch(22)="form "
    strSearch(23)="textarea "
    strSearch(24)="input "


    '변환될 필터 문자
    strReplace(0)="''"
    strReplace(1)=""""""
    strReplace(2)="\\"
    strReplace(3)="\"&null
    strReplace(4)="\#"
    strReplace(5)="\--"
    strReplace(6)="\;"

    strReplace(7)="insеrt "
    strReplace(8)="updatе "
    strReplace(9)="deletе "
    strReplace(10)="sеlect "
    strReplace(11)="exеc "
    strReplace(12)="drоp "
    strReplace(13)="truncatе "
    strReplace(14)="creatе "
    strReplace(15)="altеr "
    strReplace(16)="vаrchar "
    strReplace(17)="cmdshеll "
    strReplace(18)="sсript "
    strReplace(19)="ifrаme "
    strReplace(20)="еmbed "
    strReplace(21)="оbject "
    strReplace(22)="fоrm "
    strReplace(23)="tеxtarea "
    strReplace(24)="ⅰnput "

    data = search
    For cnt = 0 to 24 '필터링 인덱스를 배열 크기와 맞춰준다.
        data = replace(data, LCASE(strSearch(cnt)), strReplace(cnt))
    Next

    sqlFilter = data

End Function



'-------------------------------------------------------------------------------
' 함수명  : fncRandom
' INPUT : 랜던함수 추출
' 기능설명 : fncRandom("0123456789", 6)
'-------------------------------------------------------------------------------
Function fncRandom(ByVal randomStr, ByVal randomLen)

    randomCode = randomStr

    If randomStr <> "" Then
        Randomize

        randomCode = ""
        For i = 1 To randomLen
            key = Int((Len(randomStr) - 1 + 1) * Rnd + 1)
            randomCode = randomCode + Mid(randomStr, key, 1)
        Next
    End If

    fncRandom = randomCode

End Function



'-------------------------------------------------------------------------------
' 라디오 및 체크 박스  체크 리턴
' RadioValChk(밸류값, 체크값, 형식)
'-------------------------------------------------------------------------------
Sub RadioValChk(val, chkval, rw)

    If CStr(Trim(val)) = CStr(Trim(chkval)) Then
        If rw = "c" Then
            Response.write " checked "
        Else
            Response.write " selected "
        End IF
    End If

End Sub



'-------------------------------------------------------------------------------
' 함수명  : SET_GOURL
' INPUT : URL ==> 이동할 주소
' 기능설명 : 이동할 주소를 세팅
'-------------------------------------------------------------------------------
Function SET_GOURL(URL)

    Response.Cookies("go_url") = URL
    Response.Cookies("go_url").Path = "/"
    Response.Cookies("go_url").Domain = "sdij.com"

End Function



'-------------------------------------------------------------------------------
' 함수명  : GO_LOGIN
' INPUT :
' 기능설명 : 로그인 사용자가 아닌 경우 로그인페이지로 이동
'-------------------------------------------------------------------------------
Function GO_LOGIN()

    If IsEmpty(Request.Cookies("mem_id")) OR IsNull(Request.Cookies("mem_id")) OR Request.Cookies("mem_id") = "" Then
        If COOK_ID = "" Then
            Response.write "<script type='text/javascript'>"
            Response.write "   location.href = '/member/sd2019/login.asp' "
            Response.write "</script>"
            Response.End
        Else
            '----------------------------------------------
            ' 쿠키값이 제대로 설정 않은 경우, 재설정 처리
            '----------------------------------------------
            '쿠키값 세트 : 아이디
            'Call SetCookie ("mem_id", COOK_ID)
            Response.Cookies("mem_id") = COOK_ID
            Response.Cookies("mem_id").Path = "/"
            Response.Cookies("mem_id").Domain = "sdij.com"

            Response.Cookies("mem_nm") = COOK_NM
            Response.Cookies("mem_nm").Path = "/"
            Response.Cookies("mem_nm").Domain = "sdij.com"

            get_mem_type = fncRequestCookie("mem_type")

            Response.Cookies("mem_type") = get_mem_type
            Response.Cookies("mem_type").Path = "/"
            Response.Cookies("mem_type").Domain = "sdij.com"

            'S #001 ADD
            '쿠키값 세트 : (암호화)
            Call SetUserInfoCookie("mem_cd",Encrypt(COOK_ID))
            Call SetUserInfoCookie("mem_id",COOK_ID)
        End If

    Else
        If CStr(Encrypt(fncRequestCookie("mem_id"))) <> fncRequestCookie("mem_cd") then
            response.redirect "/member/sd2019/logout.asp"
        End If

        If CStr(Encrypt(Request.Cookies("mem_id"))) <> fncRequestCookie("mem_cd") then
            response.redirect "/member/sd2019/logout.asp"
        End If
    End If

End Function



'-------------------------------------------------------------------------------
' 함수명  : GO_LOGIN_MSG
' INPUT :
' 기능설명 : 로그인 사용자가 아닌 경우 로그인페이지로 이동
'-------------------------------------------------------------------------------
Function GO_LOGIN_MSG(ByVal glmsg)

    If IsEmpty(Request.Cookies("mem_id")) OR IsNull(Request.Cookies("mem_id")) OR Request.Cookies("mem_id") = "" Then
        If COOK_ID = "" Then
            Dim strJs

            If Err.Number = 0 Then
                glmsg = Replace(glmsg, "'", "\'")

                strJs = "<script type='text/javascript'  charset='UTF-8'><!--"& vbCrLf
                strJs = strJs &"var url = '/member/sd2019/login.asp';"& vbCrLf
                strJs = strJs &"alert('"& glmsg &"');"& vbCrLf
                strJs = strJs &"location.replace(url);"& vbCrLf
                strJs = strJs &"//--></script>"

                Response.Write strJs
            End If
        Else
            '----------------------------------------------
            ' 쿠키값이 제대로 설정 않은 경우, 재설정 처리
            '----------------------------------------------
            '쿠키값 세트 : 아이디
            'Call SetCookie ("mem_id", COOK_ID)
            Response.Cookies("mem_id") = COOK_ID
            Response.Cookies("mem_id").Path = "/"
            Response.Cookies("mem_id").Domain = "sdij.com"

            Response.Cookies("mem_nm") = COOK_NM
            Response.Cookies("mem_nm").Path = "/"
            Response.Cookies("mem_nm").Domain = "sdij.com"

            get_mem_type = fncRequestCookie("mem_type")

            Response.Cookies("mem_type") = get_mem_type
            Response.Cookies("mem_type").Path = "/"
            Response.Cookies("mem_type").Domain = "sdij.com"

            'S #001 ADD
            '쿠키값 세트 : (암호화)
            Call SetUserInfoCookie("mem_cd",Encrypt(COOK_ID))
            Call SetUserInfoCookie("mem_id",COOK_ID)
        End If

    Else
        If CStr(Encrypt(fncRequestCookie("mem_id"))) <> fncRequestCookie("mem_cd") then
            response.redirect "/member/sd2019/logout.asp"
        End If

        If CStr(Encrypt(Request.Cookies("mem_id"))) <> fncRequestCookie("mem_cd") then
            response.redirect "/member/sd2019/logout.asp"
        End If
    End If

End Function



'-------------------------------------------------------------------------------
' 함수명  : fncRequestVariables
' INPUT : Request명
' 기능설명 : ServerVariables
'-------------------------------------------------------------------------------
function fncRequestVariables(varParam)

    Dim pp : pp = ""

    if ucase(varParam) = "REMOTE_ADDR" then        '리모트 ip 가져와서리
        pp = Request.ServerVariables("HTTP_CLIENT_IP")
        if pp = "" then   '암것도 없으면 ......
           pp = Request.ServerVariables(varParam)   'REMOTE_ADDR 다시 받고
        end if
    else
        pp = Request.ServerVariables(varParam)      '나머지 서버 변수는 그냥사용
    end if

    fncRequestVariables = pp

end Function



'-------------------------------------------------------------------------------
' 함수명  : Encrypt
' INPUT : src ==> 로그인 아이디
' 기능설명 : 쿠키 값에 암호화
'-------------------------------------------------------------------------------
Function Encrypt(src)

    sum = 0
    for ncnt=1 to len(src)
        'S #001 UPD
        sum = sum + (asc(mid(src,ncnt,1))+85)*(26618587+ncnt)
        'E #001 UPD
    next
    Encrypt = sum

End Function



'-------------------------------------------------------------------------------
' 함수명  : fncRequestCookie
' INPUT : Request명
' 기능설명 :
'-------------------------------------------------------------------------------
function fncRequestCookie(varParam)
    Select Case LCase(varParam)
        Case "mem_cd"     : cIndex = 0    ' 난수값
        Case "mem_id"     : cIndex = 1    ' 아이디
        Case "mem_nm"     : cIndex = 2    ' 회원명
        Case "mem_type"   : cIndex = 3    ' 회원타입
        Case "admin_id"   : cIndex = 4    ' 관리자 아이디
        Case "admin_nm"   : cIndex = 5    ' 관리자
        Case Else         : cIndex =-1    ' 사용자 정의 쿠키
    end select

    CK_USER_INFO = sqlFilter(Request.cookies("CK_USER_INFO"))

    If CK_USER_INFO <> "" And cIndex <> "" And cIndex >= 0 Then
        arrUserInfo = Split(CK_USER_INFO,"|")

        If UBound(arrUserInfo) = 4 Then
            CK_USER_INFO = CK_USER_INFO & "|||"
        End If

        returnValue = arrUserInfo(cIndex)
    Else
        returnValue = sqlFilter(Request.cookies(varParam))
    End If

    fncRequestCookie = trim(returnValue)

End Function



'-------------------------------------------------------------------------------
' 함수명  : SetUserInfoCookie
' INPUT : Cookie 설정 값
' 기능설명 : CK_USER_INFO 값 설정 by 전형표
'-------------------------------------------------------------------------------
Function SetUserInfoCookie(byVal strName, byVal strValue)
    g_mem_cd        = fncRequestCookie("mem_cd")        ' 난수값
    g_mem_id        = fncRequestCookie("mem_id")        ' 아이디
    g_mem_nm        = fncRequestCookie("mem_nm")        ' 회원명
    g_mem_type      = fncRequestCookie("mem_type")      ' 회원타입
    g_admin_id      = fncRequestCookie("admin_id")      ' 관리자 아이디
    g_admin_nm      = fncRequestCookie("admin_nm")      ' 관리자명

    Select Case LCase(strName)
        Case "mem_cd"     : g_mem_cd = strValue
        Case "mem_id"     : g_mem_id = strValue
        Case "mem_nm"     : g_mem_nm = strValue
        Case "mem_type"   : g_mem_type = strValue
        Case "admin_id"   : g_admin_id = strValue
        Case "admin_nm"   : g_admin_nm = strValue
    End Select

    'CK_USER_INFO 쿠키 추가 by 전형표
    g_user_info = g_mem_cd & "|" & g_mem_id & "|" & g_mem_nm & "|" & g_mem_type & "|" & g_admin_id & "|" & g_admin_nm

    Call SetCookie("CK_USER_INFO", g_user_info)
End Function



'-------------------------------------------------------------------------------
' 함수명  : SetCookie
' INPUT : 쿠키명, 쿠키값
' 기능설명 : 쿠키 값 세트
'-------------------------------------------------------------------------------
Function SetCookie(sCNM, sVal)

    Response.Cookies(sCNM) = LCase(sVal)
    Response.Cookies(sCNM).Path = "/"
    Response.Cookies(sCNM).Domain = "sdij.com"

End Function



'-------------------------------------------------------------------------------
' 함수명  : SetMultiCookie
' INPUT : 쿠키명, 쿠키값
' 기능설명 : 쿠키 값 세트
'-------------------------------------------------------------------------------
Function SetMultiCookie(sUNM, sLNM, sVal)

    Response.Cookies(sUNM)(sLNM) = LCase(sVal)
    Response.Cookies(sUNM).Path = "/"
    Response.Cookies(sUNM).Domain = "sdij.com"

End Function



'-------------------------------------------------------------------------------
' 함수명  : date_diff
' INPUT : InpDate1 ==> yyyy-mm-dd
' 기능설명 : 두 입력 날짜 차이 구하기
'-------------------------------------------------------------------------------
Function date_diff(InpDate1, InpDate2)

    If Len(InpDate1) = 10 And Len(InpDate2) = 10 Then
        date_diff = CInt(datediff("d", InpDate1 , InpDate2))
    Else
        date_diff = ""
    End If

End Function



'-------------------------------------------------------------------------------
' 함수명  : date_add
' INPUT : InpDate1 ==> yyyy-mm-dd
' 기능설명 : day 더하기
'-------------------------------------------------------------------------------
Function date_add(InpDate, InpDays)

    If InpDate = "" Or InpDays = "" Then
        date_add = ""
    Else
        date_add = DateAdd("d", InpDays, InpDate)
    End If

End Function



'-------------------------------------------------------------------------------
' 함수명  : STR_TO_SEARCH
' INPUT : cur_str ==> 검사할 문자열
' 기능설명 : STR을 DB에 넣을때
'-------------------------------------------------------------------------------
Function STR_TO_SEARCH(cur_str)

    cur_str = replace(cur_str,"'","")
    cur_str = replace(cur_str,"&","")
    cur_str = replace(cur_str,"<","")
    cur_str = replace(cur_str,">","")
    cur_str = replace(cur_str,";","")
    cur_str = replace(cur_str,"%","")
    cur_str = replace(cur_str,"-","")

    STR_TO_SEARCH = cur_str

End Function



'-------------------------------------------------------------------------------
' 함수명  : STR_TO_DB
' INPUT : cur_str ==> 검사할 문자열
' 기능설명 : STR을 DB에 넣을때
'-------------------------------------------------------------------------------
Function STR_TO_DB(cur_str)

    If Trim(cur_str) <> "" Then
        cur_str = replace(cur_str,"'","''")
        cur_str = replace(cur_str,"""""","""")
        cur_str = replace(cur_str,"\\","\")
        cur_str = replace(cur_str,"\"&null,"null")
        cur_str = replace(cur_str,"\#","#")
        cur_str = replace(cur_str,"\--","--")
        cur_str = replace(cur_str,"\;",";")

        cur_str = replace(cur_str,"&amp;","&")
        cur_str = replace(cur_str,"<","&lt;")
        cur_str = replace(cur_str,">","&gt;")
        cur_str = replace(cur_str,"&cute;", "")
        cur_str = replace(cur_str,"&nbsp&#59;", "")
        ' cur_str = replace(cur_str," ?", "")

        cur_str = Replace(cur_str,"#","&#35;")
        cur_str = Replace(cur_str,"(","&#40;")
        cur_str = Replace(cur_str,")","&#41;")
        cur_str = replace(cur_str,"&","&amp;")

        cur_str = Replace(cur_str,"script","")
        cur_str = Replace(cur_str,"JavaScript","")
        cur_str = Replace(cur_str,"Vbscript","")
        cur_str = Replace(cur_str,"cookie","")
        cur_str = Replace(cur_str,"location","")
    End If

    STR_TO_DB = cur_str

End Function



'-------------------------------------------------------------------------------
' 함수명  : DB_TO_STR
' INPUT : cur_str ==> 검사할 문자열
' 기능설명 : DB 에서 STR 뺄때
'-------------------------------------------------------------------------------
Function DB_TO_STR(cur_str)

    If Trim(cur_str) <> "" Then
        cur_str = replace(cur_str,"''","'")
        cur_str = Replace(cur_str, """""", """")
        cur_str = Replace(cur_str, "\\", "\")
        cur_str = Replace(cur_str, "\"&null, "")
        cur_str = Replace(cur_str, "\#", "#")
        cur_str = Replace(cur_str, "\--", "--")
        cur_str = Replace(cur_str, "\;", ";")


        ' cur_str = replace(cur_str,"""","'")
        cur_str = replace(cur_str,"&amp;","&")
        cur_str = replace(cur_str,"&lt;","<")
        cur_str = replace(cur_str,"&gt;",">")
        cur_str = Replace(cur_str,"&cute;", "")
        cur_str = Replace(cur_str,"&nbsp&#59;", "")
        cur_str = Replace(cur_str," ?", "")
        cur_str = Replace(cur_str,"\;", "")

        cur_str = Replace(cur_str,"&#35;","#")
        cur_str = Replace(cur_str,"&#40;","(")
        cur_str = Replace(cur_str,"&#41;",")")

        cur_str = Replace(cur_str,"script","")
        cur_str = Replace(cur_str,"JavaScript","")
        cur_str = Replace(cur_str,"Vbscript","")
        cur_str = Replace(cur_str,"cookie","")
        cur_str = Replace(cur_str,"location","")

    End If

    DB_TO_STR = cur_str

End Function



'-------------------------------------------------------------------------------
' 함수명  : ChrReConvert
' INPUT : str ==> 역치환할 문자열
' 기능설명 : 문자열 역치환
'-------------------------------------------------------------------------------
Function ChrReConvert(str)

    str = replace(str,"&#34;",chr(34))  'Quotation mark
    str = replace(str,"&#39;",chr(39))  'Apostrophe
    str = replace(str,"&amp;","&")      'Ampersand
    str = replace(str,"&lt;","<")       'disable HTML tag
    str = replace(str,"&gt;",">")       'disable HTML tag

    ChrReConvert = str

End Function



'-------------------------------------------------------------------------------
' 함수명  : ConvertChr
' INPUT : str ==> 치환할 문자열
' 기능설명 : 문자열 치환
'-------------------------------------------------------------------------------
Function ConvertChr(str)

    str = replace(str,"&lt;","<")       'disable HTML tag
    str = replace(str,"&gt;",">")       'disable HTML tag
    str = replace(str,"&amp;","&")      'Ampersand
    str = replace(str,"&#34;",chr(34))  'Quotation mark
    str = replace(str,"&#39;",chr(39))  'Apostrophe

    ConvertChr = str

End Function



'-------------------------------------------------------------------------------
' 함수명  : EscapeQuery
' INPUT : str ==> 검색 질의 문자열
' 작성일자 :
' 작성자  :
' 기능설명 : 검색 질의 문자열
'-------------------------------------------------------------------------------
Function escapeQuery( str )

    Dim ret
    ret = ""

    For i=1 To Len(str)
        c = Mid(str,i,1)
        Select Case c
            Case "\"
                ret = ret & "\\"
            Case "'"
                ret = ret & "\'"
            Case chr(34)
                ret = ret & "\" & chr(34)
            Case "*"
                ret = ret & "\*"
            Case else
                ret = ret & c
        End Select
    Next

    escapeQuery = ret

End Function



'-------------------------------------------------------------------------------
' 함수명  : formatDate
' INPUT : dt ==> 날짜 문자열
' INPUT : sep ==> 구분자 (예를들면, '-' or '/' or ' ' )
' 작성일자 :
' 작성자  :
' 기능설명 : 날짜를 Date타입으로 Formating하여 문자열 변환
'-------------------------------------------------------------------------------
Function formatDate( dt, sep )

    If Len(dt) <> 14 Then
        formatDate = dt
        Exit function
    End If

    yy = Left(dt,4)
    mm = Mid(dt,5,2)
    dd = Mid(dt,7,2)
    ret = yy & sep & mm & sep & dd

    hh = Mid(dt,9,2)
    mi = Mid(dt,11,2)
    ret = ret & " " & hh & ":" & mi
    formatDate = ret

End function



'-------------------------------------------------------------------------------
' 함수명  : formatHtml
' INPUT : str ==> 검색 결과의 문자열
' 작성일자 :
' 작성자  :
' 기능설명 : 검색 내용을 HTML로 format
' 수정자  :
'-------------------------------------------------------------------------------
Function formatHtml( str )

    formatHtml = Replace(str,CHR(13)&Chr(10),"")

End Function



'-------------------------------------------------------------------------------
' 함수명  : formatEnter
' INPUT : str ==> 검색 결과의 문자열
' 작성일자 :
' 작성자  :
' 기능설명 : 검색 내용을 HTML로 format
' 수정자  :
'-------------------------------------------------------------------------------
Function formatEnter( str )

    formatEnter = Replace(str,CHR(13)&Chr(10),"</br>")

End Function



'-------------------------------------------------------------------------------
' 함수명  : ZeroFormat
' INPUT : str ==> 문자열, inum ==> 포멧문자길이
' 작성일자 :
' 작성자  :
' 기능설명 : 포맷에 맞추어 리턴 -> ex) 0 -> 01
'-------------------------------------------------------------------------------
Function ZeroFormat(str,inum)

    Dim sString,iLen
    Dim iDiff           '차이
    Dim idx
    Dim sAdd
    Dim sRet

    sString = CStr(str)
    iLen = Len(str)

    If iLen < inum Then '문자열 길이가 지정길이보다 작으면 그 수만큼 0을 앞에 붙인다
        iDiff = inum - iLen
        For idx = 0 To iDiff - 1
            sAdd = sAdd & "0"
        Next
    End If

    sRet = sAdd + CStr(str)
    ZeroFormat = sRet

End Function



'-------------------------------------------------------------------------------
' 함수명  : GetSubString
' INPUT :  - str : 변환할 스트링, - strLength : 일정길이
' 작성일자 :
' 작성자  :
' 기능설명 : 보여줄 문자열(인자값: str)이 일정길이(인자값: strLength)보다 클경우 그 길이만큼만 잘라서 보여주기 위한 함수
'-------------------------------------------------------------------------------
FUNCTION GetSubString(ByVal strLength, ByVal Str)

    Dim strLen

    if isNull(Str) = False then
        strLen = len(Str)

        if cInt(strLen) > cInt(strLength) then
            str = left(str, strLength) & "..."
        end if
            GetSubString = str
    else
         GetSubString = ""
    end if

END FUNCTION



'-------------------------------------------------------------------------------
' 함수명  : REPLACE_FONT
' INPUT :  폰트 제거
' 작성일자 :
' 작성자  :
' 기능설명 :
'-------------------------------------------------------------------------------
Function REPLACE_FONT(ByTtile)

    tot_str = LCase(ByTtile)

    For i = 1 To Len(ByTtile)
        If InStr(i, tot_str, "<") > 0 And InStr(i, tot_str, ">") > 0 Then
            tmp_str = Mid(tot_str, InStr(i, tot_str, "<") + 1, InStr(i, tot_str, ">") - 1)

            If InStr(1, tmp_str, "font") Or InStr(1, tmp_str, "b") Then
                pre_str = Left(tot_str, InStr(1, tot_str, "<") - 1)
                aft_str = Mid(tot_str, InStr(1, tot_str, ">") + 1)
                tot_str = pre_str & aft_str
            End If
        Else
            Exit For
        End If
    Next

    REPLACE_FONT = tot_str

End Function



'-------------------------------------------------------------------------------
' 함수명  : rxReplace
' INPUT : 폰트 제거
' 작성일자 :
' 작성자  :
' 기능설명 : ' rxReplace( html, "<\b[^>]*>", "", "gi")
'         ' rxReplace( html, "<font\b[^>]*>|<center\b[^>]*>", "", "gi")
'-------------------------------------------------------------------------------
function rxReplace( text, pattern, replace_text, flags )

    if IsNull(text) or (text="") then
        rxReplace = ""
    else
        dim rx : set rx = new RegExp

        rx.IgnoreCase = CBool(InStr(1,flags,"i")>0)
        rx.Global = CBool(InStr(1,flags,"g")>0)
        rx.MultiLine = CBool(InStr(1,flags,"m")>0)
        rx.Pattern = pattern
        rxReplace = rx.Replace(text, replace_text)

        set rx = nothing
    end if

end function

'-------------------------------------------------------------------------------
' 함수명  : removeHTML
' INPUT :
' 작성일자 :
' 작성자  :
' 기능설명 :
'-------------------------------------------------------------------------------
function removeHTML(strHTML)

   dim objRegExp

   on error resume next
   set objRegExp = New RegExp

   With objRegExp
      .Global = true
      .IgnoreCase = true
      .Pattern = "<[a-zA-Z\/\s][^>]*>"
      strHTML = .Replace(strHTML, "")
   end With

   set objRegExp = nothing
   removeHTML = strHTML

end function



'-------------------------------------------------------------------------------
' 함수명  : cutStr
' INPUT :
' 작성일자 :
' 작성자  :
' 기능설명 : 문자 길이 자른 후 리턴
'-------------------------------------------------------------------------------
Function cutStr(title, num)

     dim i, sum, title_one, result, sumByte

     If Trim(title)="" Or IsNull(title) Then
        result = ""
     else
        for i = 1 to len(title)
            title_one = MID(title, i, 1)
            if ASC(title_one)<0 then sumByte = sumByte + 2 else sumByte = sumByte + 1
            if sumByte>num then result = result &".." : exit for else result = result + title_one
        Next
     End If

     cutStr = result

End Function



'-----------------------------------------------------------------------
' 함수명  : debugwin
' 기능설명 : 쿼리문 정렬 후 팝업 출력.
' 작성자  :
' ex) debugwin(strSql)
'-----------------------------------------------------------------------
Sub debugwin(byVal msg)

    Dim debug_userip
    debug_userip = request.servervariables("REMOTE_ADDR")

    Select Case debug_userip
    Case "49.254.17.106" :
        msg = LCase(msg)
        msg = replace(msg,"select","<br>select")
        msg = replace(msg,"from","<br>from")
        msg = replace(msg,"inner join","<br>inner join")
        msg = replace(msg,"left outer join","<br>left outer join")
        msg = replace(msg,"left join","<br>left join")
        msg = replace(msg,"where","<br>where")
        msg = replace(msg,"group by","<br>group by")
        msg = replace(msg,"order","<br>order")
        msg = replace(msg,"insert","<br>insert")
        msg = replace(msg,"update","<br>update")
        response.write "<script language=javascript>"
        response.write "t=open('','','width=500,height=300,resizable=1');"
        response.write "t.document.open();"
        response.write "t.document.writeln(""<html><head><META http-equiv='Content-Type' content='text/html; charset=UTF-8'><style type='text/css'>body{font-family:굴림,arial;font-size:9pt;line-height:150%;}</style><title>cookie values viewer</title></head><body>" & msg & "</body></html>"");"
        response.write "t.document.close();"
        response.write "</script>"
    End Select

End Sub



'-----------------------------------------------------------------------
' 함수명  : debugwin
' 기능설명 : tag2Text 함수 이용 후 이미지 경로 추출
' 작성자  :
' ex) arrTag     = getImageTags(TM_TBL)
'     arrUrl     = getImageUrls(TM_TBL)
'     참고 페이지 : academy/prof/tec_timetable_pop.asp
'-----------------------------------------------------------------------

'지정 패턴에 해당하는 문자열 치환
    Function RegExpReplace(ByVal pattern, ByVal strText, ByVal strReplace)
        Dim objRegExp
        Set objRegExp = new RegExp
        objRegExp.Pattern = pattern
        objRegExp.Global = True
        objRegExp.IgnoreCase = True

        RegExpReplace = objRegExp.Replace(strText, strReplace)

        Set objRegExp = Nothing
    End Function


'패턴 매치 결과 컬렉션 반환
    Function RegExpExec(ByVal pattern, ByVal strText)
        Dim objRegExp
        Set objRegExp = new RegExp
        objRegExp.Pattern = pattern
        objRegExp.Global = True
        objRegExp.IgnoreCase = True

        Set RegExpExec = objRegExp.Execute(strText)
        Set objRegExp = Nothing
    End Function


'지정 패턴에 해당하는 문자열을 추출하여 배열로 반환
    Function RegExpArray(ByVal pattern, ByVal strText)
        Dim objRegExp
        Set objRegExp = new RegExp
        objRegExp.Pattern = pattern
        objRegExp.Global = True
        objRegExp.IgnoreCase = True

        Dim match, Matches, idx
        Dim arrList()
        idx = -1

        Set Matches = objRegExp.Execute(strText)

        If Matches.Count = 0 Then
            RegExpArray = Null
        Else
            For Each match In Matches
                idx = idx + 1
                ReDim Preserve arrList(idx)
                arrList(idx) = match
            Next

            RegExpArray = arrList
        End If

        Set objRegExp = Nothing
    End Function

'본문내 포함된 이미지 태그 목록 추출
    Function getImageTags(ByVal html)
        getImageTags = RegExpArray("<img [^<>]*>", html)
    End Function


'본문내 포함된 이미지 경로 목록 추출
    Function getImageUrls(ByVal html)
        getImageUrls = RegExpArray("[^=']*\.(gif|jpg|bmp)", html)
    End Function


'본문내 태그 제거
    Function removeTags(ByVal html)
        removeTags = RegExpReplace("<[^>]+>", html, "")
    End Function


'-------------------------------------------------------------------------------
' Function name : FN_CUT_STR
' Parameter : cutVal = 원본 문자열
' cutLen = 자를 길이
' Description : 문자열 자르기
'-------------------------------------------------------------------------------
Function FN_CUT_STR(ByVal cutVal, ByVal cutLen)
    Dim strLen, tmpStr, result
    strLen = 0
    tmpStr = ""

    If cutVal <> "" Then
        For cut_i = 1 To Len(cutVal)
            If Asc(Mid(cutVal, cut_i, 1)) < 0 Then
               strLen = strLen + 2      ' 한글 길이값 설정
            ElseIf Asc(Mid(cutVal, cut_i, 1)) >= 97 And Asc(Mid(cutVal, cut_i, 1)) <= 122 Then
                strLen = strLen + 1     ' 영문소문자 길이값 설정
            ElseIf Asc(Mid(cutVal, cut_i, 1)) >= 65 And Asc(Mid(cutVal, cut_i, 1)) <= 90 Then
                strLen = strLen + 1.5   ' 영문대문자 길이값 설정
            Else ' 그외 키값
               strLen = strLen + 1
            End If

            tmpStr = Mid(cutVal, cut_i, 1)

            result = result & tmpStr
            If strLen >= cutLen Then
                cutVal = result & ".."
                Exit For
            End If
        Next
    End If

    FN_CUT_STR = cutVal
End Function


'-------------------------------------------------------------------------------
' 함수명  : GO_GST_LOGIN
' INPUT :
' 기능설명 : 비회원 로그인 사용자가 아닌 경우 로그인페이지로 이동
'-------------------------------------------------------------------------------
Function GO_GST_LOGIN()

    If IsEmpty(Request.Cookies("gst_id")) OR IsNull(Request.Cookies("gst_id")) OR Request.Cookies("gst_id") = "" Then
        If COOK_GST_ID = "" Then
            Response.write "<script type='text/javascript'>"
            Response.write "   location.href = '/member/sd2019/login.asp' "
            Response.write "</script>"
            Response.End
        Else
            '----------------------------------------------
            ' 쿠키값이 제대로 설정 않은 경우, 재설정 처리
            '----------------------------------------------
            '쿠키값 세트 : 아이디
            'Call SetCookie ("mem_id", COOK_ID)
            Response.Cookies("gst_id") = COOK_GST_ID
            Response.Cookies("gst_id").Path = "/"
            Response.Cookies("gst_id").Domain = "sdij.com"

            'S #001 ADD
            '쿠키값 세트 : (암호화)
            Call SetGstInfoCookie("gst_cd", Encrypt(COOK_GST_ID))
            Call SetGstInfoCookie("gst_id", COOK_GST_ID)
        End If

    Else
        If CStr(Encrypt(fncRequestCookieGst("gst_id"))) <> fncRequestCookieGst("gst_cd") Then
            response.redirect "/member/sd2019/logout.asp"
        End If

        If CStr(Encrypt(Request.Cookies("gst_id"))) <> fncRequestCookieGst("gst_cd") then
            response.redirect "/member/sd2019/logout.asp"
        End If
    End If

End Function


'-------------------------------------------------------------------------------
' 함수명  : fncRequestCookieGst
' INPUT : Request명
' 기능설명 :
'-------------------------------------------------------------------------------
function fncRequestCookieGst(varParam)
    Select Case LCase(varParam)
        Case "gst_cd"     : cIndex = 0    ' 비회원 난수값
        Case "gst_id"     : cIndex = 1    ' 비회원 아이디
        Case Else         : cIndex =-1    ' 사용자 정의 쿠키
    End Select

    CK_GST_INFO = sqlFilter(Request.cookies("CK_GST_INFO"))

    If CK_GST_INFO <> "" And cIndex <> "" And cIndex >= 0 Then
        arrGstInfo = Split(CK_GST_INFO, "|")

        returnValue = arrGstInfo(cIndex)
    Else
        returnValue = sqlFilter(Request.cookies(varParam))
    End If

    fncRequestCookieGst = trim(returnValue)

End Function


'-------------------------------------------------------------------------------
' 함수명  : SetGstInfoCookie
' INPUT : Cookie 설정 값
' 기능설명 : CK_USER_INFO 값 설정 by 전형표
'-------------------------------------------------------------------------------
Function SetGstInfoCookie(byVal strName, byVal strValue)
    g_gst_cd = fncRequestCookieGst("gst_cd")        ' 비회원 난수값
    g_gst_id = fncRequestCookieGst("gst_id")        ' 비회원 아이디

    Select Case LCase(strName)
        Case "gst_cd"     : g_gst_cd = strValue
        Case "gst_id"     : g_gst_id = strValue
    End Select

    'CK_USER_INFO 쿠키 추가 by 전형표
    g_gst_info = g_gst_cd & "|" & g_gst_id

    Call SetCookie("CK_GST_INFO", g_gst_info)
End Function



'-------------------------------------------------------------------------------
'함수명      : rate_of_change
'INPUT      : now_num_cnt  : 현재 수치 ( 예:금년 )
'             prev_num_cnt : 이전 수치 ( 예:작년 )
'기능설명    : 기준대비 현재 수치 증감률
'             대비 수치 증감률(%) 표기 처리 함수
'-------------------------------------------------------------------------------
Function rate_of_change(now_num_cnt, prev_num_cnt)
    ' now_num_cnt  : 현재 수치 ( 예:금년 )
    ' prev_num_cnt : 이전 수치 ( 예:작년 )

    If now_num_cnt  = "" Then now_num_cnt  = 0
    If prev_num_cnt = "" Then prev_num_cnt = 0

    If now_num_cnt = 0 And prev_num_cnt = 0 Then
        rate_of_change = 0
    ElseIf now_num_cnt = 0 Then
        rate_of_change = prev_num_cnt * 100 * -1
    ElseIf prev_num_cnt = 0 Then
        rate_of_change = now_num_cnt * 100
    Else
        rate_of_change = (((prev_num_cnt-now_num_cnt) * 100) / prev_num_cnt) * -1
    End If

    If rate_of_change = -0 Then rate_of_change = 0

    rate_of_change = FormatNumber(rate_of_change, 0)
End Function
%>