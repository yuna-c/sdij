<!-- // Header Include Area -->
<%
' 사이트 구분 쿠키설정
COOK_SITE_CD = fncRequestCookie("site_cd")
COOK_SITE_CD = blank2Text(COOK_SITE_CD, "905002")

' 첫 페이지 및 기본 페이지의 경우 사이트 코드 추가
If InStr(LCase(URL_SELF), "academy/default.asp") > 0 Or InStr(LCase(URL_SELF), "academy/seat/") > 0 Or InStr(LCase(FullUrl), "sdij.com/default.asp") > 0 Then
    COOK_SITE_CD = "905002"
    Call SetCookie("site_cd", COOK_SITE_CD)
ElseIf InStr(LCase(URL_SELF), "on/default.asp") > 0 Or InStr(LCase(URL_SELF), "on/default2.asp") > 0 Or InStr(LCase(URL_SELF), "on/default3.asp") > 0 Or InStr(LCase(URL_SELF), "/event/20170922/default.asp") > 0 Or InStr(LCase(URL_SELF), "/event/20170601_1/") > 0 Or InStr(LCase(URL_SELF), "/event/4/") > 0 Then
    COOK_SITE_CD = "905001"
    Call SetCookie("site_cd", COOK_SITE_CD)
ElseIf InStr(LCase(URL_SELF), "books/default.asp") > 0 Or InStr(LCase(URL_SELF), "books/sub_basic.asp") > 0 Or InStr(LCase(URL_SELF), "books/sub_package.asp") > 0 Or InStr(LCase(URL_SELF), "/books/launching.asp") > 0 Then
    COOK_SITE_CD = "905003"
    Call SetCookie("site_cd", COOK_SITE_CD)
ElseIf InStr(LCase(URL_SELF), "jaejong/default.asp") > 0 Then
    COOK_SITE_CD = "905004"
    Call SetCookie("site_cd", COOK_SITE_CD)
End If


' 상단 네비 대치, 분당 선택
'COOK_CAMPUS_LOC = fncRequestCookie("campus_loc")
COOK_CAMPUS_LOC = fncRequest("campus_loc") ' 심사용
COOK_CAMPUS_LOC = blank2Text(COOK_CAMPUS_LOC, fncRequestCookie("campus_loc"))
COOK_CAMPUS_LOC = blank2Text(COOK_CAMPUS_LOC, "101")

mcd = fncRequestForm("mcd")
mcd = iif(mcd = "", fncRequest("mcd"), mcd)
mcd = iif(mcd = "", pg_menu_code, mcd)


' 메뉴 네비
Call FN_MENU_NAVI_USER_LIST(DBCon, COOK_SITE_CD, mcd, vSiteMenuList, vSiteMenuCnt)

If IsArray(vSiteMenuList) Then
    MN_SITE_CD = vSiteMenuList(0,0)
    COOK_SITE_CD = MN_SITE_CD
End If


COURSE_OPEN = "Y"

If COOK_ID <> "" Then
	arrParams = Array( _
        DbCon.makeParam("@CI_MEM_ID", adVarchar, adParamInput, 20, COOK_ID) _
    )

    vBuyItemUserCntList = DbCon.ExecRsList("P_BUY_ITEM_USER_CNT", adCmdStoredProc, arrParams, vBuyItemUserCntListCnt, Nothing)

    If IsArray(vBuyItemUserCntList) Then
        userBuyCnt = vBuyItemUserCntList(0,0)

        If userBuyCnt = "0" Then
        	COURSE_OPEN = "N"
        End If
    Else
    	COURSE_OPEN = "N"
    End If
Else
	COURSE_OPEN = "N"
End If

' 메뉴 GNB 클래스 정의
DEACHI_CLASS    = ""
BUNDANG_CLASS   = ""
TAB_CLASS       = ""
HOME_URL        = ""
ROW_CLASS       = ""
ROW_ALT         = "시대인재"

COURSE_MENU_CD = ""

