 <%
' 관련컨텐츠 작업 2019-01-08 고동훈
' 오픈일 이슈 및 페이지가 변경될 개연성이 있어 하드코딩 추후 관리자 페이지에서 입력할 수 있도록 변경 예정입니다.
Dim menu
Dim rname1, rname2, rname3
Dim rel1, rel2, rel3

menu = Request.servervariables("URL")
' 재종반
if InStr(menu,"/sdn/jj_curri.asp") > 0 Then '커리큘럼 =>	부엉이라이브러리	수능 모의평가 급식
	rel1   = "/sdn/jj_library.asp"
	rname1 = "부엉이라이브러리"
	rel2   = "/sdn/jj_exam.asp"
	rname2 = "수능 모의평가"
	rel3   = "/sdn/jj_honor.asp"
	rname3 = "명예의전당"
ElseIf InStr(menu,"/sdn/jj_library.asp") > 0 Then '부엉이라이브러리 => 	커리큘럼	급식 수능 모의평가
	rel1   = "/sdn/jj_curri.asp"
	rname1 = "커리큘럼"
	rel2   = "/sdn/food/default.asp"
	rname2 = "급식"
	rel3   = "/sdn/jj_exam.asp"
	rname3 = "수능 모의평가"
ElseIf InStr(menu,"/sdn/jj_exam.asp") > 0 Then '수능 모의평가 =>	커리큘럼	부엉이라이브러리
	rel1   = "/sdn/jj_curri.asp"
	rname1 = "커리큘럼"
	rel2   = "/sdn/jj_library.asp"
	rname2 = "부엉이라이브러리"
	rel3   = "/sdn/jj_honor.asp"
	rname3 = "명예의전당"
ElseIf InStr(menu,"/sdn/apply/qual_list.asp") > 0 Then '모집요강 =>	응시원서접수
	rel1   = "/sdn/apply/public/2019/app_jayeon.asp"
	rname1 = "응시원서접수"
	rel2   = "/sdn/jj_curri.asp"
	rname2 = "커리큘럼"
	rel3   = "/sdn/jj_exam.asp"
	rname3 = "수능 모의평가"
ElseIf InStr(menu,"/sdn/apply/public/2019/app_jayeon.asp") > 0 Then '응시원서접수 =>	모집요강
	rel1   = "/sdn/apply/qual_list.asp"
	rname1 = "모집요강"
	rel2   = "/sdn/jj_curri.asp"
	rname2 = "커리큘럼"
	rel3   = "/sdn/jj_exam.asp"
	rname3 = "수능 모의평가"
ElseIf InStr(menu,"/sdn/board/analysis_list.asp") > 0 Then '입시 R&D =>	커리큘럼	수능 모의평가
	rel1   = "/sdn/jj_curri.asp"
	rname1 = "커리큘럼"
	rel2   = "/sdn/jj_exam.asp"
	rname2 = "수능 모의평가"
	rel3   = "/sdn/jj_library.asp"
	rname3 = "부엉이라이브러리"
ElseIf InStr(menu,"/sdn/board/jjmtm_list.asp") > 0 Then '1:1질의응답 =>	커리큘럼	모집요강
	rel1   = "/sdn/jj_curri.asp"
	rname1 = "커리큘럼"
	rel2   = "/sdn/apply/qual_list.asp"
	rname2 = "모집요강"
	rel3   = "/sdn/jj_library.asp"
	rname3 = "부엉이라이브러리"
ElseIf InStr(menu,"/sdn/sjs/") > 0 Or InStr(menu,"/sdn/monthly/") > 0 Or InStr(menu,"/sdn/sfn/") > 0 Then '부엉이포스트 =>	수능 모의평가
	rel1   = "/sdn/jj_exam.asp"
	rname1 = "수능 모의평가"
	rel2   = "/sdn/jj_library.asp"
	rname2 = "부엉이라이브러리"
	rel3   = "/sdn/food/default.asp"
	rname3 = "급식"
ElseIf InStr(menu,"/sdn/food/default.asp") > 0 Then '급식 =>	부엉이라이브러리
	rel1   = "/sdn/jj_curri.asp"
	rname1 = "커리큘럼"
	rel2   = "/sdn/jj_library.asp"
	rname2 = "부엉이라이브러리"
	rel3   = "/sdn/jj_exam.asp"
	rname3 = "수능 모의평가"
ElseIf InStr(menu,"/sdn/jj_honor.asp") > 0 Then '명예의전당 =>	커리큘럼	부엉이라이브러리	수능 모의평가
	rel1   = "/sdn/jj_curri.asp"
	rname1 = "커리큘럼"
	rel2   = "/sdn/jj_library.asp"
	rname2 = "부엉이라이브러리"
	rel3   = "/sdn/jj_exam.asp"
	rname3 = "수능 모의평가"

' 단과
ElseIf InStr(menu,"/aca/schd/schd_view.asp") > 0 Then '시간표 =>	오시는길

	rel1   = "/aca/info/map.asp"
	rname1 = "오시는길"
	rel2   = "/bbs/exam_list.asp"
	rname2 = "입시 R&D"
	rel3   = "/aca/brief/brief_list.asp"
	rname3 = "설명회"
ElseIf InStr(menu,"/aca/brief/brief_list.asp") > 0 Then '설명회	=> 오시는길(대치)	입시 R&D
	rel1   = "/aca/info/map.asp"
	rname1 = "오시는길"
	rel2   = "/bbs/exam_list.asp"
	rname2 = "입시 R&D"
	rel3   = "/aca/schd/schd_view.asp"
	rname3 = "시간표"
ElseIf InStr(menu,"/aca/csti/") > 0 Then '컨설팅 =>	오시는길(대치)	입시 R&D
	rel1   = "/aca/info/map.asp"
	rname1 = "오시는길"
	rel2   = "/bbs/exam_list.asp"
	rname2 = "입시 R&D"
	rel3   = "/aca/brief/brief_list.asp"
	rname3 = "설명회"
ElseIf InStr(menu,"/bbs/exam_list.asp") > 0 Then '입시 R&D=>	시간표(대치)	설명회
	rel1   = "/aca/schd/schd_view.asp"
	rname1 = "시간표"
	rel2   = "/aca/brief/brief_list.asp"
	rname2 = "설명회"
	rel3   = "/aca/info/map.asp"
	rname3 = "오시는길"
ElseIf InStr(menu,"/aca/svv/") > 0 Then '부엉이포스트 =>	시간표(대치)	입시 R&D
	rel1   = "/aca/schd/schd_view.asp"
	rname1 = "시간표"
	rel2   = "/bbs/exam_list.asp"
	rname2 = "입시 R&D"
	rel3   = "/aca/info/map.asp"
	rname3 = "오시는길"
End If

 %>

 <!-- S : 관련 컨텐츠 -->
 <% If rel1 <> "" Then %>



<!--
    <div class="gallery-list gallery-content">
        <ul class="float-area">
			<%If rel1 <> "" Then%>
            <li>
                <a href="<%'=rel1%>">
                    <span class="menu-txt"><%'=rname1%></span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
			<%
			End If
			If rel2 <> "" Then %>
            <li>
                <a href="<%'=rel2%>">
                    <span class="menu-txt"><%'=rname2%></span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
			<%
			End If
			If rel3 <> "" Then %>
            <li>
                <a href="<%'=rel3%>">
                    <span class="menu-txt"><%'=rname3%></span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
			<%
			End If
			%>

        </ul>
    </div>
-->


<%End If%>


<!--// E : 관련 컨텐츠 -->