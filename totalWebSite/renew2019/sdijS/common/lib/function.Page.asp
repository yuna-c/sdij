<%
' ####################################################################################################
'	Function name	: getPageSize
'	Parameter		:
'			table				= 테이블명
'			columns			= 컬럼 : "data1, data2, data3"
'			where				= 조건
'			groupby			= 그룹
'			arrParams		= 조건 : DbManager makeParam
'			pageSize			= 페이지당 게시물수
'	Return				: Array
'	Description		: 목록 크기 가져오기
' ####################################################################################################
Function getPageSize( ByVal table, ByVal where, ByVal groupby, ByVal arrParams, ByVal pageSize)
	Dim Rs
	Dim sql
	Dim arrPageSize
	getPageSize = Null

	If IsNull(where) Then where = ""
	If IsNull(groupby) Then groupby = ""

	If where <> "" Then where = "WHERE "& where
	If groupby <> "" Then groupby = "GROUP BY "& groupby

	sql = "SELECT COUNT(*) AS TotalCnt, CEILING(CAST(COUNT(*) AS FLOAT) / "& pageSize &") AS PageCnt "
	sql = sql &" FROM "& table &" "& where &" "& groupby

	Set Rs = Db.execRs(sql, DB_CMDTYPE_TEXT, arrParams, Nothing)
	If Not ( Rs.bof Or Rs.eof) Then
		arrPageSize = Rs.getRows()
	Else
		arrPageSize = Null
	End If
	Call closeRs(Rs)

	getPageSize = arrPageSize
End Function

' ####################################################################################################
'	Function name	: getPageList
'	Parameter		:
'			table				= 테이블명
'			columns			= 컬럼 : "data1, data2, data3"
'			where				= 조건
'			groupby			= 그룹
'			arrOrderby		= 정렬 : Array("data DESC", "data ASC", "data DESC")
'			arrParams		= 조건 : DbManager makeParam
'			pageSize			= 페이지당 게시물수
'			page				= 페이지수 (ByRef)
'			totalCount		= 총 게시물수
'			totalPage			= 총 페이지수
'			listLen				= 현재 페이지 게시물수
'	Return				: Array
'	Description		: 리스트 데이터 가져오기
' ####################################################################################################
Function getPageListDB( _
	ByVal table, ByVal columns, ByVal where, ByVal groupby, ByVal arrOrderBy, ByVal arrParams, ByVal pageSize, _
	ByRef page, ByRef totalCount, ByRef totalPage, ByRef listLen , ByVal objDB _
)
	Dim Rs
	Dim sql
	Dim listSize

	totalCount = 0
	totalPage = 0
	listLen = -1

	getPageListDB = Null

	If IsNull(where) Then where = ""
	If IsNull(groupby) Then groupby = ""
	If Not IsNumeric(page) Then page = 1 Else page = checkNumeric(page)
	If page<1 Then page = 1

	If where <> "" Then where = "WHERE "& where
	If groupby <> "" Then groupby = "GROUP BY "& groupby

	sql = "SELECT COUNT(*) AS TotalCnt, CEILING(CAST(COUNT(*) AS FLOAT) / "& pageSize &") AS PageCnt"
	sql = sql &" FROM "& table &" "& where &" "& groupby

	Set Rs = Db.execRs(sql, DB_CMDTYPE_TEXT, arrParams, objDB)
	totalCount = CLng(Rs("TotalCnt"))
	totalPage = CLng(Rs("PageCnt"))
	Call closeRs(Rs)

	If totalPage < 1 Then totalPage = 1
	If page > totalPage Then page = totalPage

	If page < totalPage Then
		listSize = pageSize
	Else
		listSize = totalCount - ((page - 1) * pageSize)
	End If

	sql = "SELECT * FROM"
	sql = sql &" (SELECT TOP "& listSize &" * FROM"
	sql = sql &" (SELECT TOP "& (page * pageSize) &" "& columns
	sql = sql &" FROM "& table &" "& where &" "& groupby
	sql = sql &" ORDER BY "& Trim(arrOrderBy(0)) &") AS T1"
	sql = sql &" ORDER BY "& Trim(arrOrderBy(1)) &") AS T2"
	sql = sql &" ORDER BY "& Trim(arrOrderBy(2))
	getPageListDB = Db.execRsList(sql, DB_CMDTYPE_TEXT, arrParams, listLen, objDB)