Select Case COOK_SITE_CD
    Case "905002"   ' 시대인재
        LOGO_IMG    = URL_IMG & "/mobile/ci.png"
        TAB_CLASS   = "deachi"
        HOME_URL    = "/academy"
        ROW_CLASS   = ""
        ROW_ALT     = "시대인재"

        COURSE_MENU_CD = "144" '학원 해설강좌수강 페이지 144

        If COOK_CAMPUS_LOC = "101" Then         ' 대치
            DEACHI_CLASS    = "on"
            TAB_CLASS       = "deachi"
        ElseIf COOK_CAMPUS_LOC = "102" Then     ' 분당
            BUNDANG_CLASS   = "on"
            TAB_CLASS       = "bundang"
        End If

    Case "905001"   ' 시대인재 ON
        LOGO_IMG    = URL_IMG & "/mobile/ci_on.png"
        HOME_URL    = "/on"
        ROW_CLASS   = "sdijon"
        ROW_ALT     = "시대인재온"

        COURSE_MENU_CD = "120" '온 해설강좌수강 페이지 120

    Case "905003"   ' 시대인재 Books
        LOGO_IMG    = URL_IMG & "/mobile/ci_books.png"
        HOME_URL    = "/books"
        ROW_CLASS   = "books"
        ROW_ALT     = "시대인재 북스"

        COURSE_MENU_CD = "154" '북스 해설강좌수강 페이지 154

    Case "905004"   ' 시대인재 N
        LOGO_IMG    = URL_IMG & "/mobile/ci_N.png"
        HOME_URL    = "/jaejong"
        ROW_CLASS   = "sdijN"
        ROW_ALT     = "시대인재 재종"

        COURSE_MENU_CD = "185" '재종 해설강좌수강 페이지 185

End Select


' 장바구니 수량 체크
userCartCnt = 0
If COOK_ID <> "" Then
    arrParams = Array( _
        DbCon.makeParam("@CI_MEM_ID", adVarchar, adParamInput, 20, COOK_ID) _
    )

    vCartItemUserCntList = DbCon.ExecRsList("P_CART_ITEM_USER_CNT_ON", adCmdStoredProc, arrParams, vCartItemUserCntListCnt, Nothing)

    If IsArray(vCartItemUserCntList) Then
        userCartCnt = vCartItemUserCntList(0,0)
    End If
End If

'2019 서바이벌 제로 2, 3회 신청 내역 조회
EVT_APPLY_KBN = "N"

If COOK_ID <> "" Then
    arrParams = Array( _
        DbCon.makeParam("@CI_MEM_ID", adVarchar, adParamInput, 20, COOK_ID) _
    )

    vListSurv2 = DbCon.ExecRsList("P_EVT_SURVIVAL2_USER_CHEK", adCmdStoredProc, arrParams, vListSurv2Cnt, DBSDIJEVT)

    If IsArray(vListSurv2) Then
        surv2Cnt = vListSurv2(0,0)

        If surv2Cnt > 0 Then
	        EVT_APPLY_KBN = "Y"
	    End If
    End If

End If

COUS_END_FLG = 0
If CDbl(Replace(Date,"-","") & Replace(FormatDateTime(Now(), 4),":","")) >= 201811302359 Then
	COUS_END_FLG = 1
End If

%>
<div id="header" class="header_menu_cls">
    <button type="button" class="m_logo <%=ROW_CLASS%>"><img src="<%=LOGO_IMG%>" alt="<%=ROW_ALT%>" title="<%=ROW_ALT%>"></button>
    <div class="head_btn">
        <% If COOK_ID = "" Then %>
            <a href="/member/login.asp"><button type="button" class="mypage">마이메뉴</button></a>
        <% Else %>
            <button type="button" class="mypage <% If userCartCnt > 0 Then response.write "on" End If %>">마이메뉴</button>
        <% End If %>
        <% 'If COOK_SITE_CD = "905002" Or COOK_SITE_CD = "905001" Or COOK_SITE_CD = "905003" Then %>
            <button type="button" class="menu">메뉴</button>
        <% 'End If %>
    </div>

    <div id="navi">
        <a href="/academy/" class="<%=iif(COOK_SITE_CD = "905002", "on", "")%>" title="시대인재" alt="시대인재">시대인재</a>
        <a href="/on/" class="sdijon <%=iif(COOK_SITE_CD = "905001", "on", "")%>" title="시대인재온" alt="시대인재온">시대인재 ON</a>
        <a href="/jaejong/" class="N <%=iif(COOK_SITE_CD = "905004", "on", "")%>" title="시대인재재종" alt="시대인재재종" >시대인재 N</a>
        <a href="/books/" class="book <%=iif(COOK_SITE_CD = "905003", "on", "")%>" title="시대인재북스" alt="시대인재북스">시대인재 Books</a>
    </div>
</div>


