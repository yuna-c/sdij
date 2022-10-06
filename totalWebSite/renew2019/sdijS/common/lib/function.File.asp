<%
' ######################################################################
'	※ 업로드 폼 요소명 사용시 반드시 문자열 변환(CStr) 후 사용
'		SiteGalayxy 경우 변환하지 않고 사용할 경우 데이터 받지 못함
' ######################################################################

Dim objUpload : Set objUpload = Nothing ' 업로드 객체

' ######################################################################
'	Function name	: checkMapPath
'	Parameter		:
'			path						= 파일 경로
'	Return				: String
'	Description		: 경로 확인
' ######################################################################
Function checkMapPath(ByVal path)
	Dim objFso
	Dim resultPath
	Dim arrTarget
	Dim f

	resultPath = Server.MapPath("/")

	path = Replace(path, "/", "\")
	arrTarget = Split(path, "\", -1, 1)

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	For f = 0 To UBound(arrTarget, 1)
		If Trim(arrTarget(f)) <> "" Then
			resultPath = resultPath &"\"& Trim(arrTarget(f))
			If Not objFso.FolderExists(resultPath) Then objFso.CreateFolder(resultPath)
		End If
	Next

	Set objFso = Nothing

	checkMapPath = resultPath
End Function

' ######################################################################
'	Function name	: getUniqueFilename
'	Parameter		:
'			path						= 경로
'			filename				= 파일명
'	Return				: String
'	Description		: UNIQUE 파일명 생성
' ######################################################################
Function getUniqueFilename(ByVal path, ByVal filename)
	Dim objFso
	Dim f
	Dim fName, fExt
	Dim newFName

	fName = Trim(Left(filename, InstrRev(filename, ".")-1))
	fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))

	newFName = fName

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	f = 1
	Do While True
		If objFso.FileExists(path &"\"& newFName &"."& fExt) Then
			newFName = fName &"_"& f
		Else
			Exit Do
		End If
		f = f + 1
	Loop

	Set objFso = Nothing

	getUniqueFilename = newFName &"."& fExt
End Function


' ######################################################################
'	Function name	: getUniqueFilename
'	Parameter		:
'			path						= 경로
'			filename				= 파일명
'	Return				: String
'	Description		: UNIQUE 파일명 생성
' ######################################################################
Function getUniqueFilenameFirstTmp(ByVal path, ByVal filename)
	Dim objFso
	Dim f
	Dim fName, fExt
	Dim newFName

	fName   = Trim(Left(filename, InstrRev(filename, ".")-1))
    fName   = "TMP_" & fName
	fExt    = Trim(Mid(filename, InstrRev(filename, ".")+1))
    
	newFName = fName

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	f = 1
	Do While True
		If objFso.FileExists(path &"\"& newFName &"."& fExt) Then
			newFName = fName & "_" & f
		Else
			Exit Do
		End If
		f = f + 1
	Loop

	Set objFso = Nothing

	getUniqueFilenameFirstTmp = newFName & "." & fExt
End Function


' ######################################################################
'	Function name	: excFilename
'	Parameter		:
'			filename				= 파일명
'	Return				: String
'	Description		: 파일명 치환
' ######################################################################
Function excFilename(ByVal filename)
	Dim fName, fExt

	fName = Trim(Left(filename, InstrRev(filename, ".")-1))
	fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))

	fName = Replace(fName, " ", "_")
	fName = Replace(fName, ",", "_")
	fName = Replace(fName, """", "_")
	fName = Replace(fName, "'", "_")
	fName = Replace(fName, "`", "_")
	fName = Replace(fName, "!", "_")
	fName = Replace(fName, "%", "_")
	fName = Replace(fName, "&", "_")

	excFilename = fName &"."& fExt
End Function


' ######################################################################
'	Function name	: defineUpload
'	Parameter		:
'	Return				:
'	Description		: 업로드 객체 초기화
' ######################################################################
Function defineUpload()
'On Error Resume next

	Select Case cfgUploadMethod
		Case CM_UPLOAD_DEXT
			Set objUpload = Server.CreateObject("DEXT.FileUpload")
			objUpload.DefaultPath = Server.MapPath(pathTemp)
			objUpload.CodePage = 65001	 'UTF-8 인코딩 처리

			If Err.Number <> 0 Then
				Err.Clear()
				Call jsmsg("화일을 업로드하는 덱스트업로드가 서버에 등록되어 있지 않습니다.\n\n서버관리자에게 문의하세요.", "B")
			End If

		Case CM_UPLOAD_ABCUPLOAD
			Server.ScriptTimeout = 1000000

			Set objUpload = Server.CreateObject("ABCUpload4.XForm")
			objUpload.Overwrite = False
			objUpload.MaxUploadSize = UPLOAD_MAX_SIZE * 1024 * 1024
			objUpload.CodePage = 65001

			If Err.Number <> 0 Then
				Err.Clear()
				Call jsmsg("화일을 업로드하는AbcUpload 가 서버에 등록되어 있지 않습니다.\n\n"& pathAdmin &"/util 디렉토리에 해당 컴퍼넌트의 설치방법을 참조하세요.", "B")
			End If

		Case CM_UPLOAD_SITEGALAXY
			Server.ScriptTimeout = 1000000

			Set objUpload = Server.CreateObject("SiteGalaxyUpload.Form")

			If Err.Number <> 0 Then
				Err.Clear()
				Call jsmsg("화일을 업로드하는 SiteGalaxy 가 서버에 등록되어 있지 않습니다.\n\n"& pathAdmin &"/util 디렉토리에 해당 컴퍼넌트의 설치방법을 참조하세요.", "B")
			End If
	End Select
End Function

' ######################################################################
'	Function name	: undefineUpload
'	Parameter		:
'	Return				:
'	Description		: 업로드 객체 해제
' ######################################################################
Sub undefineUpload()
	If Err And cfgUploadMethod = CM_UPLOAD_DEXT Then objUpload.DeleteAllSavedFiles
	Set objUpload = Nothing
End Sub

' ######################################################################
'	Function name	: getUploadItem
'	Parameter		:
'			item						= Upload 폼 요소명
'	Return				:
'	Description		: 업로드 폼 요소값 추출
' ######################################################################
Function getUploadItem(ByVal item)
	Dim value

	Select Case cfgUploadMethod
		Case CM_UPLOAD_DEXT, CM_UPLOAD_SITEGALAXY
			value = objUpload(CStr(item))
		Case CM_UPLOAD_ABCUPLOAD
			value = objUpload(CStr(item))(1)
	End Select

	If IsNumeric(value) Or Trim(value) = "" Then
		getUploadItem = value
	Else
		getUploadItem = Replace(Replace(Replace(Replace(Replace(value _
			, "&"		, "&amp;") _
			, "<"		, "&lt;") _
			, ">"		, "&gt;") _
			, """"	, "&quot;") _
			, "'"		, "&#39;")
	End If
End Function

' ######################################################################
'	Function name	: getUploadItemSize
'	Parameter		:
'			item						= Upload 폼 요소명
'	Return				:
'	Description		: 업로드 폼 요소값 추출
' ######################################################################
Function getUploadItemSize(ByVal item)
	getUploadItemSize = objUpload(CStr(item)).Count
End Function

