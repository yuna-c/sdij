<%
bnr_seq     = 2 ' 팝업관리(모바일)
dsp_aca     = "0"
dsp_on      = "0"
dsp_jj      = "0"
dsp_mall    = "0"

If InStr(LCase(RootUrl), "/academy/default.asp") > 0 Then 
    dsp_aca = "1"
End If 

If InStr(LCase(RootUrl), "/on/default.asp") > 0 Then 
    dsp_on = "1"
End If 

If InStr(LCase(RootUrl), "/jaejong/default.asp") > 0 Then 
    dsp_jj = "1"
End If 

If InStr(LCase(RootUrl), "/books/default.asp") > 0 Then 
    dsp_mall = "1"
End If 



arrParams = Array( _
    DbCon.makeParam("@BD_BNR_SEQ", adInteger, adParamInput, 4, bnr_seq), _
    DbCon.makeParam("@BD_DSP_ACA", adInteger, adParamInput, 4, blank2Null(dsp_aca)), _
    DbCon.makeParam("@BD_DSP_ON", adInteger, adParamInput, 4, blank2Null(dsp_on)), _
    DbCon.makeParam("@BD_DSP_JJ", adInteger, adParamInput, 4, blank2Null(dsp_jj)), _
    DbCon.makeParam("@BD_DSP_MALL", adInteger, adParamInput, 4, blank2Null(dsp_mall)) _
)

vMainPopList = DbCon.ExecRsList("P_BNR_DTL_POP_LIST", adCmdStoredProc, arrParams, vMainPopListCnt, Nothing)

If IsArray(vMainPopList) Then 
    BM_ACT_KBN  = vMainPopList(0,0) ' 노출 형태: (R:가로나열, L:세로나열)
    BM_DTL_SEQ  = vMainPopList(1,0)
    BM_BNR_NM   = vMainPopList(2,0)
    BM_IMG_URL  = vMainPopList(3,0)
    BM_LNK_URL  = vMainPopList(4,0)
    BM_RD_KBN   = vMainPopList(5,0)
    BM_POP_W    = vMainPopList(6,0)
    BM_POP_H    = vMainPopList(7,0)
    BM_CLOSE    = vMainPopList(8,0) ' 창닫기 설정: (0:열지 않음, 1: 하루)

    BM_RD_KBN_NM = ""
    Select Case BM_RD_KBN
        Case "S"
            BM_RD_KBN_NM = "_self"
        Case "B"
            BM_RD_KBN_NM = "_blank"
    End Select 

    BM_CLOSE_NM = ""
    Select Case BM_CLOSE
        Case "0"
            BM_CLOSE_NM = "다시 열지 않음"
        Case "1"
            BM_CLOSE_NM = "오늘 하루 열지 않음"
    End Select 

    ' 배너가 한 개일 경우 세로나열로 변경 Set S
    If BM_ACT_KBN = "R" Then
        If vMainPopListCnt = 0 Then 
            BM_ACT_KBN = "L"
        End If 
    End If 
    ' 배너가 한 개일 경우 세로나열로 변경 Set E