<!-- 학원 메뉴 팝업 S -->
<div data-popup="laypop" class="type1" style="display:none;">
    <div class="top">
        <div class="logo <%=ROW_CLASS%>">
            <img src="<%=LOGO_IMG%>" alt="시대인재">
        </div>
        <div class="head_btn">
            <a href="<%=HOME_URL%>">홈페이지</a>
            <button type="button" class="close">닫기</button>
        </div>
    </div>
    <div class="bottom">
        <% If COOK_SITE_CD = "905002" Then %>
            <div data-tab="type1" class="m_menu">
                <button type="button" value="101" id="deachi" class="<%=DEACHI_CLASS%>" onclick="IfCampusLocChange('101')">대치</button>
                <button type="button" value="102" id="bundang" class="<%=BUNDANG_CLASS%>" onclick="IfCampusLocChange('102')">분당</button>
            </div>
        <% End If %>
        <ul data-list="type16" id="tab_menu_camp" class="tab_noshow <%=TAB_CLASS%> <%=ROW_CLASS%>" style="<%=iif(COOK_CAMPUS_LOC  <> "", "display: block;", "display:none")%>">
            <%
                ' vSiteMenuListTest --> vSiteMenuList 심사 후 적용!!!
                If IsArray(vSiteMenuList) Then
                    For k=0 To vSiteMenuCnt
                        MN_SITE_CD      = vSiteMenuList(0,k)
                        MN_MENU_CD      = vSiteMenuList(1,k)
                        MN_ROOT_CD      = vSiteMenuList(2,k)
                        MN_HIGH_CD      = vSiteMenuList(3,k)
                        MN_MENU_NM      = vSiteMenuList(4,k)
                        MN_MENU_PATH    = vSiteMenuList(5,k)
                        MN_MENU_DEPTH   = vSiteMenuList(6,k)
                        MN_MENU_ORD     = vSiteMenuList(7,k)
                        SORT            = vSiteMenuList(8,k)
                        ROOT_CD         = vSiteMenuList(9,k)

                        clsAdd  = ""
                        clsOn   = ""
                        clsUp   = ""
                        If MN_MENU_DEPTH = "1" Then
                            Select Case MN_MENU_CD
                                Case "149", "130", "105", "181"    ' 마이페이지
                                    clsAdd = "my"
                            End Select

                            If ROOT_CD <> "" Then
                                clsOn = "on"
                            End If

                            ' 명예의 전당
                            If MN_MENU_CD = "178" Then
                                ' clsUp = "up"
                            End If

                            If clsAdd <> "my" Then
            %>
                                <li class="<%=clsUp%>">
                                    <%
                                        If MN_MENU_PATH <> "" Then
                                            If InStr(MN_MENU_PATH, "?") > 0 Then
                                                MN_MENU_PATH = MN_MENU_PATH & "&mcd=" & MN_MENU_CD
                                            Else
                                                MN_MENU_PATH = MN_MENU_PATH & "?mcd=" & MN_MENU_CD
                                            End If
                                    %>
                                            <a href="<%=MN_MENU_PATH%>"><%=MN_MENU_NM%></a>
                                    <%
                                        Else
                                    %>
                                            <button type="button"><%=MN_MENU_NM%></button>
                                    <%
                                            SubMenuText = ""
                                            SubMenuText = SubMenuText & "<ul>"
                                            SubMenuText = SubMenuText & "<li>"
                                            For j=0 To vSiteMenuCnt
                                                SUB_MN_SITE_CD      = vSiteMenuList(0,j)
                                                SUB_MN_MENU_CD      = vSiteMenuList(1,j)
                                                SUB_MN_ROOT_CD      = vSiteMenuList(2,j)
                                                SUB_MN_HIGH_CD      = vSiteMenuList(3,j)
                                                SUB_MN_MENU_NM      = vSiteMenuList(4,j)
                                                SUB_MN_MENU_PATH    = vSiteMenuList(5,j)
                                                SUB_MN_MENU_DEPTH   = vSiteMenuList(6,j)
                                                SUB_MN_MENU_ORD     = vSiteMenuList(7,j)
                                                SUB_SORT            = vSiteMenuList(8,j)
                                                SUB_ROOT_CD         = vSiteMenuList(9,j)

                                                If SUB_MN_MENU_NM <> "" Then
                                                    SUB_MN_MENU_NM = Replace(SUB_MN_MENU_NM, "||", "<br>")
                                                End If

                                                EmTagCart = False
                                                CLS_NEW = ""
                                                Select Case SUB_MN_MENU_CD
                                                    Case "118", "142", "152", "183"    ' 장바구니 수량 체크
                                                        If userCartCnt > 0 Then
                                                            EmTagCart = True
                                                        End If
                                                    Case "203"  ' 수능 만점반
                                                        ' CLS_NEW = "new"
                                                End Select

                                                If SUB_MN_MENU_DEPTH = "2" And MN_MENU_CD = SUB_MN_HIGH_CD Then

                                                    If SUB_MN_MENU_CD = "196" Then
                                                        ' 응시원서접수
                                                        SubMenuText = SubMenuText & "<a href='#' class='mid' data-popup='sample'>응시원서접수</a>"
                                                        SubMenuText = SubMenuText & "<ul class='depth_gnb'>"
                                                        'SubMenuText = SubMenuText & "    <li><a href='/jaejong/apply/bansu/app2.asp?mcd=196'>- 신설 시작반 (자연)</a></li>"
                                                        'SubMenuText = SubMenuText & "    <li><a href='/jaejong/apply/bansu/app1.asp?mcd=196'>- 신설 시작반 (인문)</a></li>"
                                                        SubMenuText = SubMenuText & "    <li><a href='/jaejong/apply/transfer/app.asp?mcd=196'>- 신설 시작반 (6평편입)</a></li>"
                                                        SubMenuText = SubMenuText & "    <li><a href='/jaejong/apply/wait/app.asp?mcd=196'>- 신설 시작반 (대기접수)</a></li>"
                                                        SubMenuText = SubMenuText & "    <li><a href='/jaejong/jj_app.asp?mcd=196'>- 정규반 (대기접수)</a></li>"
                                                        SubMenuText = SubMenuText & "</ul>"

                                                    Else
                                                        If SUB_MN_MENU_PATH = "" Or IsNull(SUB_MN_MENU_PATH) Then
                                                            SubMenuText = SubMenuText & "<a href='javascript:IfOpenIng();'>"
                                                        Else
                                                            If InStr(SUB_MN_MENU_PATH, "?") > 0 Then
                                                                SUB_MN_MENU_PATH = SUB_MN_MENU_PATH & "&mcd=" & SUB_MN_MENU_CD
                                                            Else
                                                                SUB_MN_MENU_PATH = SUB_MN_MENU_PATH & "?mcd=" & SUB_MN_MENU_CD
                                                            End If

                                                            SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "' class='" & CLS_NEW & "'" & iif(COUS_END_FLG="1" And SUB_MN_MENU_CD ="224" ," style='display:none;' ","") &">"
                                                        End If


                                                        SubMenuText = SubMenuText & SUB_MN_MENU_NM
                                                        ' 장바구니 수량 체크
                                                        If EmTagCart Then
                                                            SubMenuText = SubMenuText & " <em>(" & userCartCnt & ")</em>"
                                                        End If

                                                        SubMenuText = SubMenuText & "</a>"
                                                    End If
                                                End If
                                            Next
                                            SubMenuText = SubMenuText & "</li>"
                                            SubMenuText = SubMenuText & "</ul>"

                                            'response.write SubMenuText
                                        End If
                                    %>
                                </li>
            <%
                            End If
                        End If
                    Next
                End If
            %>
        </ul>
    </div>
