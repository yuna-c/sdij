<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library"
      FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->
<%
	Class clsDBHelper

		Private DefaultConnString
		Private DefaultConnection

		Private isTransUse

		Private DebugDic
		Private isDebug

		private sub Class_Initialize()
			DefaultConnString = "Provider=SQLOLEDB;Data Source="&DB_HOST&";Initial Catalog="&DB_NAME&";User Id="&DB_USER&";Password="&DB_PASS&";"
			Set DefaultConnection = Nothing

			isTransUse = False

			Set DebugDic = Nothing
			isDebug = True

		End Sub



		'---------------------------------------------------
		' SP를 실행하고, RecordSet을 반환한다.
		'---------------------------------------------------
		Public Function ExecSPReturnRS(spName, params, connectionString)
			If IsObject(connectionString) Then
				If connectionString is Nothing Then
					If DefaultConnection is Nothing Then
						Set DefaultConnection = CreateObject("ADODB.Connection")
						DefaultConnection.Open DefaultConnString
					End If

					Set connectionString = DefaultConnection
				End If
			End If


			Set rs = CreateObject("ADODB.RecordSet")
			Set cmd = CreateObject("ADODB.Command")

			cmd.ActiveConnection = connectionString
			cmd.CommandText = spName
			cmd.CommandType = adCmdStoredProc
			Set cmd = collectParams(cmd, params)
			'cmd.Parameters.Refresh

			rs.CursorLocation = adUseClient
			rs.Open cmd, ,adOpenStatic, adLockReadOnly

			For helper_i = 0 To cmd.Parameters.Count - 1
				If cmd.Parameters(helper_i).Direction = adParamOutput OR cmd.Parameters(helper_i).Direction = adParamInputOutput OR cmd.Parameters(helper_i).Direction = adParamReturnValue Then
					If IsObject(params) Then
						If params is Nothing Then
							Exit For
						End If
					Else
						params(helper_i)(4) = cmd.Parameters(helper_i).Value
					End If
				End If
			Next

			Set cmd.ActiveConnection = Nothing
			Set cmd = Nothing
			
			'명령 개체를 원본으로 가진 레코드 집합 개체의 활성 연결 속성을 변경할 수 없습니다
			' 라는 에러가 발생하여 추가한 내용 문제가 생길 시 삭제 및 주석처리를 하면 된다.
			' 2017-04-12일 김성울 추가
			'----------------------------------------------------------------------------------------
			'If rs.State = adStateClosed Then
			'	Set rs.Source = Nothing
			'End If
			'-----------------------------------------------------------------------------------------

			Set rs.ActiveConnection = Nothing

			Set ExecSPReturnRS = rs

		End Function



		'---------------------------------------------------
		' SQL Query를 실행하고, RecordSet을 반환한다.
		'---------------------------------------------------
		Public Function ExecSQLReturnRS(strSQL, params, connectionString)
			If IsObject(connectionString) Then
				If connectionString is Nothing Then
					If DefaultConnection is Nothing Then
						Set DefaultConnection = CreateObject("ADODB.Connection")
						DefaultConnection.Open DefaultConnString
					End If

					Set connectionString = DefaultConnection
				End If
			End If

			Set rs = CreateObject("ADODB.RecordSet")
			Set cmd = CreateObject("ADODB.Command")

			cmd.ActiveConnection = connectionString
			cmd.CommandText = strSQL
			cmd.CommandType = adCmdText
			Set cmd = collectParams(cmd, params)

			rs.CursorLocation = adUseClient
			rs.Open cmd, , adOpenStatic, adLockReadOnly

			Set cmd.ActiveConnection = Nothing
			Set cmd = Nothing

			'명령 개체를 원본으로 가진 레코드 집합 개체의 활성 연결 속성을 변경할 수 없습니다
			' 라는 에러가 발생하여 추가한 내용 문제가 생길 시 삭제 및 주석처리를 하면 된다.
			' 2017-04-12일 김성울 추가
			'----------------------------------------------------------------------------------------
			'If rs.State = adStateClosed Then
			'	Set rs.Source = Nothing
			'End If
			'-----------------------------------------------------------------------------------------

			Set rs.ActiveConnection = Nothing

			Set ExecSQLReturnRS = rs
		End Function



		'---------------------------------------------------
		'	List Sql Query(SP) 실행 (Array 반환)
		'	cmdType :
		'	쿼리 : adCmdText , 프로시저 :  adCmdStoredProc
		'---------------------------------------------------
		Public Function ExecRsList(sql, cmdType, params, listLen, connectionString)
			Dim Rs
			Dim arrList

			arrList = Null
			listLen = -1

			If cmdType = adCmdStoredProc Then
				Set Rs = ExecSPReturnRS(sql, params, connectionString)
			Else
				Set Rs = ExecSQLReturnRS(sql, params, connectionString)
			End If

			If Not Rs.Bof And Not Rs.Eof Then
				arrList = Rs.GetRows
				listLen = UBound(arrList, 2)
			End If

			If Rs.State = adStateOpen Then Rs.close
			Set Rs = Nothing

			ExecRsList = arrList
		End Function



		'---------------------------------------------------
		'	Sql Query(SP) 실행 (단일 Data 반환)
		'	cmdType :
		'	쿼리 : adCmdText , 프로시저 :  adCmdStoredProc
		'---------------------------------------------------
		Public Function ExecRsData(sql, cmdType, params, connectionString)
			Dim Rs
			Dim data

			data = Null

			If cmdType = adCmdStoredProc Then
				Set Rs = ExecSPReturnRS(sql, params, connectionString)
			Else
				Set Rs = ExecSQLReturnRS(sql, params, connectionString)
			End If

			If Not Rs.Bof And Not Rs.Eof Then
				data = Rs(0)
			End If

			If Rs.State = adStateOpen Then Rs.close
			Set Rs = Nothing

			execRsData = data
		End Function



		'---------------------------------------------------
		' SP를 실행한다.(RecordSet 반환없음)
		'---------------------------------------------------
		Public Sub ExecSP(strSP,params,connectionString)
			If IsObject(connectionString) Then
				If connectionString is Nothing Then
					If DefaultConnection is Nothing Then
						Set DefaultConnection = CreateObject("ADODB.Connection")
						DefaultConnection.Open DefaultConnString
					End If

					Set connectionString = DefaultConnection
				End If
			End If

			Set cmd = CreateObject("ADODB.Command")

			cmd.ActiveConnection = connectionString
			cmd.CommandText = strSP
			cmd.CommandType = adCmdStoredProc
			Set cmd = collectParams(cmd, params)

			cmd.Execute , , adExecuteNoRecords

			For helper_i = 0 To cmd.Parameters.Count - 1
				If cmd.Parameters(helper_i).Direction = adParamOutput OR cmd.Parameters(helper_i).Direction = adParamInputOutput OR cmd.Parameters(helper_i).Direction = adParamReturnValue Then
					If IsObject(params) Then
						If params is Nothing Then
							Exit For
						End If
					Else
						params(helper_i)(4) = cmd.Parameters(helper_i).Value
					End If
				End If
			Next

			Set cmd.ActiveConnection = Nothing
			Set cmd = Nothing
		End Sub




		'---------------------------------------------------
		' SP를 실행한다.(RecordSet 반환없음)
		'---------------------------------------------------
		Public Sub ExecSQL(strSQL,params,connectionString)
            Call addDebug(strSQL)
			
            If IsObject(connectionString) Then
				If connectionString is Nothing Then
					If DefaultConnection is Nothing Then
						Set DefaultConnection = CreateObject("ADODB.Connection")
						DefaultConnection.Open DefaultConnString
					End If

					Set connectionString = DefaultConnection
				End If
			End If

			Set cmd = CreateObject("ADODB.Command")

			cmd.ActiveConnection = connectionString
			cmd.CommandText = strSQL
			cmd.CommandType = adCmdText
			Set cmd = collectParams(cmd, params)

			cmd.Execute , , adExecuteNoRecords

			Set cmd.ActiveConnection = Nothing
			Set cmd = Nothing
		End Sub




		'---------------------------------------------------
		' 트랜잭션을 시작하고, Connetion 개체를 반환한다.
		'---------------------------------------------------
		Public Function BeginTrans(connectionString)
			If IsObject(connectionString) Then
				If connectionString is Nothing Then
					connectionString = DefaultConnString
				End If
			End If

			Set conn = Server.CreateObject("ADODB.Connection")
			conn.Open connectionString
			conn.BeginTrans
			Set BeginTrans = conn
		End Function




		'---------------------------------------------------
		' 활성화된 트랜잭션을 커밋한다.
		'---------------------------------------------------
		Public Sub CommitTrans(connectionObj)
			If Not connectionObj Is Nothing Then
				connectionObj.CommitTrans
				connectionObj.Close
				Set ConnectionObj = Nothing
			End If
		End Sub




		'---------------------------------------------------
		' 활성화된 트랜잭션을 롤백한다.
		'---------------------------------------------------
		Public Sub RollbackTrans(connectionObj)
			If Not connectionObj Is Nothing Then
				connectionObj.RollbackTrans
				connectionObj.Close
				Set ConnectionObj = Nothing
			End If
		End Sub




		'---------------------------------------------------
		' 배열로 매개변수를 만든다.
		'---------------------------------------------------
		Public Function MakeParam(PName,PType,PDirection,PSize,PValue)
			MakeParam = Array(PName, PType, PDirection, PSize, PValue)
		End Function



		'---------------------------------------------------
		' 매개변수 배열 내에서 지정된 이름의 매개변수 값을 반환한다.
		'---------------------------------------------------
		Public Function GetValue(params, paramName)
			For Each param in params
				If param(0) = paramName Then
					GetValue = param(4)
					Exit Function
				End If
			Next
		End Function



		Public Sub Dispose

			If isTransUse Then
				If Err.Number = 0 Then
					Call CommitTrans(connectionString)
				Else
					Call RollbackTrans(connectionString)
					Call errorMsg
				End If

				isTransUse = False
			End If

			if (Not DefaultConnection is Nothing) Then
				if (DefaultConnection.State = adStateOpen) Then DefaultConnection.Close
				Set DefaultConnection = Nothing
			End if
		End Sub




		'---------------------------------------------------------------------------
		' Array로 넘겨오는 파라메터를 Parsing 하여 Parameter 객체를
		' 생성하여 Command 객체에 추가한다.
		'---------------------------------------------------------------------------
		Private Function collectParams(cmd,argparams)
			If VarType(argparams) = 8192 or VarType(argparams) = 8204 or VarType(argparams) = 8209 then
				params = argparams
				For helper_i = LBound(params) To UBound(params)
					l = LBound(params(helper_i))
					u = UBound(params(helper_i))
					' Check for nulls.
					If u - l = 4 Then

						If VarType(params(helper_i)(4)) = vbString Then
							If params(helper_i)(4) = "" Then
								v = Null
							Else
								v = params(helper_i)(4)
								value = Replace(Replace(Replace(Replace(Replace(params(helper_i)(4) _
										, "&#39;"		, "'") _
										, "&quot;"		, """") _
										, "&gt;"		, ">") _
										, "&lt;"		, "<") _
										, "&amp;"		, "&")
							End If
						Else
							v = params(helper_i)(4)
						End If

						If Not IsNull(v) Then
								Select Case params(helper_i)(1)
									Case adChar, adVarchar
										If Len(v) > params(helper_i)(3) Then v = Left(v, params(helper_i)(3))
									Case adInteger
										If CDbl(v) > 2147483647 Then v = 0
									Case adBigInt
										If CDbl(v) > 9223372036854775807 Then v = 0
								End Select
							End If

						cmd.Parameters.Append cmd.CreateParameter(params(helper_i)(0), params(helper_i)(1), params(helper_i)(2), params(helper_i)(3), v)
					End If
				Next

				Set collectParams = cmd
				Exit Function
			Else
				Set collectParams = cmd
			End If
		End Function




		'---------------------------------------------------------------------------
		'	Database Error Message
		'---------------------------------------------------------------------------
		Private Sub errorMsg
			Dim msg

			msg = "<table cellpadding='0' cellspacing='0' border='0' align='center' width='500'>"& _
						"<tr height='50'><td></td></tr>"& _
						"<tr><td align='left' style='font-size:9pt;'><b>데이터 처리 중 오류가 발생 했습니다.</b></td></tr>"& _
						"<tr height='2'><td bgcolor='#CCCCCC'></td></tr>"& _
						"<tr height='20'><td></td></tr>"& _
						"<tr height='20'><td align='left' style='font-size:9pt; color:red;'><b>오류 내용:</b></td></tr>"& _
						"<tr><td align='left' style='font-size:9pt; color:red;'>"& Err.Description &"</td></tr>"& _
						"<tr height='20'><td></td></tr>"& _
						"<tr><td align='left' style='font-size:9pt;'>위의 오류 내용을 사이트 관리자에게 문의해 주시기 바랍니다.</td></tr>"& _
						"</table>"
			Response.write msg

			If isDebug Then
				For Each v In DebugDic
					Response.write "<p style='font-size:9pt; margin:10px 0 10px 0;'>"& DebugDic.Item(v) &"</p>"
				Next
			End If
		End Sub




		'---------------------------------------------------------------------------
		'	Add Debug Query
		'---------------------------------------------------------------------------
		Private Sub addDebug(ByVal v)
			If isDebug Then
				If 	DebugDic Is Nothing Then
					Set DebugDic = Server.CreateObject("Scripting.Dictionary")
				End If

				DebugDic.add DebugDic.Count, v
			End If
		End Sub

	End Class
%>