End Function

' ####################################################################################################
'	Function name	: getPageList
'	Parameter		:
'			table				= 테이블명
'			columns			= 컬럼 : "data1, data2, data3"
'			where				= 조건
'			groupby			= 그룹
'			arrOrderby		= 정렬 : Array("data DESC", "data ASC", "data DESC")
'			arrParams		= 조건 : DbManager makeParam
'			pageSize			= 페이지당 게시물수
'			page				= 페이지수 (ByRef)
'			totalCount		= 총 게시물수
'			totalPage			= 총 페이지수
'			listLen				= 현재 페이지 게시물수
'	Return				: Array
'	Description		: 리스트 데이터 가져오기
' ####################################################################################################
Function getPageList( _
	ByVal table, ByVal columns, ByVal where, ByVal groupby, ByVal arrOrderBy, ByVal arrParams, ByVal pageSize, _
	ByRef page, ByRef totalCount, ByRef totalPage, ByRef listLen _
)
	Dim Rs
	Dim sql
	Dim listSize

	totalCount = 0
	totalPage = 0
	listLen = -1

	getPageList = Null

	If IsNull(where) Then where = ""
	If IsNull(groupby) Then groupby = ""
	If Not IsNumeric(page) Then page = 1 Else page = checkNumeric(page)
	If page<1 Then page = 1

	If where <> "" Then where = "WHERE "& where
	If groupby <> "" Then groupby = "GROUP BY "& groupby

	sql = "SELECT COUNT(*) AS TotalCnt, CEILING(CAST(COUNT(*) AS FLOAT) / "& pageSize &") AS PageCnt"
	sql = sql &" FROM "& table &" "& where &" "& groupby

	Set Rs = Db.execRs(sql, DB_CMDTYPE_TEXT, arrParams, Nothing)
	totalCount = CLng(Rs("TotalCnt"))
	totalPage = CLng(Rs("PageCnt"))
	Call closeRs(Rs)

	If totalPage < 1 Then totalPage = 1
	If page > totalPage Then page = totalPage

	If page < totalPage Then
		listSize = pageSize
	Else
		listSize = totalCount - ((page - 1) * pageSize)
	End If

	sql = "SELECT * FROM"
	sql = sql &" (SELECT TOP "& listSize &" * FROM"
	sql = sql &" (SELECT TOP "& (page * pageSize) &" "& columns
	sql = sql &" FROM "& table &" "& where &" "& groupby
	sql = sql &" ORDER BY "& Trim(arrOrderBy(0)) &") AS T1"
	sql = sql &" ORDER BY "& Trim(arrOrderBy(1)) &") AS T2"
	sql = sql &" ORDER BY "& Trim(arrOrderBy(2))

	getPageList = Db.execRsList(sql, DB_CMDTYPE_TEXT, arrParams, listLen, Nothing)
End Function


