<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 - 온라인서비스
' 모듈기능 : 핸드폰 인증 받기
' 파 일 명 : authNumber_proc.asp
' 작성일자 : 2017/04/04
' 작 성 자 : 이재충
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------

strStatus   = 200
strResult   = ""
strRandom   = "0123456789"

mode        = fncRequestForm("mode")
authIdx     = fncRequestForm("authIdx")
authHp      = fncRequestForm("authHp")
smsGubun    = fncRequestForm("smsGubun")
authNumber  = ""
authDate    = ""
authTel     = ""    ' 연락받을 번호가 없을 경우 대표번호로 설정

Select Case mode
    Case "GET"  ' 인증번호 받기
        authNumber = fncRandom(strRandom, 6)
        authMsg = "[시대인재on] 인증번호 [" & authNumber & "]를 입력해 주세요."

        Call FN_SMS(DbCon, authHp, authTel, authMsg, authDate)

    Case "SET"  ' 인증번호 확인
        authNumber = fncRequestForm("authNumber")
End Select 


arrParams = Array( _
    DbCon.makeParam("@MODE", adChar, adParamInput, 3, mode), _
    DbCon.makeParam("@SA_IDX", adInteger, adParamInput, 4, blank2Null(authIdx)), _
    DbCon.makeParam("@SA_HP", adVarChar, adParamInput, 11, authHp), _
    DbCon.makeParam("@SA_NUM", adVarchar, adParamInput, 6, authNumber), _
    DbCon.makeParam("@SA_MEM_ID", adVarchar, adParamInput, 20, blank2Null(COOK_ID)), _
    DbCon.makeParam("@SA_SMS_GUBUN", adVarchar, adParamInput, 6, blank2Null(smsGubun)), _
    DbCon.MakeParam("@RETURN_CNT",adInteger,adParamOutput,0, 0) _
)

Call DbCon.ExecSP("P_SMS_AUTH_PROC",arrParams,Nothing)
strStatus = arrParams(UBound(arrParams))(4)



jsonText = "{""status"":""" & strStatus & """,""result"":""" & strResult & """}"
response.write jsonText
%>
