<%
    ' MENU_TOP lIST 정보에서 가져온다!!
    MENU_NAVI_LOCATION = ""
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
            MN_MENU_NAVI    = vSiteMenuList(10,k)
            
            If CStr(MN_MENU_CD) = CStr(mcd) Then 
                If MN_MENU_NAVI <> "" Then 
                    MENU_NAVI_LOCATION = " > " & Replace(MN_MENU_NAVI, "||", " ")
                End If 
            End If 
        Next 
    End If 
%>
<div class="location">
    <span>시대인재<%=MENU_NAVI_LOCATION%></span>
</div>