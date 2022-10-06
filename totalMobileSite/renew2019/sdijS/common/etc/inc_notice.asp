<%
'-----------------------------------------------------------------------
' 업 무 명 : Footer 공지사항 공통 리스트
' 모듈기능 : Footer 공지사항 공통 리스트
' 파 일 명 : inc_notice.asp
' 작성일자 : 2017/11/16
' 작 성 자 : 이재충
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------

'-----------------------------------------------------------------------
If NOTICE_CD <> "" Then
    arrParams = Array( _
        DbCon.makeParam("@CURRENT_PAGE", adInteger, adParamInput, 4, 1), _
        DbCon.makeParam("@PAGE_SIZE", adInteger, adParamInput, 4, 10), _
        DbCon.makeParam("@BD_CT_CD", adInteger, adParamInput, 4, NOTICE_CD), _
        DbCon.makeParam("@BD_CAMP_CD", adInteger, adParamInput, 4, Null), _
        DbCon.makeParam("@BD_OPEN_FLG", adChar, adParamInput, 1, "Y"), _
        DbCon.makeParam("@BD_DEL_FLG", adChar, adParamInput, 1, "N"), _
        DbCon.makeParam("@SEARCH_OPTION", adInteger, adParamInput, 4, Null), _
        DbCon.makeParam("@SEARCH_STRING",  adVarChar, adParamInput, 100, "") _
    )

    incNotiList = DbCon.ExecRsList("P_BRD_NOTICE_MAIN_LIST", adCmdStoredProc, arrParams, incNotiListCnt, DBSDIJBRD)
End If

noticeLink = ""
Select Case NOTICE_CD
    Case "103"  ' 시대인재 Books
        noticeLink = "/board/noti_dtl.asp?mcd=174"

    Case "104"  ' 시대인재
        noticeLink = "/academy/info/notice_detail.asp?mcd=134"

    Case "106"  ' 시대인재 ON
        noticeLink = "/board/noti_dtl.asp?mcd=116"


End Select

%>
<!-- 공지사항 Set s -->
<% If IsArray(incNotiList) Then %>
    <div class="notice_wrap">
        <h4>공지사항</h4>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <%
                    For n=0 To incNotiListCnt
                        NUM             = Trim(incNotiList(0, n))
                        BD_SEQ          = Trim(incNotiList(1, n))
                        BD_CT_CD        = Trim(incNotiList(2, n))
                        BD_TITLE        = Trim(incNotiList(3, n))
                        BD_REG_ID       = Trim(incNotiList(4, n))
                        BD_QUSTION      = Trim(incNotiList(5, n))
                        BD_VISIT_CNT    = Trim(incNotiList(6, n))
                        BD_SCRET_FLG    = Trim(incNotiList(7, n))
                        BD_NOTICE_FLG   = Trim(incNotiList(8, n))
                        BD_CAMP_CD      = Trim(incNotiList(9, n))
                        BD_OPEN_FLG     = Trim(incNotiList(10, n))
                        BD_DEL_FLG      = Trim(incNotiList(11, n))
                        BD_REG_DT       = Trim(incNotiList(12, n))
                        BD_UPD_DT       = Trim(incNotiList(13, n))
                        MM_MEM_NM       = Trim(incNotiList(14, n))
                        MENT_CNT        = Trim(incNotiList(15, n))
                        CT_NM           = Trim(incNotiList(16, n))
                        FILE_CNT        = Trim(incNotiList(17, n))
                        CM_CAMP_NM      = Trim(incNotiList(18, n))
                        MM_MEM_TYPE     = Trim(incNotiList(19, n))
                %>
                        <div class="swiper-slide">
                            <a href="<%=noticeLink%>&bseq=<%=BD_SEQ%>"><%=BD_TITLE%></a>
                        </div>
                <%
                    Next
                %>
            </div>
            <div class="notice_btn">
                <span class="notice_prev">이전</span>
                <span class="notice_next">다음</span>
            </div>
        </div>
    </div>
<% End If %>
<!-- 공지사항 Set e -->
<script type="text/javascript">
var notiSwiper = new Swiper('.notice_wrap .swiper-container', {
    direction: 'vertical',
    spaceBetween: 0,
    slidesPerView:1,
    centeredSlides: false,
    autoplay: 4000,
    autoplayDisableOnInteraction: true,
    simulateTouch: false,
    freemode: false,
    simulateTouch:false,
    touchAngle: 0,
    loop:true,
    shortSwipes: false,
    longSwipes: false,
    followFinger: false,
    touchratio:0,
    nextButton: '.notice_next',
    prevButton: '.notice_prev',
});
</script>