Function getPageListTest( _
	ByVal table, ByVal columns, ByVal where, ByVal groupby, ByVal arrOrderBy, ByVal arrParams, ByVal pageSize, _
	ByRef page, ByRef totalCount, ByRef totalPage, ByRef listLen _
)
	Dim Rs
	Dim sql
	Dim listSize

	totalCount = 0
	totalPage = 0
	listLen = -1

	getPageListTest = Null

	If IsNull(where) Then where = ""
	If IsNull(groupby) Then groupby = ""
	If Not IsNumeric(page) Then page = 1 Else page = checkNumeric(page)
	If page<1 Then page = 1

	If where <> "" Then where = "WHERE "& where
	If groupby <> "" Then groupby = "GROUP BY "& groupby

	sql = "SELECT COUNT(*) AS TotalCnt, CEILING(CAST(COUNT(*) AS FLOAT) / "& pageSize &") AS PageCnt"
	sql = sql &" FROM "& table &" "& where &" "& groupby

	Set Rs = Db.execRs(sql, DB_CMDTYPE_TEXT, arrParams, Nothing)
	totalCount = CLng(Rs("TotalCnt"))
	totalPage = CLng(Rs("PageCnt"))
	Call closeRs(Rs)

	If totalPage < 1 Then totalPage = 1
	If page > totalPage Then page = totalPage

	If page < totalPage Then
		listSize = pageSize
	Else
		listSize = totalCount - ((page - 1) * pageSize)
	End If

	sql = "SELECT * FROM"
	sql = sql &" (SELECT TOP "& listSize &" * FROM"
	sql = sql &" (SELECT TOP "& (page * pageSize) &" "& columns
	sql = sql &" FROM "& table &" "& where &" "& groupby
	sql = sql &" ORDER BY "& Trim(arrOrderBy(0)) &") AS T1"
	sql = sql &" ORDER BY "& Trim(arrOrderBy(1)) &") AS T2"
	sql = sql &" ORDER BY "& Trim(arrOrderBy(2))
	print sql & "<br />"

	getPageListTest = Db.execRsList(sql, DB_CMDTYPE_TEXT, arrParams, listLen, Nothing)
End Function



' ####################################################################################################
'	Function name	: makePaging
'	Parameter		:
'			linkPage				= 링크 페이지명
'			linkParams			= 링크 파라미터
'			paramName			= 페이지 파라미터
'			nationSize			= 페이지당 출력 페이지수
'			nowPageStyle		= 현재페이지 스타일
'			linkStyle				= 페이지 링크 스타일
'			page					= 현재 페이지 번호
'			totalPage				= 전체 페이지수
'			arrIconDir				= 이전, 다음 방향 아이콘 (배열: 이전10, 이전, 다음, 다음10)
'			isDynamic				= 가변형 여부
'			isFunc					= 함수 여부
'	Return				: Boolean
'	Description		: 페이징 생성
' ####################################################################################################
Function makePaging( _
	ByVal linkPage, ByVal linkParams, ByVal paramName, ByVal nationSize, ByVal nowPageStyle, ByVal linkStyle, ByVal page, ByVal totalPage, _
	ByVal arrIconDir, ByVal isDynamic, ByVal isFunc _
)
	If IsNull(isDynamic) Then isDynamic = False
	If isDynamic Then
		makePaging = makePagingDynamic(linkPage, linkParams, paramName, nowPageStyle, linkStyle, page, totalPage, arrIconDir, isFunc)
	Else
		makePaging = makePagingStatic(linkPage, linkParams, paramName, nationSize, nowPageStyle, linkStyle, page, totalPage, arrIconDir, isFunc)
	End If
End Function