End If 
%>
<% If IsArray(vMainPopList) Then %>
    <% If BM_ACT_KBN = "R" Then %>
        <!-- 가로 나열 Set S -->
        <% If Request.Cookies("MainSwiperLayerPop") <> "Y" Then %>
            <div data-pop="pop" id="MainSwiperLayerPop" class="autoH">
                <div class="pop_wrap">
                    <div data-swipe="pop" class="pop swiper-container">
                        <div class="main-pagination"></div>
                        <div class="swiper-wrapper">
                            <%
                                For i=0 To vMainPopListCnt
                                    BM_ACT_KBN      = vMainPopList(0,i)
                                    BD_DTL_SEQ      = vMainPopList(1,i)
                                    BD_BNR_NM       = vMainPopList(2,i)
                                    BD_IMG_URL      = vMainPopList(3,i)
                                    BD_LNK_URL      = vMainPopList(4,i)
                                    BD_RD_KBN       = vMainPopList(5,i)
                                    BD_POP_W        = vMainPopList(6,i)
                                    BD_POP_H        = vMainPopList(7,i)
                                    BD_CLOSE        = vMainPopList(8,i)

                                    BD_RD_KBN_NM = ""
                                    Select Case BD_RD_KBN
                                        Case "S"
                                            BD_RD_KBN_NM = "_self"
                                        Case "B"
                                            BD_RD_KBN_NM = "_blank"
                                    End Select 
                            %>
                                    <div class="swiper-slide">
                                        <% If BD_LNK_URL <> "" Then %>
                                            <!-- 링크가 있을 경우 Set S -->
                                            <% If BD_RD_KBN = "P" Then %>
                                                <!-- 팝업일 경우 -->
                                                <a href="javascript:window.open('<%=BD_LNK_URL%>');"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
                                            <% Else %>
                                                <a href="<%=BD_LNK_URL%>" target="<%=BD_RD_KBN_NM%>"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
                                            <% End If %>
                                            <!-- 링크가 있을 경우 Set E -->
                                        <% Else %>
                                            <!-- 링크가 없을 경우 Set S -->
                                            <img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>">
                                            <!-- 링크가 없을 경우 Set E -->
                                        <% End If %>
                                    </div>
                            <%
                                Next 
                            %>
                        </div>
                    </div>
                    <div class="pop_btn">
                        <div class="pop_prev">back</div>
                        <div class="pop_next">go</div>
                    </div>

                    <div class="today">
                        <button type="button" class="t_close" onclick="IfMainLayerClose('MainSwiperLayerPop', '<%=BM_CLOSE%>');"><%=BM_CLOSE_NM%></button>
                        <button type="button" class="close" onclick="IfMainLayerClose('MainSwiperLayerPop', '');">닫기</button>
                    </div>
                </div>
                <div class="dim"></div>
            </div>
            <script type="text/javascript">
                var MainSwiperLayerPop = new Swiper('.pop.swiper-container', {
                    pagination: '.main-pagination',
                    paginationClickable: false,
                    spaceBetween: 0,
                    slidesPerView:1,
                    /*autoplay: 4000,*/
                    loop:true,
                    nextButton: '.pop_next',
                    prevButton: '.pop_prev',
                });
            </script>
        <% End If %>
    <% ElseIf BM_ACT_KBN = "L" Then %>
        <!-- 세로 나열: 최대 2개만 노출 Set S -->
        <% If vMainPopListCnt = 0 Then %>
            <!-- 배너 1개짜리 Set S -->
            <% If Request.Cookies("MainSwiperLayerPop_1") <> "Y" Then %>
                <div data-pop="pop" ID="MainSwiperLayerPop_1" class="autoH">
                    <div class="pop_wrap">
                        <div class="content">
                            <% If BM_LNK_URL <> "" Then %>
                                <!-- 링크가 있을 경우 Set S -->
                                <% If BM_RD_KBN = "P" Then %>
                                    <!-- 팝업일 경우 -->
                                    <a href="javascript:window.open('<%=BM_LNK_URL%>');"><img src="<%=BM_IMG_URL%>" title="<%=BM_BNR_NM%>"></a>
                                <% Else %>
                                    <a href="<%=BM_LNK_URL%>" target="<%=BM_RD_KBN_NM%>"><img src="<%=BM_IMG_URL%>" title="<%=BM_BNR_NM%>"></a>
                                <% End If %>
                                <!-- 링크가 있을 경우 Set E -->
                            <% Else %>
                                <!-- 링크가 없을 경우 Set S -->
                                <img src="<%=BM_IMG_URL%>" title="<%=BM_BNR_NM%>">
                                <!-- 링크가 없을 경우 Set E -->
                            <% End If %>
                        </div>
                        <div class="today">
                            <button type="button" class="t_close" onclick="IfMainLayerClose('MainSwiperLayerPop_1', '<%=BM_CLOSE%>');"><%=BM_CLOSE_NM%></button>
                            <button type="button" class="close" onclick="IfMainLayerClose('MainSwiperLayerPop_1', '');">닫기</button>
                        </div>
                    </div>
                    <div class="dim"></div>
                </div>
            <% End If %>
            <!-- 배너 1개짜리 Set E -->
        <% Else %>
            <!-- 배너 2개짜리 Set S -->
            <div data-pop="double" id="doubleLayer" class="autoH check">
                <div class="pop_wrap">
                    <div class="content_wrap">
                        <%
                            For i=0 To vMainPopListCnt
                                BM_ACT_KBN      = vMainPopList(0,i)
                                BD_DTL_SEQ      = vMainPopList(1,i)
                                BD_BNR_NM       = vMainPopList(2,i)
                                BD_IMG_URL      = vMainPopList(3,i)
                                BD_LNK_URL      = vMainPopList(4,i)
                                BD_RD_KBN       = vMainPopList(5,i)
                                BD_POP_W        = vMainPopList(6,i)
                                BD_POP_H        = vMainPopList(7,i)
                                BD_CLOSE        = vMainPopList(8,i)

                                If i <= 1 Then 
                                    BD_RD_KBN_NM = ""
                                    Select Case BD_RD_KBN
                                        Case "S"
                                            BD_RD_KBN_NM = "_self"
                                        Case "B"
                                            BD_RD_KBN_NM = "_blank"
                                    End Select 

                                    BD_CLOSE_NM = ""
                                    Select Case BD_CLOSE
                                        Case "0"
                                            BD_CLOSE_NM = "다시 열지 않음"
                                        Case "1"
                                            BD_CLOSE_NM = "오늘 하루 열지 않음"
                                    End Select 

                                    If Request.Cookies("MainSubLayerPop_" & i) <> "Y" Then 
                        %>
                                        <div id="MainSubLayerPop_<%=i%>" class="pop_cont">
                                            <% If BD_LNK_URL <> "" Then %>
                                                <!-- 링크가 있을 경우 Set S -->
                                                <% If BD_RD_KBN = "P" Then %>
                                                    <!-- 팝업일 경우 -->
                                                    <a href="javascript:window.open('<%=BD_LNK_URL%>');"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
                                                <% Else %>
                                                    <a href="<%=BD_LNK_URL%>" target="<%=BD_RD_KBN_NM%>"><img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>"></a>
                                                <% End If %>
                                                <!-- 링크가 있을 경우 Set E -->
                                            <% Else %>
                                                <!-- 링크가 없을 경우 Set S -->
                                                <img src="<%=BD_IMG_URL%>" title="<%=BD_BNR_NM%>">
                                                <!-- 링크가 없을 경우 Set E -->
                                            <% End If %>
                                            <div class="today">
                                                <button type="button" class="t_close" onclick="IfMainSubLayerClose('MainSubLayerPop_<%=i%>', '<%=BM_CLOSE%>');"><%=BD_CLOSE_NM%></button>
                                                <button type="button" class="close" onclick="IfMainSubLayerClose('MainSubLayerPop_<%=i%>', '');">닫기</button>
                                            </div>
                                            <div class="dim"></div>
                                        </div>
                        <% 
                                    End If 
                                End If 
                            Next 
                        %>
                    </div>
                </div>
            </div>
            <!-- 배너 2개짜리 Set E -->
        <% End If %>
        <!-- 세로 나열: 최대 2개만 노출 Set E -->
    <% End If %>
<% End If %>
<script type="text/javascript">
var IfMainLayerClose = function(pop_id, expires) {
    if (expires == '1') {
        setCookie(pop_id, 'Y', 1);
    } else if (expires == '0') {
        setCookie(pop_id, 'Y', 30);
    }

    $("#" + pop_id).hide();
};

var IfMainSubLayerClose = function(pop_id, expires) {
    if (expires == '1') {
        setCookie(pop_id, 'Y', 1);
    } else if (expires == '0') {
        setCookie(pop_id, 'Y', 30);
    }

    $("#" + pop_id).addClass("off");
    // $("#" + pop_id).hide();
    
    var LayerViewCnt = 0;
    $(".pop_cont").each(function() {
        if (!$(this).hasClass("off")) {
            LayerViewCnt++;
        }
    });

    if (LayerViewCnt == 0) {
        $("#doubleLayer").addClass("off");
    }

};
</script>
