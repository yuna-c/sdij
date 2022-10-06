<%
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
    Dim pageHtml

    


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

        ' Prev Set s
        If isFunc Then
            pageHtml = pageHtml & "<a href='javascript:" & linkPage &"(" & plusStart & ");'><span class='ico ico-page-prev'>이전 페이지</span></a>"
        Else
            pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & plusStart & "'><span class='ico ico-page-prev'>이전 페이지</span></a>"
        End If
        ' Prev Set e

        ' Paging Count Set s
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
        ' Paging Count Set e

        ' Next Set s
        If isFunc Then
            pageHtml = pageHtml & "<a href='javascript:" & linkPage &"("& plusEnd &");'><span class='ico ico-page-next'>다음 페이지</span></a>"
        Else
            pageHtml = pageHtml & "<a href='" &targetPage & "&page=" & plusEnd & "'><span class='ico ico-page-next'>다음 페이지</span></a>"
        End If
        ' Next Set e

        pageHtml = pageHtml & "</div>"

        Response.Write(pageHtml)
    End If
End Sub
%>