' ####################################################################################################
'	Function name	: makePagingStatic
'	Parameter		:
'			linkPage				= 링크 페이지명
'			linkParams			= 링크 파라미터
'			paramName			= 페이지 파라미터
'			nationSize			= 페이지당 출력 페이지수
'			nowPageStyle		= 현재페이지 스타일
'			linkStyle				= 페이지 링크 스타일
'			page					= 현재 페이지 번호
'			totalPage				= 전체 페이지수
'			arrIconDir				= 이전, 다음 방향 아이콘 (배열: 이전10, 이전, 다음, 다음10)
'			isFunc					= 함수 여부
'	Return				: Boolean
'	Description		: 페이징 생성 (고정형)
' ####################################################################################################
Function makePagingStatic( _
	ByVal linkPage, ByVal linkParams, ByVal paramName, ByVal nationSize, ByVal nowPageStyle, ByVal linkStyle, ByVal page, ByVal totalPage, ByVal arrIconDir, ByVal isFunc _
)
	Dim strPaging : strPaging = ""
	Dim f
	Dim iconPrev10 :		iconPrev10 =	imgURL & pathSite &"/btn_prev10.gif"
	Dim iconPrev :			iconPrev =		imgURL & pathSite &"/btn_prev.gif"
	Dim iconNext :			iconNext =		imgURL & pathSite &"/btn_next.gif"
	Dim iconNext10 :		iconNext10 =	imgURL & pathSite &"/btn_next10.gif"

	If IsNull(nowPageStyle) Then nowPageStyle = ""
	If IsNull(linkStyle) Then linkStyle = ""

	If Not IsNull(linkParams) And linkParams <> "" Then
		If Left(linkParams, 1) <> "&" Then linkParams = "&"& linkParams
	End If

	If Not IsNumeric(page) Then page = 1 Else page = CLng(page)
	If page < 1 Then page = 1

	If IsArray(arrIconDir) Then
		If UBound(arrIconDir) = 3 Then
			iconPrev10 =	Trim(arrIconDir(0))
			iconPrev =		Trim(arrIconDir(1))
			iconNext =		Trim(arrIconDir(2))
			iconNext10 =	Trim(arrIconDir(3))
		End If
	End If

	Dim tmpPage : tmpPage = Fix(page / nationSize)
	Dim startPage : startPage = (tmpPage * nationSize) + 1
	Dim endPage : endPage = (tmpPage + 1) * nationSize

	If endPage > totalPage Then endPage = totalPage

	If page Mod nationSize = 0 Then
		startPage = startPage - nationSize
		endPage = startPage + nationSize -1
	End If

	strPaging = strPaging &"<span style='margin:0 5px 0 0;'>"
	If page > 1 Then
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"(1);' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"=1"& linkParams &"' "& linkStyle &">"
		End If
		strPaging = strPaging &"<img src='"& iconPrev10 &"' align='absmiddle' border='0' /></a>"
	Else
		strPaging = strPaging &"<img src='"& iconPrev10 &"' align='absmiddle' border='0' alt='이전글이 존재하지 않습니다.'/>"
	End If
	strPaging = strPaging &"</span>"

	strPaging = strPaging &"<span style='margin:0 10px 0 0;'>"
	If startPage <> 1 Then
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& (startPage-1) &");' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& (startPage-1) & linkParams &"' "& linkStyle &">"
		End If
		strPaging = strPaging &"<img src='"& iconPrev &"' align='absmiddle' border='0' /></a>"
	Else
		strPaging = strPaging &"<img src='"& iconPrev &"' align='absmiddle' border='0' alt='이전글이 존재하지 않습니다.'/>"
	End If
	strPaging = strPaging &"</span>"

	For f = startPage To endPage
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& f &");' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& f & linkParams &"' "& linkStyle &">"
		End If
		If f = page Then
			strPaging = strPaging &"<span "& nowPageStyle &">"& f &"</span></a>"
		Else
			strPaging = strPaging & f &"</a>"
		End If

		If f < endPage Then strPaging = strPaging &"<span style='margin:0 7px 0 7px'>·</span>"
	Next

	strPaging = strPaging &"<span style='margin:0 0 0 10px;'>"
	If endPage <> totalPage Then
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& (startPage+nationSize) &");' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& (startPage+nationSize) & linkParams &"' "& linkStyle &">"
		End If
		strPaging = strPaging &"<img src='"& iconNext &"' align='absmiddle' border='0' /></a>"
	Else
		strPaging = strPaging &"<img src='"& iconNext &"' align='absmiddle' border='0' alt='다음글이 존재하지 않습니다.'/>"
	End If
	strPaging = strPaging &"</span>"

	strPaging = strPaging &"<span style='margin:0 0 0 5px;'>"
	If page < totalPage Then
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& totalPage &");' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& totalPage & linkParams &"' "& linkStyle &">"
		End If
		strPaging = strPaging &"<img src='"& iconNext10 &"' align='absmiddle' border='0' /></a>"
	Else
		strPaging = strPaging &"<img src='"& iconNext10 &"' align='absmiddle' border='0' alt='다음글이 존재하지 않습니다.'/>"
	End If
	strPaging = strPaging &"</span>"

	makePagingStatic = strPaging
End Function