' ######################################################################
'	Function name	: getUploadItemList
'	Parameter		:
'			item						= Upload 폼 요소명
'	Return				:
'	Description		: 업로드 폼 요소값 추출
' ######################################################################
Function getUploadItemList(ByVal item, ByVal idx)
	Dim value

	If idx > 0 And idx <= objUpload(CStr(item)).Count Then
		value = objUpload(CStr(item))(idx)
		If IsNumeric(value) Or Trim(value) = "" Then
			getUploadItemList = value
		Else
			getUploadItemList = Replace(Replace(Replace(Replace(Replace(value _
				, "&"		, "&amp;") _
				, "<"		, "&lt;") _
				, ">"		, "&gt;") _
				, """"	, "&quot;") _
				, "'"		, "&#39;")
		End If
	End If
End Function

' ######################################################################
'	Function name	: checkUploadSizeDefault
'	Parameter		:
'			item						= Upload 폼 요소명
'	Return				:
'	Description		: 업로드 파일 사이즈 확인
' ######################################################################
Sub checkUploadSizeDefault(ByVal item)
	Dim f
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count
	Dim maxSizeByte : maxSizeByte = UPLOAD_MAX_SIZE * 1024 * 1024
	Dim sumSizeByte : sumSizeByte = 0
	Dim isInvalid : isInvalid = False

	Select Case cfgUploadMethod
		Case CM_UPLOAD_DEXT
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					sumSizeByte = sumSizeByte + objUpload(CStr(item))(f).FileLen
				End If
			Next
		Case CM_UPLOAD_ABCUPLOAD
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					sumSizeByte = sumSizeByte + objUpload(CStr(item))(f).Length
				End If
			Next
		Case CM_UPLOAD_SITEGALAXY
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					sumSizeByte = sumSizeByte + objUpload(CStr(item))(f).Size
				End If
			Next
	End Select

	If sumSizeByte > maxSizeByte Then
		Call undefineUpload
		Call jsmsg("업로드 가능 최대용량은 "& UPLOAD_MAX_SIZE &"MB 입니다.", "B")
	End If
End Sub

' ######################################################################
'	Function name	: checkUploadSizeDefault2
'	Parameter		:
'			item						= Upload 폼 요소명
'	Return				:
'	Description		: 업로드 파일 사이즈 확인
' ######################################################################
Sub checkUploadSizeDefault2(ByVal item, ByVal max_size,  ByRef R_FileSizeFlag)
	Dim f
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count
	Dim maxSizeByte : maxSizeByte = max_size * 1024 * 1024
	Dim sumSizeByte : sumSizeByte = 0
	Dim isInvalid : isFileSizeFlag = False
    
    R_FileSizeFlag = isFileSizeFlag
	
    Select Case cfgUploadMethod
		Case CM_UPLOAD_DEXT
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					sumSizeByte = sumSizeByte + objUpload(CStr(item))(f).FileLen
				End If
			Next
		Case CM_UPLOAD_ABCUPLOAD
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					sumSizeByte = sumSizeByte + objUpload(CStr(item))(f).Length
				End If
			Next
		Case CM_UPLOAD_SITEGALAXY
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					sumSizeByte = sumSizeByte + objUpload(CStr(item))(f).Size
				End If
			Next
	End Select

	If sumSizeByte > maxSizeByte Then
		Call undefineUpload
		isFileSizeFlag = False
        R_FileSizeFlag =  isFileSizeFlag
    Else
        isFileSizeFlag = True
        R_FileSizeFlag =  isFileSizeFlag
	End If
End Sub

' ######################################################################
'	Function name	: checkUploadSizeMulti
'	Parameter		:
'			item						= Upload 폼 요소명 (Array)
'			maxSizeByte		= Upload 가능 최대용량 (MB)
'	Return				:
'	Description		: 업로드 파일 사이즈 확인 (다중 폼)
' ######################################################################
Sub checkUploadSizeMulti(ByVal item, ByVal maxSize)
	Dim f, m
	Dim uploadCnt
	Dim maxSizeByte
	Dim sumSizeByte : sumSizeByte = 0
	Dim isInvalid : isInvalid = False

	If Not IsArray(item) Then item = Array(item)
	Dim itemCnt : itemCnt = UBound(item)

	If IsNull(maxSize) Then maxSize = UPLOAD_MAX_SIZE
	maxSizeByte = maxSize * 1024 * 1024

	Select Case cfgUploadMethod
		Case CM_UPLOAD_DEXT
			For f = 0 To itemCnt
				uploadCnt = objUpload(CStr(item(f))).Count
				For m = 1 To uploadCnt
					If objUpload(CStr(item(f)))(m) <> "" Then
						sumSizeByte = sumSizeByte + objUpload(CStr(item(f)))(m).FileLen
					End If
				Next
			Next
		Case CM_UPLOAD_ABCUPLOAD
			For f = 0 To itemCnt
				uploadCnt = objUpload(CStr(item(f))).Count
				For m = 1 To uploadCnt
					If objUpload(CStr(item(f)))(m) <> "" Then
						sumSizeByte = sumSizeByte + objUpload(CStr(item(f)))(m).Length
					End If
				Next
			Next
		Case CM_UPLOAD_SITEGALAXY
			For f = 0 To itemCnt
				uploadCnt = objUpload(CStr(item(f))).Count
				For m = 1 To uploadCnt
					If objUpload(CStr(item(f)))(m) <> "" Then
						sumSizeByte = sumSizeByte + objUpload(CStr(item(f)))(m).Size
					End If
				Next
			Next
	End Select

	If sumSizeByte > maxSizeByte Then
		Call undefineUpload
		Call jsmsg("업로드 가능 최대용량은 "& maxSize &"MB 입니다.", "B")
	End If
End Sub

' ######################################################################
'	Function name	: checkUploadFile
'	Parameter		:
'			item						= Upload 폼 요소명
'	Return				:
'	Description		: 업로드 파일 확인 (업로드 허용 파일 확인)
' ######################################################################
Sub checkUploadFile(ByVal item, ByRef resultInvalid)
	Dim objFso
	Dim f
	Dim filename, fExt
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count
	Dim isInvalid : isInvalid = False

	Select Case cfgUploadMethod
		Case CM_UPLOAD_DEXT
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					filename = objUpload(CStr(item))(f).FileName
					fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))

					If InStr(","& UPLOAD_ACCEPT_EXT &",", ","& fExt &",") > 0 Then
						isInvalid = True
						Exit For
					End If
				End If
			Next
		Case CM_UPLOAD_ABCUPLOAD
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					filename = objUpload(CStr(item))(f).FileName
					fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))

					If InStr(","& UPLOAD_ACCEPT_EXT &",", ","& fExt &",") > 0 Then
						isInvalid = True
						Exit For
					End If
				End If
			Next
		Case CM_UPLOAD_SITEGALAXY
			Set objFso = server.CreateObject("Scripting.FileSystemObject")

			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					filename = objFso.GetFileName(objUpload(CStr(item))(f).FilePath)
					fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))

					If InStr(","& UPLOAD_ACCEPT_EXT &",", ","& fExt &",") > 0 Then
						isInvalid = True
						Exit For
					End If
				End If
			Next

			Set objFso = Nothing
	End Select
    
    resultInvalid = isInvalid
	
    If Not isInvalid Then
		Call undefineUpload
		'Call jsmsg("업로드가 불가능한 파일입니다.\n\n(파일명: "& filename &")", "B")
	End If
End Sub

' ######################################################################
'	Function name	: checkUploadImage
'	Parameter		:
'			item						= Upload 폼 요소명
'			isFlash					= Flash 허용 여부 (Boolean)
'	Return				:
'	Description		: 업로드 파일 이미지(플래쉬) 확인
' ######################################################################
Sub checkUploadImage(ByVal item, ByVal isFlash)
	Dim objFso
	Dim f
	Dim mimeType, filename
	Dim limitMimeType : limitMimeType = ""
	Dim alertMsg
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count
	Dim isInvalid : isInvalid = False

	If isFlash Then
		limitMimeType = "application/x-shockwave-flash"
		alertMsg = "이미지 또는 플래쉬 파일만 업로드 가능합니다."
	Else
		alertMsg = "이미지 파일만 업로드 가능합니다."
	End If

	Select Case cfgUploadMethod
		Case CM_UPLOAD_DEXT
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					mimeType = Trim(objUpload(CStr(item))(f).MimeType)
					filename = objUpload(CStr(item))(f).FileName

					If mimeType = "" Or (InStr(mimeType, "image/") < 1 And InStr(","& limitMimeType &",", ","& mimeType &",") < 1) Then
						isInvalid = True
						Exit For
					End If
				End If
			Next
		Case CM_UPLOAD_ABCUPLOAD
			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					mimeType = Trim(objUpload(CStr(item))(f).MIMEType)
					filename = objUpload(CStr(item))(f).FileName

					If mimeType = "" Or (InStr(mimeType, "image/") < 1 And InStr(","& limitMimeType &",", ","& mimeType &",") < 1) Then
						isInvalid = True
						Exit For
					End If
				End If
			Next
		Case CM_UPLOAD_SITEGALAXY
			Set objFso = server.CreateObject("Scripting.FileSystemObject")

			For f = 1 To uploadCnt
				If objUpload(CStr(item))(f) <> "" Then
					mimeType = Trim(objUpload(CStr(item))(f).MimeType) &"/"& Trim(objUpload(CStr(item))(f).MimeSubtype)
					filename = objFso.GetFileName(objUpload(CStr(item))(f).FilePath)

					If mimeType = "" Or (InStr(mimeType, "image/") < 1 And InStr(","& limitMimeType &",", ","& mimeType &",") < 1) Then
						isInvalid = True
						Exit For
					End If
				End If
			Next

			Set objFso = Nothing
	End Select

	If isInvalid Then
		Call undefineUpload
		Call jsmsg(alertMsg &"\n\n(파일명: "& filename &")", "B")
	End If
End Sub

' ######################################################################
'	Function name	: fileUpload
'	Parameter		:
'			item						= Upload 파일 요소명
'			targetPath			= Upload 파일 저장 경로
'			fixFilenames			= Upload 고정 파일명 (단일: "file.xxx", 다중: Array("file1.xxx", "file2.xxx", "file3.xxx"), 없음: Null)
'			resultPath			= Upload 경로 정보 (ByRef, real path)
'			resultFilenames	= Upload 파일명 정보 (ByRef)
'			resultSizes			= Upload 파일용량 정보 (ByRef)
'			resultMimeTypes	= Upload MimeType 정보 (ByRef)
'	Return				: Boolean
'	Description		: File Upload
' ######################################################################
Function fileUpload(ByVal item, ByVal targetPath, ByVal fixFilenames, ByRef resultPath, ByRef resultFilenames, ByRef resultSizes, ByRef resultMimeTypes, ByRef resultExt)
	Dim f
	Dim sSizes, sFilenames, sMimeTypes
	Dim uploadCnt

	uploadCnt = objUpload(CStr(item)).Count

	resultPath = ""
	resultFilenames = Null
	resultSizes = Null
	resultMimeTypes = Null

	sFilenames = ""
	sSizes = ""
	sMimeTypes = ""

	fileUpload = False

	If uploadCnt > 0 Then
		' 업로드 파일 사이즈 확인
		Call checkUploadSizeDefault(item)
		' 업로드 파일 확장자 확인
		Call checkUploadFile(item, resultInvalid)

        resultExt = resultInvalid
       
       If resultInvalid Then
       
            ' 업로드 경로 확인/생성
            resultPath = checkMapPath(targetPath)

            Select Case cfgUploadMethod
                Case CM_UPLOAD_DEXT:					Call fileUploadDext(item, resultPath, fixFilenames, sFilenames, sSizes, sMimeTypes)
                Case CM_UPLOAD_ABCUPLOAD:		Call fileUploadAbcUpload(item, resultPath, fixFilenames, sFilenames, sSizes, sMimeTypes)
                Case CM_UPLOAD_SITEGALAXY:		Call fileUploadSiteGalaxy(item, resultPath, fixFilenames, sFilenames, sSizes, sMimeTypes)
            End Select

            If uploadCnt = 1 Then
                resultFilenames = sFilenames
                resultSizes = sSizes
                resultMimeTypes = sMimeTypes
            Else
                resultFilenames = Split(sFilenames, vbCrLf)
                resultSizes = Split(sSizes, vbCrLf)
                resultMimeTypes = Split(sMimeTypes, vbCrLf)
            End If

		fileUpload = True

        End If 
	End If
End Function


' ######################################################################
'	Function name	: fileUploadFirstTmp
'	Parameter		:
'			item						= Upload 파일 요소명
'			targetPath			= Upload 파일 저장 경로
'			fixFilenames			= Upload 고정 파일명 (단일: "file.xxx", 다중: Array("file1.xxx", "file2.xxx", "file3.xxx"), 없음: Null)
'			resultPath			= Upload 경로 정보 (ByRef, real path)
'			resultFilenames	= Upload 파일명 정보 (ByRef)
'			resultSizes			= Upload 파일용량 정보 (ByRef)
'			resultMimeTypes	= Upload MimeType 정보 (ByRef)
'	Return				: Boolean
'	Description		: File Upload
' ######################################################################
Function fileUploadFirstTmp(ByVal item, ByVal targetPath, ByVal fixFilenames, ByRef resultPath, ByRef resultFilenames, ByRef resultSizes, ByRef resultMimeTypes, ByRef resultExt)
	Dim f
	Dim sSizes, sFilenames, sMimeTypes
	Dim uploadCnt

	uploadCnt = objUpload(CStr(item)).Count

	resultPath = ""
	resultFilenames = Null
	resultSizes = Null
	resultMimeTypes = Null

	sFilenames = ""
	sSizes = ""
	sMimeTypes = ""

	fileUploadFirstTmp = False

	If uploadCnt > 0 Then
		' 업로드 파일 사이즈 확인
		Call checkUploadSizeDefault(item)
		' 업로드 파일 확장자 확인
		Call checkUploadFile(item, resultInvalid)

        resultExt = resultInvalid
       
       If resultInvalid Then
       
            ' 업로드 경로 확인/생성
            resultPath = checkMapPath(targetPath)

            Select Case cfgUploadMethod
                Case CM_UPLOAD_DEXT:			Call fileUploadDext(item, resultPath, fixFilenames, sFilenames, sSizes, sMimeTypes)
                Case CM_UPLOAD_ABCUPLOAD:		Call fileUploadAbcUploadFirstTmp(item, resultPath, fixFilenames, sFilenames, sSizes, sMimeTypes)
                Case CM_UPLOAD_SITEGALAXY:		Call fileUploadSiteGalaxy(item, resultPath, fixFilenames, sFilenames, sSizes, sMimeTypes)
            End Select

            If uploadCnt = 1 Then
                resultFilenames = sFilenames
                resultSizes = sSizes
                resultMimeTypes = sMimeTypes
            Else
                resultFilenames = Split(sFilenames, vbCrLf)
                resultSizes = Split(sSizes, vbCrLf)
                resultMimeTypes = Split(sMimeTypes, vbCrLf)
            End If

		fileUploadFirstTmp = True

        End If 
	End If
End Function

' ######################################################################
'	Function name	: fileUploadDext
'	Parameter		:
'			item						= Upload 파일 요소명
'			targetPath			= Upload 파일 저장 경로
'			fixFilenames			= Upload 고정 파일명 (단일: "file.xxx", 다중: Array("file1.xxx", "file2.xxx", "file3.xxx"), 없음: "" 또는 Null)
'			resultFilenames	= Upload 파일명 정보 (ByRef)
'			resultSizes			= Upload 파일용량 정보 (ByRef)
'			resultMimeTypes	= Upload MimeType 정보 (ByRef)
'	Return				:
'	Description		: File Upload Dext
' ######################################################################
Function fileUploadDext(ByVal item, ByVal targetPath, ByVal fixFilenames, ByRef resultFilenames, ByRef resultSizes, ByRef resultMimeTypes)
	Dim f
	Dim sFilename, sSize, sMimeType
	Dim fixFilename
	Dim orgFilename
	Dim saveFile
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count

	resultFilenames = ""
	resultSizes = ""
	resultMimeTypes = ""

	If IsNull(fixFilenames) Then fixFilenames = ""
	If Not IsArray(fixFilenames) Then
		fixFilenames = Array(fixFilenames)
	End If

	If uploadCnt > 0 Then
		For f = 1 To uploadCnt
			sFilename = ""
			sSize = CDbl(objUpload(CStr(item))(f).FileLen)
			sMimeType = ""

			If sSize > 0 Then
				sMimeType = Trim(objUpload(CStr(item))(f).MimeType)

				fixFilename = ""
				If UBound(fixFilenames) >= (f-1) Then fixFilename = Trim(fixFilenames(f-1))

				orgFilename = objUpload(CStr(item))(f).FileName

				If fixFilename <> "" Then
					If InStr(fixFilename, ".") <= 0 Then
						fixFilename = fixFilename &"."& Trim(Mid(orgFilename, InstrRev(orgFilename, ".")+1))
					End If

					sFilename = fixFilename
					Call deleteAFile(targetPath, sFilename, False)
				Else
					sFilename = getUniqueFilename(targetPath, excFilename(orgFilename))
				End If

				saveFile = objUpload(CStr(item))(f).SaveAs(targetPath &"\"& sFilename, False)
				sFilename = Trim(Mid(saveFile, InstrRev(saveFile, "\")+1))
			End If

			If f = 1 Then
				resultFilenames = sFilename
				resultSizes = sSize
				resultMimeTypes = sMimeType
			Else
				resultFilenames = resultFilenames & vbCrLf & sFilename
				resultSizes = resultSizes & vbCrLf & sSize
				resultMimeTypes = resultMimeTypes & vbCrLf & sMimeType
			End If
		Next
	End If
End Function

' ######################################################################
'	Function name	: fileUploadAbcUpload
'	Parameter		:
'			item						= Upload 파일 요소명
'			targetPath			= Upload 파일 저장 경로
'			fixFilenames	 		= Upload 고정 파일명 (단일: "file.xxx", 다중: Array("file1.xxx", "file2.xxx", "file3.xxx"), 없음: "" 또는 Null)
'			resultFilenames	= Upload 파일명 정보 (ByRef)
'			resultSizes			= Upload 파일용량 정보 (ByRef)
'			resultMimeTypes	= Upload MimeType 정보 (ByRef)
'	Return				:
'	Description		: File Upload AbcUpload
' ######################################################################
Function fileUploadAbcUpload(ByVal item, ByVal targetPath, ByVal fixFilenames, ByRef resultFilenames, ByRef resultSizes, ByRef resultMimeTypes)
	Dim f
	Dim sFilename, sSize, sMimeType
	Dim fixFilename
	Dim orgFilename
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count

	resultFilenames = ""
	resultSizes = ""
	resultMimeTypes = ""

	If IsNull(fixFilenames) Then fixFilenames = ""

	If Not IsArray(fixFilenames) Then
		fixFilenames = Array(fixFilenames)
	End If

	If uploadCnt > 0 Then
		For f = 1 To uploadCnt
			sFilename = ""
			sSize = 0
			sMimeType = ""

			If objUpload(CStr(item))(f) <> "" Then
				sSize = CDbl(objUpload(CStr(item))(f).Length)
				sMimeType = Trim(objUpload(CStr(item))(f).MIMEType)

				fixFilename = ""
				If UBound(fixFilenames) >= (f-1) Then fixFilename = Trim(fixFilenames(f-1))

				orgFilename = objUpload(CStr(item))(f).SafeFileName '한글파일명

				If fixFilename <> "" Then
					If InStr(fixFilename, ".") <= 0 Then
						fixFilename = fixFilename &"."& Trim(Mid(orgFilename, InstrRev(orgFilename, ".")+1))
					End If

					sFilename = fixFilename
					Call deleteAFile(targetPath, sFilename, False)
				Else
					sFilename = getUniqueFilename(targetPath, excFilename(orgFilename))
				End If

				objUpload.AbsolutePath = True

				objUpload(CStr(item))(f).Save(targetPath &"\"& sFilename)
			End If

			If f = 1 Then
				resultFilenames = sFilename
				resultSizes = sSize
				resultMimeTypes = sMimeType
			Else
				resultFilenames = resultFilenames & vbCrLf & sFilename
				resultSizes = resultSizes & vbCrLf & sSize
				resultMimeTypes = resultMimeTypes & vbCrLf & sMimeType
			End If
		Next
	End If
End Function

' ######################################################################
'	Function name	: fileUploadAbcUploadFirstTmp
'	Parameter		:
'			item						= Upload 파일 요소명
'			targetPath			= Upload 파일 저장 경로
'			fixFilenames	 		= Upload 고정 파일명 (단일: "file.xxx", 다중: Array("file1.xxx", "file2.xxx", "file3.xxx"), 없음: "" 또는 Null)
'			resultFilenames	= Upload 파일명 정보 (ByRef)
'			resultSizes			= Upload 파일용량 정보 (ByRef)
'			resultMimeTypes	= Upload MimeType 정보 (ByRef)
'	Return				:
'	Description		: File Upload AbcUpload
' ######################################################################
Function fileUploadAbcUploadFirstTmp(ByVal item, ByVal targetPath, ByVal fixFilenames, ByRef resultFilenames, ByRef resultSizes, ByRef resultMimeTypes)
	Dim f
	Dim sFilename, sSize, sMimeType
	Dim fixFilename
	Dim orgFilename
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count

	resultFilenames = ""
	resultSizes = ""
	resultMimeTypes = ""

	If IsNull(fixFilenames) Then fixFilenames = ""

	If Not IsArray(fixFilenames) Then
		fixFilenames = Array(fixFilenames)
	End If

	If uploadCnt > 0 Then
		For f = 1 To uploadCnt
			sFilename = ""
			sSize = 0
			sMimeType = ""

			If objUpload(CStr(item))(f) <> "" Then
				sSize = CDbl(objUpload(CStr(item))(f).Length)
				sMimeType = Trim(objUpload(CStr(item))(f).MIMEType)

				fixFilename = ""
				If UBound(fixFilenames) >= (f-1) Then fixFilename = Trim(fixFilenames(f-1))

				orgFilename = objUpload(CStr(item))(f).SafeFileName '한글파일명

				If fixFilename <> "" Then
					If InStr(fixFilename, ".") <= 0 Then
						fixFilename = fixFilename &"."& Trim(Mid(orgFilename, InstrRev(orgFilename, ".")+1))
					End If

					sFilename = fixFilename
					Call deleteAFile(targetPath, sFilename, False)
				Else
					sFilename = getUniqueFilenameFirstTmp(targetPath, excFilename(orgFilename))
				End If

				objUpload.AbsolutePath = True

				objUpload(CStr(item))(f).Save(targetPath &"\"& sFilename)
			End If

			If f = 1 Then
				resultFilenames = sFilename
				resultSizes = sSize
				resultMimeTypes = sMimeType
			Else
				resultFilenames = resultFilenames & vbCrLf & sFilename
				resultSizes = resultSizes & vbCrLf & sSize
				resultMimeTypes = resultMimeTypes & vbCrLf & sMimeType
			End If
		Next
	End If
End Function

' ######################################################################
'	Function name	: fileUploadSiteGalaxy
'	Parameter		:
'			item						= Upload 파일 요소명
'			targetPath			= Upload 파일 저장 경로
'			fixFilenames	 		= Upload 고정 파일명 (단일: "file.xxx", 다중: Array("file1.xxx", "file2.xxx", "file3.xxx"), 없음: "" 또는 Null)
'			resultFilenames	= Upload 파일명 정보 (ByRef)
'			resultSizes			= Upload 파일용량 정보 (ByRef)
'			resultMimeTypes	= Upload MimeType 정보 (ByRef)
'	Return				:
'	Description		: File Upload SiteGalaxy
' ######################################################################
Function fileUploadSiteGalaxy(ByVal item, ByVal targetPath, ByVal fixFilenames, ByRef resultFilenames, ByRef resultSizes, ByRef resultMimeTypes)
	Dim f
	Dim objFso
	Dim sFilename, sSize, sMimeType
	Dim fixFilename
	Dim orgFilename
	Dim uploadCnt : uploadCnt = objUpload(CStr(item)).Count

	resultFilenames = ""
	resultSizes = ""
	resultMimeTypes = ""

	If IsNull(fixFilenames) Then fixFilenames = ""
	If Not IsArray(fixFilenames) Then
		fixFilenames = Array(fixFilenames)
	End If

	If uploadCnt > 0 Then
		Set objFso = Server.CreateObject("Scripting.FileSystemObject")

		For f = 1 To uploadCnt
			sFilename = ""
			sSize = 0
			sMimeType = ""

			If objUpload(CStr(item))(f) <> "" Then
				sSize = CDbl(objUpload(CStr(item))(f).Size)
				sMimeType = Trim(objUpload(CStr(item))(f).MimeType) &"/"& Trim(objUpload(CStr(item))(f).MimeSubtype)

				fixFilename = ""
				If UBound(fixFilenames) >= (f-1) Then fixFilename = Trim(fixFilenames(f-1))

				orgFilename = objFso.GetFileName(objUpload(CStr(item))(f).FilePath)

				If fixFilename <> "" Then
					If InStr(fixFilename, ".") <= 0 Then
						fixFilename = fixFilename &"."& Trim(Mid(orgFilename, InstrRev(orgFilename, ".")+1))
					End If

					sFilename = fixFilename
					Call deleteAFile(targetPath, sFilename, False)
				Else
					sFilename = getUniqueFilename(targetPath, excFilename(orgFilename))
				End If

				objUpload(CStr(item))(f).SaveAs(targetPath &"\"& sFilename)
			End If

			If f = 1 Then
				resultFilenames = sFilename
				resultSizes = sSize
				resultMimeTypes = sMimeType
			Else
				resultFilenames = resultFilenames & vbCrLf & sFilename
				resultSizes = resultSizes & vbCrLf & sSize
				resultMimeTypes = resultMimeTypes & vbCrLf & sMimeType
			End If
		Next

		Set objFso = Nothing
	End If
End Function

' ######################################################################
'	Function name	: checkFolderExists
'	Parameter		:
'			path						= 경로
'			isVirtual				= 가상경로 여부
'	Return				: Boolean
'	Description		: 경로 존재여부 확인
' ######################################################################
Function checkFolderExists(ByVal path, ByVal isVirtual)
	Dim objFso
	Dim target

	checkFolderExists = False

	If isVirtual Then
		target = Server.MapPath(path)
	Else
		target = path
	End If

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FolderExists(target) Then checkFolderExists = True

	Set objFso = Nothing
End Function

' ######################################################################
'	Function name	: createAFolder
'	Parameter		:
'			path						= 경로
'			isVirtual				= 가상경로 여부
'	Return				:
'	Description			:
' ######################################################################
Sub createAFolder(ByVal path, ByVal isVirtual)
	Dim objFso
	Dim target
	Dim arrTarget
	Dim f

	If isVirtual Then
		target = Server.MapPath(path)
	Else
		target = path
	End If

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	arrTarget = Split(target, "\")
	If UBound(arrTarget) > 0 Then
		target = arrTarget(0)
		For f=1 To UBound(arrTarget)
			target = target &"\"& arrTarget(f)

			If Not objFso.FolderExists(target) Then objFso.CreateFolder(target)
		Next
	End If

	Set objFso = Nothing
End Sub

' ######################################################################
'	Function name	: deleteAFolder
'	Parameter		:
'			path						= 경로
'			isVirtual				= 가상경로 여부
'	Return				:
'	Description		: 폴더 삭제
' ######################################################################
Sub deleteAFolder(ByVal path, ByVal isVirtual)
	Dim objFso
	Dim target

	If isVirtual Then
		target = Server.MapPath(path)
	Else
		target = path
	End If

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FolderExists(target) Then
		objFso.DeleteFile(target &"\*.*")
		objFso.DeleteFolder(target)
	End If

	Set objFso = Nothing
End Sub

' ######################################################################
'	Function name	: checkFileExists
'	Parameter		:
'			path						= 파일 경로
'			isVirtual				= 가상경로 여부
'	Return				: Boolean
'	Description		: 파일 존재여부 확인
' ######################################################################
Function checkFileExists(ByVal path, ByVal isVirtual)
	Dim objFso
	Dim target

	checkFileExists = False

	If isVirtual Then
		target = Server.MapPath(path)
	Else
		target = path
	End If

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FileExists(target) Then checkFileExists = True

	Set objFso = Nothing
End Function

' ######################################################################
'	Function name	: writeAFile
'	Parameter		:
'			charset					= CharSet (Null, utf-8, ...)
'			path						= 파일 경로 (경로에 파일명 포함시 filename 는 "" 또는 Null로 설정해야 함)
'			filename				= 파일명
'			data						= 내용
'			isAppend				= 덧붙여쓰기여부
'			isNl						= 개행여부
'			isVirtual				= 가상경로 여부
'	Return				:
'	Description		: 파일 기록
' ######################################################################
Sub writeAFile(ByVal charset, ByVal path, ByVal filename, ByVal data, ByVal isAppend, ByVal isNl, ByVal isVirtual)
	Dim objFso, objFile
	Dim objStream
	Dim target
	Dim opt

	If IsNull(charset) Then charset = ""
	If IsNull(filename) Then filename = ""
	If isVirtual Then
		target = Server.MapPath(path)
	Else
		target = path
	End If
	If filename <> "" Then target = target &"\"& filename

	If charset <> "" Then
		If isNl Then
			opt = 1 ' adWriteLine
		Else
			opt = 0 ' adWriteChar
		End If

		Set objStream = Server.CreateObject("ADODB.Stream")
		objStream.Type = 2 ' 텍스트 타입 (1: Bin, 2: Text)
		objStream.Mode = 3
		objStream.Charset = charset
		objStream.Open

		If isAppend Then
			Set objFso = Server.CreateObject("Scripting.FileSystemObject")

			If objFso.FileExists(target) Then
				objStream.LoadFromFile target
				objStream.ReadText
			End If

			Set objFso = Nothing
		End If

		objStream.WriteText data, opt
		objStream.SaveToFile target, 2

		objStream.Flush
		objStream.Close

		Set objStream = Nothing
	Else
		Set objFso = Server.CreateObject("Scripting.FileSystemObject")

		If objFso.FileExists(target) And isAppend Then
			Set objFile = objFso.OpenTextFile(target, 8, True)
		Else
			Set objFile = objFso.CreateTextFile(target, True)
		End If

		If isNl Then
			objFile.WriteLine data
		Else
			objFile.Write data
		End If

		objFile.Close
		Set objFile = Nothing
		Set objFso = Nothing
	End If
End Sub

' ######################################################################
'	Function name	: copyAFile
'	Parameter		:
'			originalPath			= 원본 경로
'			targetPath	 		= 복사 경로
'			filename				= 파일명
'			isOver					= 덮어쓰기여부
'	Return				: String
'	Description		: Copy File
' ######################################################################
Function copyAFile(ByVal originalPath, ByVal targetPath, ByVal filename, ByVal isOver)
	Dim objFso
	Dim arrFilename
	Dim orgFilename
	Dim dstPath, dstFilename
	Dim copyTarget, dstTarget

	copyAFile = ""

	arrFilename = Split(filename, ">")
	If UBound(arrFilename) > 0 Then
		orgFilename = Trim(arrFilename(0))
		dstFilename = Trim(arrFilename(1))
	Else
		orgFilename = filename
		dstFilename = filename
	End If

	If InStr(originalPath, ":") > 0 Then
		copyTarget = originalPath &"/"& orgFilename
	Else
		copyTarget = Server.MapPath(originalPath) &"\"& orgFilename
	End If

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FileExists(copyTarget) Then
		If InStr(targetPath, ":") > 0 Then
			dstPath = targetPath
		Else
			dstPath = checkMapPath(targetPath)
		End If

		If isOver Then
			dstTarget = dstPath &"\"& dstFilename

			Call deleteAFile(dstTarget, Null, False)

			objFso.CopyFile copyTarget, dstTarget, True

			copyAFile = dstFilename
		Else
			dstFilename = getUniqueFilename(dstPath, dstFilename)
			dstTarget = dstPath &"\"& dstFilename

			objFso.CopyFile copyTarget, dstTarget

			copyAFile = dstFilename
		End If
	End If

	Set objFso = Nothing
End Function

' ######################################################################
'	Function name	: moveAFile
'	Parameter		:
'			originalPath			= 원본 경로
'			targetPath	 		= 이동 경로
'			filename				= 파일명
'			isOver					= 덮어쓰기여부
'	Return				: String
'	Description		: Move File
' ######################################################################
Function moveAFile(ByVal originalPath, ByVal targetPath, ByVal filename, ByVal isOver)
	Dim objFso
	Dim arrFilename
	Dim orgFilename
	Dim dstPath, dstFilename
	Dim moveTarget, dstTarget

	moveAFile = ""

	arrFilename = Split(filename, ">")
	If UBound(arrFilename) > 0 Then
		orgFilename = Trim(arrFilename(0))
		dstFilename = Trim(arrFilename(1))
	Else
		orgFilename = filename
		dstFilename = filename
	End If

	If InStr(originalPath, ":") > 0 Then
		moveTarget = originalPath &"/"& orgFilename
	Else
		moveTarget = Server.MapPath(originalPath) &"\"& orgFilename
	End If

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FileExists(moveTarget) Then
		If InStr(targetPath, ":") > 0 Then
			dstPath = targetPath
		Else
			dstPath = checkMapPath(targetPath)
		End If

		If isOver Then
			dstTarget = dstPath &"\"& dstFilename

			Call deleteAFile(dstTarget, Null, False)

			objFso.MoveFile moveTarget, dstTarget

			moveAFile = dstFilename
		Else
			dstFilename = getUniqueFilename(dstPath, dstFilename)
			dstTarget = dstPath &"\"& dstFilename

			objFso.MoveFile moveTarget, dstTarget

			moveAFile = dstFilename
		End If

		If objFso.FileExists(moveTarget) Then objFso.DeleteFile(moveTarget)
	End If

	Set objFso = Nothing
End Function

' ######################################################################
'	Function name	: deleteAFile
'	Parameter		:
'			path						= 파일 경로 (경로에 파일명 포함시 filename 는 "" 또는 Null로 설정해야 함)
'			filename				= 파일명
'			isVirtual				= 가상경로 여부
'	Return				:
'	Description		: 파일 삭제
' ######################################################################
Sub deleteAFile(ByVal path, ByVal filename, ByVal isVirtual)
	Dim objFso
	Dim target

	If IsNull(path) Then path = ""
	If IsNull(filename) Then filename = ""

	If path = "" Then
		Exit Sub
	End If

	If isVirtual Then
		target = Server.MapPath(path)
	Else
		target = path
	End If
	If filename <> "" Then target = target &"\"& filename

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FileExists(target) Then objFso.DeleteFile(target)

	Set objFso = Nothing
End Sub

' ######################################################################
'	Function name	: getFileInfo
'	Parameter		:
'			mode					= 구분
'			path						= 파일 경로 (경로에 파일명 포함시 filename 는 "" 또는 Null로 설정해야 함)
'			filename				= 파일명
'			isVirtual				= 가상경로 여부
'	Return				: String
'	Description		: 파일정보
' ######################################################################
Function getFileInfo(ByVal mode, ByVal path, ByVal filename, ByVal isVirtual)
	Dim objFso, objFile
	Dim target

	If IsNull(filename) Then filename = ""
	If isVirtual Then
		target = Server.MapPath(path)
	Else
		target = path
	End If
	If filename <> "" Then target = target &"\"& filename

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FileExists(target) Then
		Set objFile = objFso.GetFile(target)
		Select Case Lcase(mode)
			Case "name":	getFileInfo = objFile.Name
			Case "size":		getFileInfo = objFile.Size
			Case "type":	getFileInfo = objFile.Type
			Case "path":	getFileInfo = objFile.Path
			Case "date":	getFileInfo = objFile.DateLastModified
			Case "ext":		getFileInfo = objFso.GetExtensionName(target)
		End Select
		Set objFile = Nothing
	End If

	Set objFso = Nothing
End Function

' ######################################################################
'	Function name	: downloadAFile
'	Parameter		:
'			fullpath					= 파일 전체 경로 (파일명 포함)
'			filename				= 다운로드 되는 파일명
'			isVirtual				= 가상경로 여부
'	Return				: Boolean
'	Description		: 파일 다운로드
'			※ Window2003(IIS 6.0) 사용하는 경우 (기본 업로드,다운로드 버퍼링 설정용량 관련)
'				C:\windows\system32\inetsrv\MetaBase.xml 에서 해당부분을 수정
'				- 다운로드 제한 기본값 :
'					AspBufferingLimit="4194304"   // 4MByte
'				- 업로드 제한 기본값 :
'					AspMaxRequestEntityAllowed="204800"   //  200KByte
'				- IIS 실행중 편집시 "다른 프로세스에서 사용중"이라고 나오는데,
'					반드시 IIS를 정지시킬 필요는 없고 IIS 속성에서 메타베이스 직접 편집허용 부분을 체크하면 편집이 가능.
'				- DextUpload에 FileDownload는 FF에서 버그(파일확장자 뒤에 ","(콤마) 붙음)가 있어 사용 안함.
'
'			※ IIS7/7.5 파일 다운로드 오류 경우
'				IIS root에 "ASP>동작>청크 분할 인코딩 사용"의 기본이 True 입니다. 이것을 False 로 설정
' ######################################################################
Function downloadAFile(ByVal fullpath, ByVal filename, ByVal isVirtual)
	Dim objFso, objStream
	Dim target
	Dim fExt
	Dim chunkSize

	downloadAFile = False

	If IsNull(filename) Then filename = ""
	If isVirtual Then
		target = Server.MapPath(fullpath)
	Else
		target = fullpath
	End If


	If InStr(Left(target, InstrRev(target, "\")-1), Server.MapPath("/")) = 0 Then
		Call jsmsg("다운로드가 불가능한 파일입니다.", Null)
	End If

	If filename <> "" Then
		target = target &"\"& filename
	Else
		filename = Mid(target, InstrRev(target, "\")+1)
	End If
  
	Set objFso = Server.CreateObject("Scripting.FileSystemObject")
 
	If objFso.FileExists(target) Then
  
		fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))
		If InStr(","& DOWNLOAD_BLOCK_EXT &",", ","& fExt &",") > 0 Then
			Set objFso = Nothing
			Call jsmsg("다운로드가 불가능한 파일입니다.", Null)
		End If
        
        
		Set objStream = Server.CreateObject("ADODB.Stream")
		objStream.Type = 1
		objStream.Open
		objStream.LoadFromFile target

		Response.ContentType = "application/octet-stream"
		Response.AddHeader "Content-Disposition", "attachment;filename="& Server.UrlPathEncode(filename)	 'UTF-8 작업시 한글파일 다운로드 문제 해결
		Response.AddHeader "Content-Length", objStream.Size

		'Response.Buffer = True 

		'chunkSize = 1024

		Do Until objStream.Eos Or Not Response.IsClientConnected
			Response.BinaryWrite objStream.Read
		Loop

		objStream.Close
		Set objstream = Nothing

		downloadAFile = True
	End If

	Set objFso = Nothing
End Function


' ######################################################################
'	Function name	: downloadAFile
'	Parameter		:
'			fullpath = 파일 전체 경로 (파일명 포함)
'			filename = 다운로드 되는 파일명
'			isVirtual = 가상경로 여부
'	Return			: Boolean
'	Description		: 파일 다운로드
'			※ Window2003(IIS 6.0) 사용하는 경우 (기본 업로드,다운로드 버퍼링 설정용량 관련)
'				C:\windows\system32\inetsrv\MetaBase.xml 에서 해당부분을 수정
'				- 다운로드 제한 기본값 :
'					AspBufferingLimit="4194304"   // 4MByte
'				- 업로드 제한 기본값 :
'					AspMaxRequestEntityAllowed="204800"   //  200KByte
'				- IIS 실행중 편집시 "다른 프로세스에서 사용중"이라고 나오는데,
'					반드시 IIS를 정지시킬 필요는 없고 IIS 속성에서 메타베이스 직접 편집허용 부분을 체크하면 편집이 가능.
'				- DextUpload에 FileDownload는 FF에서 버그(파일확장자 뒤에 ","(콤마) 붙음)가 있어 사용 안함.
'
'			※ IIS7/7.5 파일 다운로드 오류 경우
'				IIS root에 "ASP>동작>청크 분할 인코딩 사용"의 기본이 True 입니다. 이것을 False 로 설정
' ######################################################################
Function downloadAFileReName(ByVal fullpath, ByVal filename, ByVal downFileName, ByVal isVirtual)
	Dim objFso, objStream
	Dim target
	Dim fExt
	Dim chunkSize

	downloadAFileReName = False

	If IsNull(filename) Then filename = ""
	If isVirtual Then
		target = Server.MapPath(fullpath)
	Else
		target = fullpath
	End If

	If InStr(Left(target, InstrRev(target, "\")-1), Server.MapPath("/")) = 0 Then
		Call jsmsg("다운로드가 불가능한 파일입니다.", Null)
	End If

	If filename <> "" Then
		target = target &"\"& filename
	Else
		filename = Mid(target, InstrRev(target, "\")+1)
	End If
  
	Set objFso = Server.CreateObject("Scripting.FileSystemObject")
 
	If objFso.FileExists(target) Then
  
		fExt = Trim(Mid(filename, InstrRev(filename, ".")+1))
		If InStr(","& DOWNLOAD_BLOCK_EXT &",", ","& fExt &",") > 0 Then
			Set objFso = Nothing
			Call jsmsg("다운로드가 불가능한 파일입니다.", Null)
		End If
        
        If downFileName = "" Then 
            downFileName = filename
        Else 
            downFileName = downFileName & "." & fExt
        End If 

		Set objStream = Server.CreateObject("ADODB.Stream")
		objStream.Type = 1
		objStream.Open
		objStream.LoadFromFile target

		Response.ContentType = "application/octet-stream"
		Response.AddHeader "Content-Disposition", "attachment;filename="& Server.UrlPathEncode(downFileName)	 'UTF-8 작업시 한글파일 다운로드 문제 해결
		Response.AddHeader "Content-Length", objStream.Size

		'Response.Buffer = True 

		'chunkSize = 1024

		Do Until objStream.Eos Or Not Response.IsClientConnected
			Response.BinaryWrite objStream.Read
		Loop

		objStream.Close
		Set objstream = Nothing

		downloadAFileReName = True
	End If

	Set objFso = Nothing
End Function



' ######################################################################
'	Function name	: createUNCFolder
'	Parameter		:
'			UNC						= UNC
'			path						= 파일 경로
'	Return				:
'	Description		: 다중서버 폴더 생성
' ######################################################################
Sub createUNCFolder(ByVal UNC, ByVal path)
	Dim objFso
	Dim resultPath
	Dim arrTarget
	Dim f

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FolderExists(UNC) Then
		resultPath = UNC

		arrTarget = Split(path, "\", -1, 1)

		For f = 0 To UBound(arrTarget, 1)
			If Trim(arrTarget(f)) <> "" Then
				resultPath = resultPath &"\"& Trim(arrTarget(f))
				If Not objFso.FolderExists(resultPath) Then objFso.CreateFolder(resultPath)
			End If
		Next
	End If

	Set objFso = Nothing
End Sub

' ######################################################################
'	Function name	: setUNCFolder
'	Parameter		:
'			mode					= 설정구분 (C : Create, D : Delete)
'			path						= 경로
'			isVirtual				= 가상경로 여부
'	Return				:
'	Description		: 다중서버 폴더 설정
' ######################################################################
Sub setUNCFolder(ByVal mode, ByVal path, ByVal isVirtual)
	Dim sql
	Dim arrParams
	Dim arrList, listLen
	Dim f
	Dim UNC
	Dim msg

'On Error Resume Next

	If IsNull(path) Then path = ""
	If Trim(path) = "" Then Exit Sub

	If isVirtual Then path = Replace(path, "/", "\")

	path = Replace(path, Server.MapPath("/"), "")
	If Left(path, 1) <> "\" Then path = "\"& path

	sql = "SELECT UNC FROM T_SERVER_INFO WHERE SiteID='"& siteId &"' AND NOT (UNC LIKE ?) "
	arrParams = Array(_
		Db.makeParam("@UNC", adVarWChar, adParamInput, 102, "%"& THIS_SERVER_NAME &"%") _
	)
	arrList = Db.execRsList(sql, DB_CMDTYPE_TEXT, arrParams, listLen, Nothing)
	If IsArray(arrList) Then
		For f=0 To listLen
			UNC = Trim(arrList(0, f))

			If Right(UNC, 1) = "\" Then UNC = Mid(UNC, Len(UNC) - 1)

			If mode = "C" Then
				Call createUNCFolder(UNC, path)
			ElseIf mode = "D" Then
				Call deleteAFolder(UNC & path, False)
			End If
		Next
	End If

	If Err.Number <> 0 Then
		msg = Err.Description
		Err.Clear
		Call jsmsg(msg, "B")
	End If
End Sub

' ######################################################################
'	Function name	: copyUNCFile
'	Parameter		:
'			UNC						= UNC
'			path						= 경로
'			filename				= 파일명
'	Return				:
'	Description		: 다중서버 파일 복사
' ######################################################################
Sub copyUNCFile(ByVal UNC, ByVal path, ByVal filename)
	Dim objFso
	Dim copyTarget, dstTarget

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")

	If objFso.FileExists(UNC) Then
		copyTarget = Server.MapPath(Replace(path, "\", "/")) &"\"& filename
		dstTarget = UNC & path &"\"& filename

		If objFso.FileExists(copyTarget) Then
			Call createUNCFolder(UNC, path)
			Call deleteAFile(dstTarget, Null, False)

			objFso.CopyFile copyTarget, dstTarget, True
		End If
	End If

	Set objFso = Nothing
End Sub

' ######################################################################
'	Function name	: setUNCFile
'	Parameter		:
'			mode					= 설정구분 (C : Copy, D : Delete)
'			path						= 경로
'			filename				= 파일명
'			isVirtual				= 가상경로 여부
'	Return				:
'	Description		: 다중서버 파일 설정
' ######################################################################
Sub setUNCFile(ByVal mode, ByVal path, ByVal filename, ByVal isVirtual)
	Dim sql
	Dim arrList, listLen
	Dim f
	Dim UNC
	Dim msg

'On Error Resume Next

	If IsNull(path) Then path = ""
	If IsNull(filename) Then filename = ""

	If Trim(path) = "" Then Exit Sub
	If Trim(filename) = "" Then Exit Sub
	If VarType(filename) <> vbString Then Exit Sub

	If isVirtual Then path = Replace(path, "/", "\")

	path = Replace(path, Server.MapPath("/"), "")
	If Left(path, 1) <> "\" Then path = "\"& path

	sql = "SELECT UNC FROM T_SERVER_INFO WHERE SiteID='"& siteId &"' AND NOT (UNC LIKE ?) "
	arrParams = Array(_
		Db.makeParam("@UNC", adVarWChar, adParamInput, 102, "%"& THIS_SERVER_NAME &"%") _
	)
	arrList = Db.execRsList(sql, DB_CMDTYPE_TEXT, arrParams, listLen, Nothing)
	If IsArray(arrList) Then
		For f=0 To listLen
			UNC = Trim(arrList(0, f))

			If Right(UNC, 2) = "\\" Then UNC = Mid(UNC, Len(UNC) - 1)

			If mode = "C" Then
				Call copyUNCFile(UNC, path, filename)
			ElseIf mode = "D" Then
				Call deleteAFile(UNC & path, filename, False)
			End If
		Next
	End If

	If Err.Number <> 0 Then
		msg = Err.Description
		Err.Clear
		Call jsmsg(msg, "B")
	End If
End Sub



' ######################################################################
'	Function name	: getImgExtType
'	Parameter		:
'			filename				= 이미지 파일명 (경로포함 가능)
'	Return				: String
'	Description		: 이미지 형식 추출
' ######################################################################
Function getImgExtType(ByVal filename)
	Dim pos
	Dim fExt : fExt = ""

	pos = InStrRev(filename, ".")
	If pos > 0 Then fExt = Mid(filename, pos + 1, 3)

	Select Case LCase(fExt)
		Case "bmp" :	getImgExtType = "BMP"
		Case "gif" :		getImgExtType = "GIF"
		Case "jpg" :		getImgExtType = "JPG"
		Case "png" :	getImgExtType = "PNG"
		Case "tif" :		getImgExtType = "TIF"
		Case Else :		getImgExtType = ""
	End Select
End Function

' ######################################################################
'	Function name	: resizeImg
'	Parameter		:
'			originalPath			= 원본 경로
'			targetPath	 		= 이동 경로
'			filename				= 이미지 파일명
'			width					= 이미지 폭
'			height					= 이미지 높이
'			isKeepAspect		= 비율유지 여부 (True: 유지, False: 유지 안함)
'	Return				: String
'	Description		: 이미지 Resize 저장
' ######################################################################
Function resizeImg(ByVal originalPath, ByVal targetPath, ByVal filename, ByVal width, ByVal height, ByVal isKeepAspect)
	Dim objFso
	Dim objImage
	Dim originalTarget, resizeTarget
	Dim mode
	Dim rateX : rateX = 0
	Dim rateY : rateY = 0
	Dim rate

	If Not IsNumeric(width) Then width = 0
	If Not IsNumeric(height) Then height = 0

	resizeImg = ""

	Set objImage = Nothing

	originalTarget = Server.MapPath(originalPath) &"\"& filename

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")
	If Not objFso.FileExists(originalTarget) Then
		Set objFso = Nothing
		Exit Function
	End If
	Set objFso = Nothing

	If cfgUploadMethod = CM_UPLOAD_DEXT Then
		mode = "DEXT"

		Set objImage = Server.CreateObject("DEXT.ImageProc")
		objImage.SetSourceFile(originalTarget)
		objImage.Quality = 100

		orgWidth = objImage.ImageWidth
		orgHeight = objImage.ImageHeight
	Else
		mode = "NANUMI"

		Set objImage = Server.CreateObject("Nanumi.ImagePlus")
		objImage.OpenImageFile originalTarget

		orgWidth = objImage.Width
		orgHeight = objImage.Height
	End If

	If width > 0 Then rateX = orgWidth / width
	If height > 0 Then rateY = orgHeight / height

	If rateX > rateY Then rate = rateX Else rate = rateY
	If rate < 1 Then rate = 1

	If isKeepAspect Then
		width = Int(orgWidth / rate)
		height = Int(orgHeight / rate)
	End If

	resizePath = checkMapPath(targetPath)
	resizeFilename = getUniqueFilename(resizePath, filename)
	resizeTarget = resizePath &"\"& resizeFilename

	If rate > 1 Then
		If mode = "DEXT" Then
			objImage.SaveasThumbnail resizeTarget, width, height, False
		Else
			objImage.ImageFormat = getImgExtType(filename)
			objImage.Quality = 100
			objImage.KeepAspect = isKeepAspect
			objImage.OverWrite = False
			objImage.ChangeSize width, height
			objImage.SaveFile resizeTarget

			objImage.Dispose
		End If
	Else
		Set objFso = Server.CreateObject("Scripting.FileSystemObject")
		objFso.CopyFile originalTarget, resizeTarget
		Set objFso = Nothing
	End If

	Set objImage = Nothing

	resizeImg = resizeFilename
End Function



' ######################################################################
'	Function name	: unZipFile
'	Parameter		:
'			path						= Zip 경로 (경로에 파일명 포함시 filename 는 "" 또는 Null로 설정해야 함)
'			filename				= Zip 파일명
'			extractPath			= 원본 경로
'			isVirtual				= 가상경로 여부
'	Return				: String
'	Description		: 압축 해제
' ######################################################################
Sub unZipFile(ByVal path, ByVal filename, ByVal extractPath, ByVal isVirtual)
	Dim objFso, objUnZip
	Dim zipTarget, extractTarget

	If IsNull(filename) Then filename = ""
	If isVirtual Then
		zipTarget = Server.MapPath(path)
		extractTarget = Server.MapPath(extractPath)
	Else
		zipTarget = path
		extractTarget = extractPath
	End If
	If filename <> "" Then zipTarget = zipTarget &"\"& filename

	Set objFso = Server.CreateObject("Scripting.FileSystemObject")
	If Not objFso.FileExists(zipTarget) Then
		Set objFso = Nothing
		Exit Sub
	End If
	Set objFso = Nothing

	Set objUnZip = CreateObject("CGZipLibrary.CGUnzipFiles")

	objUnZip.ZipFileName = zipTarget
	objUnZip.ExtractDir = extractTarget

	If objUnZip.Unzip <> 0 Then
'		Call jsmsg(objUnZip.GetLastMessage, "B")
	Else
		Call deleteAFile(path, filename, isVirtual)
	End If

	Set objUnZip = Nothing
End Sub
%>