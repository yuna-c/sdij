<!-- // Header Include Area -->
<div id="header">

<%
    '---------------------------------------------------------------
	' 상단 네비 대치, 분당 선택
	'---------------------------------------------------------------
    If fncRequestCookie("campus_loc") = "" Then
       COOK_CAMPUS_LOC = "101"
    Else
       COOK_CAMPUS_LOC = fncRequestCookie("campus_loc") 
    End If 

    '---------------------------------------------------------------
	' 사이트 구분 쿠키설정
	'---------------------------------------------------------------
    If fncRequestCookie("site_cd") = "" Then
       COOK_SITE_CD = "905002"
    Else
       COOK_SITE_CD = fncRequestCookie("site_cd") 
    End If 

    If COOK_ID = "" Then
        login_onlick = "onclick=location.href='/member/login.asp'"

    Else
        login_onlick = ""
    End If 


        ' 메뉴 네비
        Call FN_MENU_NAVI_USER_LIST(DBCon, COOK_SITE_CD, "", vSiteMenuList, vSiteMenuCnt)


        ' 장바구니 수량 체크
        userCartCnt = 0
        If COOK_ID <> "" Then 
            arrParams = Array( _
                DbCon.makeParam("@CI_MEM_ID", adVarchar, adParamInput, 20, COOK_ID) _
            )

            vCartItemUserCntList = DbCon.ExecRsList("P_CART_ITEM_USER_CNT", adCmdStoredProc, arrParams, vCartItemUserCntListCnt, Nothing)
            
            If IsArray(vCartItemUserCntList) Then 
                userCartCnt = vCartItemUserCntList(0,0)
            End If 
        End If 
        

        ' 메뉴 GNB 클래스 정의
        GNB_CLASS   = ""
        BLUE_CLASS  = ""
        LOGO_IMG    = ""

        Select Case COOK_SITE_CD
            Case "905002"   ' 시대인재
                LOGO_IMG    = URL_IMG & "/mobile/ci.png"

            Case "905001"   ' 시대인재 ON

                LOGO_IMG    = URL_IMG & "/mobile/ci_on.png"

            Case "905003"   ' 시대인재 Books
                LOGO_IMG    = URL_IMG & "/mobile/ci_books.png"

        End Select 
        
        '마이페이지 on표기
        clsAdd = ""
        Select Case pg_menu_code
            Case "149", "130", "105"    ' 마이페이지
            clsAdd = "my"
        End Select 
        
%>
    <button type="button" class="m_logo">
        <img src="<%=LOGO_IMG%>" alt="시대인재">
    </button>


    <div class="head_btn">

        <button type="button" class="mypage <%=clsAdd%>" <%=login_onlick%> >마이메뉴</button>

<%
    If COOK_SITE_CD = "905002" Or COOK_SITE_CD = "905001" Then
%>
        <button type="button" class="menu">메뉴</button>
<%
    End If 
%>
    </div>


    <div id="navi">
        <a href="javascript:IfSiteLocation('905002');" class="<%=iif(COOK_SITE_CD = "905002", "on", "")%>">시대인재</a>
        <a href="javascript:IfSiteLocation('905001');" class="sdijon <%=iif(COOK_SITE_CD = "905001", "on", "")%>">시대인재 ON</a>
        <a href="javascript:IfSiteLocation('905003');" class="book <%=iif(COOK_SITE_CD = "905003", "on", "")%>">시대인재 Books</a>
    </div>
<!-- 학원 메뉴 팝업 S -->

<div data-popup="laypop" class="type1" style="display:none;">
    <div class="top">
        <div class="logo">
            <img src="<%=LOGO_IMG%>" alt="시대인재">
        </div>
        <div class="head_btn">
            <button type="button" class="close">닫기</button>
        </div>
    </div>
    <div class="bottom">
    <% If COOK_SITE_CD = "905002" Then %>
        <div data-tab="type1" class="m_menu">
            <button type="button" value="101" id="deachi" class="<%=iif(COOK_CAMPUS_LOC = "101" Or COOK_CAMPUS_LOC = "", "on", "")%>" onclick="IfCampusLocChange('101')">대치<%=COOK_CAMPUS_LOC%></button>
            <button type="button" value="102" id="bundang" class="<%=iif(COOK_CAMPUS_LOC = "102", "on", "")%>" onclick="IfCampusLocChange('102')">분당</button>
        </div>
    <% End If %>
        <ul data-list="type16" id="tab_menu_camp" class="tab_noshow <%=iif(COOK_CAMPUS_LOC = "101" Or COOK_CAMPUS_LOC = "", "deachi", "bundang")%>" style="<%=iif(COOK_CAMPUS_LOC  <> "", "display: block;", "display:none")%>">
<%
    ' vSiteMenuListTest --> vSiteMenuList 심사 후 적용!!!
    If IsArray(vSiteMenuList) Then
        For k=0 To vSiteMenuCnt
            MN_MENU_CD      = vSiteMenuList(0,k)
            MN_ROOT_CD      = vSiteMenuList(1,k)
            MN_HIGH_CD      = vSiteMenuList(2,k)
            MN_MENU_NM      = vSiteMenuList(3,k)
            MN_MENU_PATH    = vSiteMenuList(4,k)
            MN_MENU_DEPTH   = vSiteMenuList(5,k)
            MN_MENU_ORD     = vSiteMenuList(6,k)
            SORT            = vSiteMenuList(7,k)
            ROOT_CD         = vSiteMenuList(8,k)

            clsAdd  = ""
            clsOn   = ""
            If MN_MENU_DEPTH = "1" Then
                Select Case MN_MENU_CD
                    Case "149", "130", "105"    ' 마이페이지
                        clsAdd = "my"
                End Select

                If ROOT_CD <> "" Then
                    clsOn = "on"
                End If

                If clsAdd <> "my" Then