' ####################################################################################################
'	Function name	: makePagingDynamic
'	Parameter		:
'			linkPage				= 링크 페이지명
'			linkParams			= 링크 파라미터
'			paramName			= 페이지 파라미터
'			nowPageStyle		= 현재페이지 스타일
'			linkStyle				= 페이지 링크 스타일
'			page					= 현재 페이지 번호
'			totalPage				= 전체 페이지수
'			arrIconDir				= 이전, 다음 방향 아이콘 (배열: 이전10, 이전, 다음, 다음10)
'			isFunc					= 함수 여부
'	Return				: Boolean
'	Description		: 페이징 생성 (가변형)
' ####################################################################################################
Function makePagingDynamic( _
	ByVal linkPage, ByVal linkParams, ByVal paramName, ByVal nowPageStyle, ByVal linkStyle, ByVal page, ByVal totalPage, ByVal arrIconDir, ByVal isFunc _
)
	Dim strPaging : strPaging = ""
	Dim f
	Dim iconPrev :			iconPrev =		adminImgURL2 &"/button/btn_prev2.gif"
	Dim iconNext :			iconNext =		adminImgURL2 &"/button/btn_next2.gif"

	If IsNull(nowPageStyle) Then nowPageStyle = ""
	If IsNull(linkStyle) Then linkStyle = ""

	If Not IsNull(linkParams) And linkParams <> "" Then
		If Left(linkParams, 1) <> "&" Then linkParams = "&"& linkParams
	End If

	If Not IsNumeric(page) Then page = 1 Else page = CLng(page)
	If page < 1 Then page = 1

	If IsArray(arrIconDir) Then
		If UBound(arrIconDir) = 3 Then
			iconPrev =		Trim(arrIconDir(1))
			iconNext =		Trim(arrIconDir(2))
		End If
	End If

	Dim startPage : startPage = page - 4
	Dim endPage : endPage = page + 4

	If startPage < 1 Then startPage = 1
	If endPage > totalPage Then endPage = totalPage

	strPaging = strPaging &"<span style='margin:0 10px 0 0;'>"
	If page > 1 Then
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& (page - 1) &");' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& (page - 1) & linkParams &"' "& linkStyle &">"
		End If
		strPaging = strPaging &"<img src='"& iconPrev &"' align='absmiddle' border='0' /></a>"
	Else
		strPaging = strPaging &"<img src='"& iconPrev &"' align='absmiddle' border='0' alt='이전글이 존재하지 않습니다.'/>"
	End If
	strPaging = strPaging &"</span>"

	If startPage > 1 Then
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"(1);' "& linkStyle &">1</a>"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"=1"& linkParams &"' "& linkStyle &">1</a>"
		End If

		strPaging = strPaging &"<span style='margin:0 10px 0 3px;'>...</span>"
	End If

	For f = startPage To endPage
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& f &");' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& f & linkParams &"' "& linkStyle &">"
		End If
		If f = page Then
			strPaging = strPaging &"<span "& nowPageStyle &">"& f &"</span></a>"
		Else
			strPaging = strPaging & f &"</a>"
		End If

		If f < endPage Then strPaging = strPaging &"<span style='margin:0 7px 0 7px'>·</span>"
	Next

	If endPage < totalPage Then
		strPaging = strPaging &"<span style='margin:0 3px 0 10px;'>...</span>"

		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& totalPage &");' "& linkStyle &">"& totalPage &"</a>"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& totalPage & linkParams &"' "& linkStyle &">"& totalPage &"</a>"
		End If
	End If

	strPaging = strPaging &"<span style='margin:0 0 0 10px;'>"
	If page < totalPage Then
		If isFunc Then
			strPaging = strPaging &"<a href='javascript:"& linkPage &"("& (page + 1) &");' "& linkStyle &">"
		Else
			strPaging = strPaging &"<a href='"& linkPage &"?"& paramName &"="& (page + 1) & linkParams &"' "& linkStyle &">"
		End If
		strPaging = strPaging &"<img src='"& iconNext &"' align='absmiddle' border='0' /></a>"
	Else
		strPaging = strPaging &"<img src='"& iconNext &"' align='absmiddle' border='0' alt='다음글이 존재하지 않습니다.'/>"
	End If
	strPaging = strPaging &"</span>"

	makePagingDynamic = strPaging
End Function


