<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 - 게시판관리 - 공통
' 모듈기능 : 게시판관리 공통게시판 파일 삭제처리
' 파 일 명 : board_ment_del.asp
' 작성일자 : 2017-03-21
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
bseq = fncRequestForm("bseq")
mseq = fncRequestForm("mseq")
reg_id = fncRequestForm("reg_id")
ment  = fncRequestForm("ment")
proc_flg = fncRequestForm("proc_flg")


'------------------------------
' QUERY
'------------------------------
arrParams = Array( _
	DbCon.makeParam("@BM_BRD_CD", adVarChar, adParamInput, 10, bcd), _
	DbCon.makeParam("@MT_BD_SEQ", adInteger, adParamInput, 0, bseq), _
	DbCon.makeParam("@MT_SEQ", adInteger, adParamInput, 0, mseq), _
	DbCon.makeParam("@MT_REG_ID", adVarChar, adParamInput, 20, reg_id), _
	DbCon.makeParam("@MT_TXT", adVarChar, adParamInput, 500, ment), _
	DbCon.makeParam("@MT_PROC_FLG", adChar, adParamInput, 1, proc_flg) _
)

Call DbCon.ExecSP("P_COMMON_BRD_MENT_PROC",arrParams,DBSDIJBRD)

If Err.Number = 0 Then
	result = 1
	msg  = "정상적으로 삭제 되엇습니다."
Else
	result = 0
	msg  = "삭제중 오류가 발생하였습니다."
End If

'------------------------------
' ETC
'------------------------------
Response.write "{""result"":" & result& ",""return_val"":""" & return_val& """,""msg"":""" & msg& """}"

DbCon.Dispose
Set DbCon = Nothing
%>