</div>
<!-- 응시원서 접수 S -->
<!--
<div data-popup="type1" class="popup3">
    <div class="pop_wrap">
        <div data-box="pop_content">
            <div class="content_text">
                <ul class="depth_list">
                    <li><a href="/jaejong/apply/bansu/app2.asp?mcd=196">2019 신설 시작반(자연)</a></li>
                    <li><a href="/jaejong/apply/bansu/app1.asp?mcd=196">2019 신설 시작반(인문)</a></li>
                    <li><a href="/jaejong/jj_app.asp?mcd=196">2019 정규반</a></li>
                </ul>
            </div>
        </div>
        <div class="btn_wrap">
            <button type="button" data-btn="navy" class="close">닫기</button>
        </div>
    </div>
    <button class="dim"></button>
</div>
-->
<!-- 응시원서 접수 E -->

<!-- 마이페이지 팝업 S -->
<div data-popup="laypop" class="type2">
    <div class="top">
        <% If COOK_ID <> "" Then %>
            <p class="user">
                <img src="<%=URL_IMG%>/mobile/user_img.png" alt="회원사진"><%=COOK_NM%>님
            </p>
        <% End If %>
        <div class="head_btn">
            <button type="button" class="close">닫기</button>
        </div>
    </div>
    <div class="bottom">
        <% If COOK_ID <> "" Then %>
            <ul data-list="type16" class="mypage <% If userCartCnt > 0 Then response.write "on" End If %>">
            <%
                ' vSiteMenuListTest --> vSiteMenuList 심사 후 적용!!!
                If IsArray(vSiteMenuList) Then
                    For k=0 To vSiteMenuCnt
                        MN_SITE_CD      = vSiteMenuList(0,k)
                        MN_MENU_CD      = vSiteMenuList(1,k)
                        MN_ROOT_CD      = vSiteMenuList(2,k)
                        MN_HIGH_CD      = vSiteMenuList(3,k)
                        MN_MENU_NM      = vSiteMenuList(4,k)
                        MN_MENU_PATH    = vSiteMenuList(5,k)
                        MN_MENU_DEPTH   = vSiteMenuList(6,k)
                        MN_MENU_ORD     = vSiteMenuList(7,k)
                        SORT            = vSiteMenuList(8,k)
                        ROOT_CD         = vSiteMenuList(9,k)

                        clsAdd  = ""
                        clsOn   = ""
                        If MN_MENU_DEPTH = "1" Then
                            Select Case MN_MENU_CD
                                Case "149", "130", "105", "181"    ' 마이페이지
                                    clsAdd = "my"
                            End Select

                            If ROOT_CD <> "" Then
                                clsOn = "on"
                            End If

                            If clsAdd = "my" and COOK_ID <> "" Then

                                SubMenuText = ""

                                For j=0 To vSiteMenuCnt
                                    SUB_MN_SITE_CD      = vSiteMenuList(0,j)
                                    SUB_MN_MENU_CD      = vSiteMenuList(1,j)
                                    SUB_MN_ROOT_CD      = vSiteMenuList(2,j)
                                    SUB_MN_HIGH_CD      = vSiteMenuList(3,j)
                                    SUB_MN_MENU_NM      = vSiteMenuList(4,j)
                                    SUB_MN_MENU_PATH    = vSiteMenuList(5,j)
                                    SUB_MN_MENU_DEPTH   = vSiteMenuList(6,j)
                                    SUB_MN_MENU_ORD     = vSiteMenuList(7,j)
                                    SUB_SORT            = vSiteMenuList(8,j)
                                    SUB_ROOT_CD         = vSiteMenuList(9,j)

                                    If SUB_MN_MENU_NM <> "" Then
                                        SUB_MN_MENU_NM = Replace(SUB_MN_MENU_NM, "||", "<br>")
                                    End If

                                    EmTagCart = False
                                    Select Case SUB_MN_MENU_CD
                                        Case "118", "142", "152", "183"    ' 장바구니 수량 체크
                                            If userCartCnt > 0 Then
                                                EmTagCart = True
                                            End If
                                    End Select

                                    If SUB_MN_MENU_DEPTH = "2" And MN_MENU_CD = SUB_MN_HIGH_CD  And (CStr(SUB_MN_MENU_CD) <> CStr(COURSE_MENU_CD) or (CStr(SUB_MN_MENU_CD) = CStr(COURSE_MENU_CD)  And COURSE_OPEN="Y")) Then
                                        If InStr(SUB_MN_MENU_PATH, "?") > 0 Then
                                            SUB_MN_MENU_PATH = SUB_MN_MENU_PATH & "&mcd=" & SUB_MN_MENU_CD
                                        Else
                                            SUB_MN_MENU_PATH = SUB_MN_MENU_PATH & "?mcd=" & SUB_MN_MENU_CD
                                        End If




                                        If SUB_MN_MENU_CD = "217" Or SUB_MN_MENU_CD = "218" Or SUB_MN_MENU_CD = "219" Or SUB_MN_MENU_CD = "220" Then
	                                 		If EVT_APPLY_KBN = "Y" Then
	                                 			SubMenuText = SubMenuText & "<li>"
	                                 			SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "'>"
	                                        	SubMenuText = SubMenuText & SUB_MN_MENU_NM
	                                 		End If
                                 		Else
                                 			SubMenuText = SubMenuText & "<li>"
	                                        SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "'>"
	                                        SubMenuText = SubMenuText & SUB_MN_MENU_NM
                                 		End If

                                        'SubMenuText = SubMenuText & "<li>"
                                        'SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "'>"
                                        'SubMenuText = SubMenuText & SUB_MN_MENU_NM

                                        ' 장바구니 수량 체크
                                        If EmTagCart Then
                                            SubMenuText = SubMenuText & " <span class='f_color3'>(" & userCartCnt & ")</span>"
                                        End If

                                        SubMenuText = SubMenuText & "</a>"
                                        SubMenuText = SubMenuText & "</li>"
                                    End If
                                Next


                                response.write SubMenuText

                            End If

                        End If
                    Next

                End If
            %>
            <li>
                <% If COOK_ID <> "" Then %>
                    <a href="/member/logout.asp">로그아웃</a>
                <% End If %>
            </li>
        </ul>
        <% End If %>
    </div>
</div>
<!-- 마이페이지 팝업 E -->
<!-- // Header Include Area -->