'==============================================================================================================
'	리스트 페이징 일반(공용)
'	totalCount	: 전체 레코드 갯수
'	lineSize	: 리스트 라인수
'	pageSize	: 페이징 사이즈
'	curPage		: 현재 페이지
'	linkPage    : 페이징 주소 및 함수
'	ifFunc	    : Function 여부
'==============================================================================================================
Sub paging( totalCount, lineSize, pageSize, curPage, linkPage, isFunc )
	Dim pageStart		' 시작 페이지
	Dim pageEnd			' 마지막 페이지
	Dim pageCount		' 총 페이지 수
	Dim endNum
	Dim targetPage		' 이동 페이지 URL


    If totalCount > 0 Then
        If totalCount Mod lineSize = 0 And Int(totalCount / lineSize) >= 1 Then
            pageCount = Int(totalCount / lineSize)
        Else
            pageCount = Int(totalCount / lineSize) + 1
        End If

        pageStart   = (int((curPage - 1) / pageSize) * pageSize) + 1
        plusStart   = pageStart - (pageSize)
        pageEnd     = pageStart + pageSize - 1

        If pageStart < 1 Then pageStart = 1

        If plusStart < 1 Then plusStart = 1

        If pageCount > pageEnd Then
            pageEnd = pageStart + pageSize - 1
            plusEnd = pageEnd + 1
        Else
            pageEnd = pageCount
            plusEnd = pageEnd
        End If

        ' 링크 스트링 구성
        targetPage = Request.ServerVariables("URI") & linkPage

        ' 마지막 페이지 구하기
        If pageEnd <= pageCount Then
            endNum = pageEnd
        Else
            endNum = pageCount
        End If

        pageHtml = ""
        pageHtml = pageHtml & "<div class='col-md-12 text-center'>"
        pageHtml = pageHtml & "    <ul class='pagination'>"

        ' Prev Set s
        If isFunc Then
            pageHtml = pageHtml & "<li><a href='javascript:" & linkPage &"(" & plusStart & ");'>Prev</a></li>"
        Else
            pageHtml = pageHtml & "<li><a href='" &targetPage & "&page=" & plusStart & "'>Prev</a></li>"
        End If
        ' Prev Set e

        ' Paging Count Set s
        Dim i
        For i = pageStart To endNum
            If isFunc Then
                If Int(curPage) = i Then
                    pageHtml = pageHtml & "<li class='active'><a href='javascript:" & linkPage &"(" & i & ");'>" & i & "</a></li>"
                Else
                    pageHtml = pageHtml & "<li><a href='javascript:" & linkPage &"(" & i & ");'>" & i & "</a></li>"
                End If
            Else
                If Int(curPage) = i Then
                    pageHtml = pageHtml & "<li class='active'><a href='" &targetPage & "&page=" & i & "'>" & i & "</a></li>"
                Else
                    pageHtml = pageHtml & "<li><a href='" &targetPage & "&page=" & i & "'>" & i & "</a></li>"
                End If
            End If
        Next
        ' Paging Count Set e

        ' Next Set s
        If isFunc Then
            pageHtml = pageHtml & "<li><a href='javascript:" & linkPage &"("& plusEnd &");'>Next</a></li>"
        Else
            pageHtml = pageHtml & "<li><a href='" &targetPage & "&page=" & plusEnd & "'>Next</a></li>"
        End If
        ' Next Set e

        pageHtml = pageHtml & "    </ul>"
        pageHtml = pageHtml & "</div>"

        Response.Write(pageHtml)
    End If
End Sub


