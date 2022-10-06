<%
' 사이트 구분 쿠키설정
COOK_SITE_CD = fncRequestCookie("site_cd")
COOK_SITE_CD = blank2Text(COOK_SITE_CD, "905002")


' 첫 페이지 및 기본 페이지의 경우 사이트 코드 추가
If InStr(LCase(URL_SELF), "academy/default.asp") > 0 Or InStr(LCase(URL_SELF), "academy/seat/") > 0 Or InStr(LCase(FullUrl), "sdij.com/default.asp") > 0 Then
    COOK_SITE_CD = "905002"
    Call SetCookie("site_cd", COOK_SITE_CD)
ElseIf InStr(LCase(URL_SELF), "on/default.asp") > 0 Or InStr(LCase(URL_SELF), "on/default2.asp") > 0 Or InStr(LCase(URL_SELF), "on/default3.asp") > 0 Or InStr(LCase(URL_SELF), "/event/20170601_1/default.asp") > 0  Or InStr(LCase(URL_SELF), "/event/4/") > 0 Then
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
GNB_CLASS   = ""
BLUE_CLASS  = ""
LOGO_IMG    = ""
LOGO_URL    = "/"
LOGO_ALT    = "시대인재"

COURSE_MENU_CD = ""

Select Case COOK_SITE_CD
    Case "905002"   ' 시대인재
        GNB_CLASS   = "aca"
        BLUE_CLASS  = "blue"
        LOGO_IMG    = URL_IMG & "/common/logo_sidae.png"
        LOGO_URL    = "/academy"
        LOGO_ALT    = "시대인재"

		COURSE_MENU_CD = "144" '학원 해설강좌수강 페이지 144

        ' 분당 선택일 경우
        If COOK_CAMPUS_LOC = "102" Then
            BLUE_CLASS = ""
        End If

    Case "905001"   ' 시대인재 ON
        GNB_CLASS   = "online"
        BLUE_CLASS  = ""
        LOGO_IMG    = URL_IMG & "/common/logo_sidae_on.png"
        LOGO_URL    = "/on"
        LOGO_ALT    = "시대인재온"

        COURSE_MENU_CD = "120" '온 해설강좌수강 페이지 120

    Case "905003"   ' 시대인재 Books
        GNB_CLASS   = "book"
        BLUE_CLASS  = ""
        LOGO_IMG    = URL_IMG & "/common/logo_sidae_books.png"
        LOGO_URL    = "/books"
        LOGO_ALT    = "시대인재 북스"

        COURSE_MENU_CD = "154" '북스 해설강좌수강 페이지 154

    Case "905004"   ' 시대인재 N
        GNB_CLASS   = "N"
        BLUE_CLASS  = ""
        LOGO_IMG    = URL_IMG & "/common/logo_sidae_N.png"
        LOGO_URL    = "/jaejong"
        LOGO_ALT    = "시대인재 재종"

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
<header id="header" class="MenuHeaderClass">
    <div id="gnb" class="<%=GNB_CLASS%>">
        <h1><a href="<%=LOGO_URL%>"><img src="<%=LOGO_IMG%>" alt="<%=LOGO_ALT%>" title="<%=LOGO_ALT%>" /></a></h1>
        <!-- 시대인재 학원일 경우 적용 Set s -->
        <% If COOK_SITE_CD = "905002" Then %>
            <span data-form="select" class="main <%=BLUE_CLASS%>">
                <select name="campus_loc" onchange="IfCampusLocChange()">
                    <option value="101" <%=isSelected(COOK_CAMPUS_LOC, "101")%>>대치</option>
                    <option value="102" <%=isSelected(COOK_CAMPUS_LOC, "102")%>>분당</option>
                </select>
            </span>
        <% End If %>
        <!-- 시대인재 학원일 경우 적용 Set e -->
        <ul class="<%=BLUE_CLASS%>">
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
                                    ' 장바구니 수량이 있을 경우만 적용
                                    If userCartCnt > 0 Then
                                        clsAdd = "my"
                                    End If
                            End Select

                            If ROOT_CD <> "" Then
                                clsOn = "on"
                            End If

                            ' 명예의 전당
                            If MN_ROOT_CD = "178" Then
                                'clsOn = ""
                                'clsUp = "up"
                                'clsUp = ""
                                'If ROOT_CD = "178" Then
                                '    clsOn = "on"
                                '    clsUp = ""
                                'End If
                            End If
            %>
                            <li class="<%=clsOn & " " & clsAdd & " " & clsUp%>">
                                <a href="javascript:void(0);"><%=MN_MENU_NM%></a>
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
                                            'CLS_NEW = "new"
                                    End Select

                                    If SUB_MN_MENU_DEPTH = "2" And MN_MENU_CD = SUB_MN_HIGH_CD And (CStr(SUB_MN_MENU_CD) <> CStr(COURSE_MENU_CD) or (CStr(SUB_MN_MENU_CD) = CStr(COURSE_MENU_CD)  And COURSE_OPEN="Y")) Then
                                        ' 서브메뉴 on



                                        CLS_SUB_ON = ""
                                        If CStr(SUB_MN_MENU_CD) = mcd Then
                                            CLS_SUB_ON = "on"
                                        End If

                                        If SUB_MN_MENU_PATH = "" Or IsNull(SUB_MN_MENU_PATH) Then
                                            SubMenuText = SubMenuText & "<a href='javascript:IfOpenIng();' class='" & CLS_SUB_ON & "'>"
                                        Else
                                            If InStr(SUB_MN_MENU_PATH, "?") > 0 Then
                                                SUB_MN_MENU_PATH = SUB_MN_MENU_PATH & "&mcd=" & SUB_MN_MENU_CD
                                            Else
                                                SUB_MN_MENU_PATH = SUB_MN_MENU_PATH & "?mcd=" & SUB_MN_MENU_CD
                                            End If

                                            If SUB_MN_MENU_CD = "196" Then
                                                ' 응시원서접수
                                                SubMenuText = SubMenuText & "<div class='depth_gnb'>"
                                                SubMenuText = SubMenuText & "    <a href=''>응시원서접수</a>"
                                                SubMenuText = SubMenuText & "    <ul>"
                                                'SubMenuText = SubMenuText & "        <li><a href='/jaejong/apply/bansu/app2.asp?mcd=196'>- 신설 시작반 (자연)</a></li>"
                                                'SubMenuText = SubMenuText & "        <li><a href='/jaejong/apply/bansu/app1.asp?mcd=196'>- 신설 시작반 (인문)</a></li>"
                                                SubMenuText = SubMenuText & "        <li style='margin-bottom:5px;'><a href='/jaejong/apply/transfer/app.asp?mcd=196' style='line-height:18px;'>- 신설 시작반<br>&nbsp;&nbsp;&nbsp;(6평편입)</a></li>"
                                                SubMenuText = SubMenuText & "        <li style='margin-bottom:5px;'><a href='/jaejong/apply/wait/app.asp?mcd=196' style='line-height:18px;'>- 신설 시작반<br>&nbsp;&nbsp;&nbsp;(대기접수)</a></li>"
                                                SubMenuText = SubMenuText & "        <li><a href='/jaejong/jj_app.asp?mcd=196'>- 정규반 (대기접수)</a></li>"
                                                SubMenuText = SubMenuText & "    </ul>"
                                                SubMenuText = SubMenuText & "</div>"
                                         	ElseIf SUB_MN_MENU_CD = "217" Or SUB_MN_MENU_CD = "218" Or SUB_MN_MENU_CD = "219" Or SUB_MN_MENU_CD = "220" Then
                                         		If EVT_APPLY_KBN = "Y" Then
                                         			SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "' class='" & CLS_SUB_ON & " " & CLS_NEW & "'>"
                                         		End If
                                            Else
                                                SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "' class='" & CLS_SUB_ON & " " & CLS_NEW & "'" & iif(COUS_END_FLG="1" And SUB_MN_MENU_CD ="224" ," style='display:none;' ","") &">"
                                            End If
                                        End If
                                        SubMenuText = SubMenuText & SUB_MN_MENU_NM

                                        ' 장바구니 수량 체크
                                        If EmTagCart Then
                                            SubMenuText = SubMenuText & " <em>(" & userCartCnt & ")</em>"
                                        End If

                                        SubMenuText = SubMenuText & "</a>"
                                    End If
                                Next
                                SubMenuText = SubMenuText & "</li>"
                                SubMenuText = SubMenuText & "</ul>"

                                'response.write SubMenuText
            %>
                            </li>
            <%
                        End If
                    Next

                End If
            %>
            <li class="login">

                <% If COOK_ID = "" Then %>
                    <a href="/member/login.asp">로그인 / 회원가입</a>
                    <!--<a href="/member/login.asp">로그인/회원가입</a>-->
                <% Else %>
                    <span><%=COOK_NM%>님</span><button type="button" onclick="location.href='/member/logout.asp'">로그아웃</button>
                <% End If %>

            </li>
        </ul>
        <button type="button" class="dim"></button>
    </div>
</header>

