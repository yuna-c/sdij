<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 - 회원 가입 중복 체크
' 모듈기능 : 회원 가입 중복 체크
' 파 일 명 : mem_duplication_proc.asp
' 작성일자 : 2017/04/06
' 작 성 자 : 이재충
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------

strStatus   = 200

memType     = fncRequestForm("memType")
memHp       = fncRequestForm("memHp")

arrParams = Array( _
    DbCon.makeParam("@MM_MEM_TYPE", adVarchar, adParamInput, 6, memType), _
    DbCon.makeParam("@MM_HP", adVarchar, adParamInput, 11, memHp), _
    DbCon.MakeParam("@RETURN_CNT",adInteger,adParamOutput,0, 0) _
)

Call DbCon.ExecSP("P_MEM_MST_DUPLICATION_PROC",arrParams,Nothing)
strStatus = arrParams(UBound(arrParams))(4)

jsonText = "{""status"":""" & strStatus & """,""result"":""" & strResult & """}"
response.write jsonText
%>