'==============================================================================================================
'	리스트 페이징 일반(공용)
'	totalCount	: 전체 레코드 갯수
'	lineSize	: 리스트 라인수
'	pageSize	: 페이징 사이즈
'	curPage		: 현재 페이지
'	linkPage    : 페이징 주소 및 함수
'	ifFunc	    : Function 여부
'==============================================================================================================
Sub makePagingFront( totalCount, lineSize, pageSize, curPage, linkPage, isFunc, pageCss )
	Dim pageStart		' 시작 페이지
	Dim pageEnd			' 마지막 페이지
	Dim pageCount		' 총 페이지 수
	Dim endNum
	Dim targetPage		' 이동 페이지 URL


    If totalCount > 0 Then
        If totalCount Mod lineSize = 0 And Int(totalCount / lineSize) >= 1 Then
            pageCount = Int(totalCount / lineSize)
        Else
            pageCount = Int(totalCount / lineSize) + 1
        End If

        pageStart   = (int((curPage - 1) / pageSize) * pageSize) + 1
        plusStart   = pageStart - (pageSize)
        pageEnd     = pageStart + pageSize - 1

        If pageStart < 1 Then pageStart = 1

        If plusStart < 1 Then plusStart = 1

        If pageCount > pageEnd Then
            pageEnd = pageStart + pageSize - 1
            plusEnd = pageEnd + 1
        Else
            pageEnd = pageCount
            plusEnd = pageEnd
        End If

        ' 링크 스트링 구성
        targetPage = Request.ServerVariables("URI") & linkPage

        ' 마지막 페이지 구하기
        If pageEnd <= pageCount Then
            endNum = pageEnd
        Else
            endNum = pageCount
        End If

        pageHtml = ""
        pageHtml = pageHtml & "<div data-form='page' class='"& pageCss &"'>"

        If curPage > 1 Then
            If isFunc Then
                pageHtml = pageHtml &"<button type='button' class='page_first' onclick='javascript:"& linkPage &"(1);'>처음으로</button> "
            Else
                pageHtml = pageHtml & "<a href='" &targetPage & "&page=1'>처음으로</a>"
            End If
        Else
            pageHtml = pageHtml &" "
        End If


        ' Prev Set s
        If isFunc Then
            If curPage = 1  Then
                pageHtml = pageHtml & ""
            Else
                pageHtml = pageHtml & "<button type='button' class='page_prev' onclick='javascript:" & linkPage &"(" & curPage -1 & ");'>이전</button>"
            End If

        Else
            pageHtml = pageHtml & "<li><a href='" &targetPage & "&page=" & plusStart & "'>Prev</a></li>"
        End If
        ' Prev Set e

        ' Paging Count Set s
        Dim i
        For i = pageStart To endNum
            If isFunc Then
                If Int(curPage) = i Then
                    pageHtml = pageHtml & "<span>" & i & "</span>"
                Else
                    pageHtml = pageHtml & "<button type='button' onclick='javascript:" & linkPage &"(" & i & ");'>" & i & "</button>"
                End If
            Else
                If Int(curPage) = i Then
                    pageHtml = pageHtml & "<li class='active'><a href='" &targetPage & "&page=" & i & "'>" & i & "</a></li>"
                Else
                    pageHtml = pageHtml & "<li><a href='" &targetPage & "&page=" & i & "'>" & i & "</a></li>"
                End If
            End If
        Next
        ' Paging Count Set e

        ' Next Set s
        If isFunc Then
            If Trim(curPage) = Trim(plusEnd) Then
                pageHtml = pageHtml & ""
            Else
                pageHtml = pageHtml & "<button type='button' class='page_next' onclick='javascript:" & linkPage &"(" &  curPage + 1 & ");'>다음</button>"
            End If

        Else
            pageHtml = pageHtml & "<li><a href='" &targetPage & "&page=" & plusEnd & "'>Next</a></li>"
        End If
        ' Next Set e


        If isFunc Then
             If Trim(curPage) = Trim(plusEnd) Then
                 pageHtml = pageHtml & ""
             Else
                pageHtml = pageHtml &"<button type='button' class='page_last' onclick='javascript:"& linkPage &"("& plusEnd &");'>마지막으로</button> "
             End If

        Else
            pageHtml = pageHtml & "<li><a href='" &targetPage & "&page=" & totalCount & "'>마지막으로</a></li>"
        End If


        pageHtml = pageHtml & "</div>"

        Response.Write pageHtml
    End If
End Sub