%>
            <li>
                <button type="button"><%=MN_MENU_NM%></button>

 <%
                    SubMenuText = ""
                    SubMenuText = SubMenuText & "<ul>"
                    SubMenuText = SubMenuText & "<li>"
                    For j=0 To vSiteMenuCnt
                        SUB_MN_MENU_CD      = vSiteMenuList(0,j)
                        SUB_MN_ROOT_CD      = vSiteMenuList(1,j)
                        SUB_MN_HIGH_CD      = vSiteMenuList(2,j)
                        SUB_MN_MENU_NM      = vSiteMenuList(3,j)
                        SUB_MN_MENU_PATH    = vSiteMenuList(4,j)
                        SUB_MN_MENU_DEPTH   = vSiteMenuList(5,j)
                        SUB_MN_MENU_ORD     = vSiteMenuList(6,j)
                        SUB_SORT            = vSiteMenuList(7,j)
                        SUB_ROOT_CD         = vSiteMenuList(8,j)
                        
                        If SUB_MN_MENU_NM <> "" Then 
                            SUB_MN_MENU_NM = Replace(SUB_MN_MENU_NM, "||", "<br>")
                        End If 

                        EmTagCart = False
                        Select Case SUB_MN_MENU_CD
                            Case "118", "142", "152"    ' 장바구니 수량 체크
                                If userCartCnt > 0 Then 
                                    EmTagCart = True
                                End If 
                        End Select

                        If SUB_MN_MENU_DEPTH = "2" And MN_MENU_CD = SUB_MN_HIGH_CD Then
                            SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "'>"
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

                    response.write SubMenuText
%>

            </li>
            
<%             End If

            End If
        Next

    End If
%>
        </ul>
    </div>
</div>
</div>



<!-- 마이페이지 팝업 S -->
<div data-popup="laypop" class="type2">
    <div class="top">
<% If COOK_ID <> "" Then %>
        <p class="user">
            <img src="<%=URL_IMG%>/mobile/user_img.png" alt="회원사진">
            <%=COOK_NM%>님
        </p>
<%  End If %>
        <div class="head_btn">
            <button type="button" class="close">닫기</button>
        </div>
    </div>

    <div class="bottom">
<%
    If COOK_ID <> "" Then
%>
        <ul data-list="type16" class="mypage">
<%
    ' vSiteMenuListTest --> vSiteMenuList 심사 후 적용!!!
    If IsArray(vSiteMenuList) Then
        For k=0 To vSiteMenuCnt
            MN_MENU_CD      = vSiteMenuList(0,k)
            MN_ROOT_CD      = vSiteMenuList(1,k)
            MN_HIGH_CD      = vSiteMenuList(2,k)
            MN_MENU_NM      = vSiteMenuList(3,k)
            MN_MENU_PATH    = vSiteMenuList(4,k)
            MN_MENU_DEPTH   = vSiteMenuList(5,k)
            MN_MENU_ORD     = vSiteMenuList(6,k)
            SORT            = vSiteMenuList(7,k)
            ROOT_CD         = vSiteMenuList(8,k)

            clsAdd  = ""
            clsOn   = ""
            If MN_MENU_DEPTH = "1" Then
                Select Case MN_MENU_CD
                    Case "149", "130", "105"    ' 마이페이지
                        clsAdd = "my"
                End Select

                If ROOT_CD <> "" Then
                    clsOn = "on"
                End If

                If clsAdd = "my" and COOK_ID <> "" Then

                    SubMenuText = ""
                 
                    For j=0 To vSiteMenuCnt
                        SUB_MN_MENU_CD      = vSiteMenuList(0,j)
                        SUB_MN_ROOT_CD      = vSiteMenuList(1,j)
                        SUB_MN_HIGH_CD      = vSiteMenuList(2,j)
                        SUB_MN_MENU_NM      = vSiteMenuList(3,j)
                        SUB_MN_MENU_PATH    = vSiteMenuList(4,j)
                        SUB_MN_MENU_DEPTH   = vSiteMenuList(5,j)
                        SUB_MN_MENU_ORD     = vSiteMenuList(6,j)
                        SUB_SORT            = vSiteMenuList(7,j)
                        SUB_ROOT_CD         = vSiteMenuList(8,j)
                        
                        If SUB_MN_MENU_NM <> "" Then 
                            SUB_MN_MENU_NM = Replace(SUB_MN_MENU_NM, "||", "<br>")
                        End If 

                        EmTagCart = False
                        Select Case SUB_MN_MENU_CD
                            Case "118", "142", "152"    ' 장바구니 수량 체크
                                If userCartCnt > 0 Then 
                                    EmTagCart = True
                                End If 
                        End Select

                        If SUB_MN_MENU_DEPTH = "2" And MN_MENU_CD = SUB_MN_HIGH_CD Then
                           SubMenuText = SubMenuText & "<li>"
                            SubMenuText = SubMenuText & "<a href='" & SUB_MN_MENU_PATH & "'>"
                            SubMenuText = SubMenuText & SUB_MN_MENU_NM
                            
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
<%
End If 
%>
    </div>
</div>
<!-- 마이페이지 팝업 E -->


<!-- // Header Include Area -->