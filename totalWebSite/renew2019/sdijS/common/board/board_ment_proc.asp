<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 on 공통게시판
' 모듈기능 : 시대인자on 공통게시판 > 댓글/댓글-답글 등록
' 파 일 명 : board_ment_proc.asp
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

reg_id = fncRequestForm("reg_id")
bcd = fncRequestForm("bcd")
bseq = fncRequestForm("bseq")
mseq = fncRequestForm("mseq")
mt_txt = fncRequestForm("mt_txt")
proc_flg = fncRequestForm("proc_flg")


'------------------------------
' QUERY
'------------------------------
	arrParams = Array( _
		DbCon.makeParam("@BM_BRD_CD", adVarChar, adParamInput, 10, bcd), _
		DbCon.makeParam("@MT_BD_SEQ", adInteger, adParamInput, 0, bseq), _
        DbCon.makeParam("@MT_SEQ", adInteger, adParamInput, 0, mseq), _
        DbCon.makeParam("@MT_REG_ID", adVarChar, adParamInput, 20, reg_id), _
		DbCon.makeParam("@MT_TXT", adLongVarChar, adParamInput, Len(blank2Text(mt_txt,"0")) + 30, mt_txt), _
		DbCon.makeParam("@MT_PROC_FLG", adChar, adParamInput, 2, proc_flg) _
	)

	Call DbCon.ExecSP("P_COMMON_BRD_MENT_PROC",arrParams,DBSDIJBRD)



If Err.Number = 0 Then
	result = 1
	msg  = "정상적으로 등록 되었습니다."
Else
	result = 0
	msg  = "등록중 오류가 발생하였습니다."
End If



'------------------------------
' ETC
'------------------------------
Response.write "{""result"":" & result& ",""msg"":""" & msg& """}"

DbCon.Dispose
Set DbCon = Nothing
%>