'==============================================================================================================
'	리스트 페이징 일반(공용)
'	totalCount	: 전체 레코드 갯수
'	lineSize	: 리스트 라인수
'	pageSize	: 페이징 사이즈
'	curPage		: 현재 페이지
'	linkPage    : 페이징 주소 및 함수
'	ifFunc	    : Function 여부
'==============================================================================================================
Sub makePagingFront2019( totalCount, lineSize, pageSize, curPage, linkPage, isFunc, pageCss )
	Dim pageStart		' 시작 페이지
	Dim pageEnd			' 마지막 페이지
	Dim pageCount		' 총 페이지 수
	Dim endNum
	Dim targetPage		' 이동 페이지 URL


    If totalCount > 0 Then
        If totalCount Mod lineSize = 0 And Int(totalCount / lineSize) >= 1 Then
            pageCount = Int(totalCount / lineSize)
        Else
            pageCount = Int(totalCount / lineSize) + 1
        End If

        pageStart   = (int((curPage - 1) / pageSize) * pageSize) + 1
        plusStart   = pageStart - (pageSize)
        pageEnd     = pageStart + pageSize - 1

        If pageStart < 1 Then pageStart = 1

        If plusStart < 1 Then plusStart = 1

        If pageCount > pageEnd Then
            pageEnd = pageStart + pageSize - 1
            plusEnd = pageEnd + 1
        Else
            pageEnd = pageCount
            plusEnd = pageEnd
        End If

        ' 링크 스트링 구성
        targetPage = Request.ServerVariables("URI") & linkPage

        ' 마지막 페이지 구하기
        If pageEnd <= pageCount Then
            endNum = pageEnd
        Else
            endNum = pageCount
        End If

        pageHtml = ""
        pageHtml = pageHtml & "<div class='board-pager'>"

        If curPage > 1 Then
            If isFunc Then
                pageHtml = pageHtml & "<a href='javascript:"& linkPage &"(1);'><span class='ico ico-page-prev2'>처음으로</span></a>"
            Else
                pageHtml = pageHtml & "<a href='" &targetPage & "&page=1'><span class='ico ico-page-prev2'>처음으로</span></a>"
            End If
        Else
            pageHtml = pageHtml &" "
        End If


        ' Prev Set s
        If isFunc Then
            If curPage = 1  Then
                pageHtml = pageHtml & ""
            Else
                pageHtml = pageHtml & "<a href='javascript:" & linkPage &"(" & curPage -1 & ");'><span class='ico ico-page-prev'>이전</span></a>"
            End If
        Else
            pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & plusStart & "'><span class='ico ico-page-prev'>이전</span></a>"
        End If
        ' Prev Set e

        ' Paging Count Set s
        pageHtml = pageHtml & "<div class='pager-num'>"
        Dim i
        For i = pageStart To endNum
            If isFunc Then
                If Int(curPage) = i Then
                    pageHtml = pageHtml & "<a href='javascript:" & linkPage &"(" & i & ");' class='on'>" & i & "</a>"
                Else
                    pageHtml = pageHtml & "<a href='javascript:" & linkPage &"(" & i & ");'>" & i & "</a>"
                End If
            Else
                If Int(curPage) = i Then
                    pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & i & "' class='on'>" & i & "</a>"
                Else
                    pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & i & "'>" & i & "</a>"
                End If
            End If
        Next
        pageHtml = pageHtml & "</div>"
        ' Paging Count Set e

        ' Next Set s
        If isFunc Then
            If Trim(curPage) = Trim(plusEnd) Then
                pageHtml = pageHtml & ""
            Else
                pageHtml = pageHtml & "<a href='javascript:" & linkPage &"(" &  curPage + 1 & ");'><span class='ico ico-page-next'>다음 페이지</span></a>"
            End If
        Else
            pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & plusEnd & "'><span class='ico ico-page-next'>다음 페이지</span></a>"
        End If
        ' Next Set e


        If isFunc Then
             If Trim(curPage) = Trim(plusEnd) Then
                 pageHtml = pageHtml & ""
             Else
                pageHtml = pageHtml & "<a href='javascript:"& linkPage &"("& plusEnd &");'><span class='ico ico-page-next2'>다음 10개 페이지</span></a>"
             End If
        Else
            'pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & totalCount & "'><span class='ico ico-page-next2'>다음 10개 페이지</span></a>"
			pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & endNum & "'><span class='ico ico-page-next2'>다음 10개 페이지</span></a>"
        End If


        pageHtml = pageHtml & "</div>"

        Response.Write pageHtml
    End If
End Sub
%>