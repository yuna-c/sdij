<%
'sel_ct_cd    = "105" '카테고리 코드
'sel_open_flg = "Y" '비공개 사용 유무
'sel_del_flg  = "N" '삭제 유무
sel_camp_cd  = iif(fncRequestCookie("campus_loc") = "","", fncRequestCookie("campus_loc"))'캠퍼스코드

If sel_camp_cd = "" Then
    sel_camp_cd = "101"
End If

'sel_camp_cd  = blnak2Null(sel_camp_cd, "101")


' 재종반 공지리스트
arrParams = Array( _
  DbCon.makeParam("@CURRENT_PAGE", adInteger, adParamInput, 0, 1), _
  DbCon.makeParam("@PAGE_SIZE", adInteger, adParamInput, 0, 10), _
  DbCon.makeParam("@BD_CT_CD", adInteger, adParamInput, 0, 105), _
  DbCon.makeParam("@BD_CAMP_CD", adInteger, adParamInput, 0, blank2Null(null)), _
  DbCon.makeParam("@BD_OPEN_FLG", adChar, adParamInput, 1, "Y"), _
  DbCon.makeParam("@BD_DEL_FLG", adChar, adParamInput, 1, "N"), _
  DbCon.makeParam("@SEARCH_OPTION", adInteger, adParamInput, 0, ""), _
  DbCon.makeParam("@SEARCH_STRING",  adVarChar, adParamInput, 100, "") _
)

arrGNBNoticeList = DbCon.ExecRsList("P_BRD_NOTICE_MAIN_LIST", adCmdStoredProc, arrParams, 10, DBSDIJBRD)
' //재종반 공지리스트

' 단과공지
sel_ct_cd_notice = "104" ' 카테고리 코드 : 학원(대치)
sel_camp_cd_notice = iif(fncRequestCookie("campus_loc") = "","101", fncRequestCookie("campus_loc"))'캠퍼스코드
	If sel_camp_cd_notice = "102" Then
		sel_ct_cd_notice = "107" ' 카테고리 코드 : 학원(분당)
	End If

arrParams = Array( _
  DbCon.makeParam("@CURRENT_PAGE", adInteger, adParamInput, 0, 1), _
  DbCon.makeParam("@PAGE_SIZE", adInteger, adParamInput, 0, 10), _
  DbCon.makeParam("@BD_CT_CD", adInteger, adParamInput, 0, sel_ct_cd_notice), _
  DbCon.makeParam("@BD_CAMP_CD", adInteger, adParamInput, 0, blank2Null(null)), _
  DbCon.makeParam("@BD_OPEN_FLG", adChar, adParamInput, 1, "Y"), _
  DbCon.makeParam("@BD_DEL_FLG", adChar, adParamInput, 1, "N"), _
  DbCon.makeParam("@SEARCH_OPTION", adInteger, adParamInput, 0, ""), _
  DbCon.makeParam("@SEARCH_STRING",  adVarChar, adParamInput, 100, "") _
)

arrGNBACANoticeList = DbCon.ExecRsList("P_BRD_NOTICE_MAIN_LIST", adCmdStoredProc, arrParams, 10, DBSDIJBRD)
' //단과공지


%>


<%'-- 임시스타일입니다.%>
<style>
.nav.fr a:hover {font-weight:bold;}
</style>


<!-- S : wrap -->
<div id="wrap">
	<!-- S : header -->
	<div id="header">
		<!-- S : gnb -->
		<div class="gnb-area">
			<div class="content-layout float-area">
				<button class="btn-gnb"><span class="ico ico-menu">메뉴</span></button>

				<% if META_OG_URL="sdn" then '재종반 %>
				<h1 class="fl"><a href="/sdn/default.asp">시대인재 N재수종합</a></h1>
				<% ElseIf META_OG_URL="academy" then '단과반 %>
                    <% If sel_camp_cd = "101" Then %>
                        <h1 class="fl"><a href="/aca/">시대인재 단과 대치</a></h1>
                    <% ElseIf sel_camp_cd = "102" Then %>
                        <h1 class="fl"><a href="/aca/">시대인재 단과 분당</a></h1>
                    <% End If %>
				<% else %>
				<h1 class="fl"><a href="/">시대인재</a></h1>
				<% end if %>

				<div class="gnb fr">
					<ul class="float-area">
                        <% If COOK_ID = "" Then %>
						<li><a href="/member/sd2019/login.asp">로그인</a></li>
                        <% Else %>
						<li><!--span><%=COOK_NM%>님</span--> <a href="/member/sd2019/logout.asp">로그아웃</a></li>
                        <% End If %>
					</ul>
				</div>
			</div>
		</div>
		<!--// E : gnb -->



		<% If META_OG_URL="sdn" Then '재종반 %>

		<!-- S : nav -->
		<div class="nav-area">
			<div class="tit-layout float-area">
				<div class="fl">
					<div class="notice">
						<h4 class="dep-tit">공지</h4>
						<ul class="notice-list">
							<%
							If IsArray(arrGNBNoticeList) Then
								If ubound(arrGNBNoticeList, 2)>5 Then
									itemLength = 5
								Else
									itemLength = ubound(arrGNBNoticeList, 2)
								End If


								For lj=0 To itemLength
							%>
							<li><a href="/sdn/notice_detail.asp?bseq=<%=Trim(arrGNBNoticeList(1, lj))%>&page=1" class="table_link"><%=cutString(Trim(arrGNBNoticeList(3, lj)), 15)%></a>
							<%
								Next
							Else
							%>
							<li>등록된 공지가 없습니다.</li>
							<%
							End If
							%>
						</ul>
					</div>
					<!-- <div class="news-letter">
						<h4 class="dep-tit">Newsletter</h4>
						<label class="input-search">
							<input type="text" class="input-text" placeholder="Your Email Address">
							<input type="submit" class="btn btn-xs btn-darkgray" value="ok">
						</label>
					</div> -->
				</div>
				<div class="nav fr">
					<dl>
						<dt class="dep-tit">재종반 소개</dt>
						<dd><a href="/sdn/jj_curri.asp">커리큘럼</a></dd>
						<dd><a href="/sdn/jj_library.asp">부엉이라이브러리</a></dd>
						<dd><a href="/sdn/jj_exam.asp">수능모의평가</a></dd>
						<dd><a href="javascript:alert('미작업');">만점구조시스템*</a></dd>
					</dl>
					<dl>
						<dt class="dep-tit">재종반 콘텐츠</dt>
						<dd><a href="/sdn/apply/qual_list.asp">모집요강</a></dd>
						<dd><a href="/sdn/apply/public/2019/app_jayeon.asp">응시원서접수</a></dd>
						<dd><a href="/sdn/board/exam_list.asp">입시 R&amp;D</a></dd>
						<dd><a href="/sdn/board/jjmtm_list.asp">1:1 질의응답</a></dd>
						<dd><a href="/sdn/monthly/2018/grade/">부엉이포스트</a></dd>
						<dd><a href="/sdn/food/default.asp">급식</a></dd>
						<!-- <dd><a href="/sdn/jj_honor.asp">명예의전당</a></dd> -->
						<dd><a href="/sdn/brief/brief_list.asp">설명회</a></dd>
						<dd><a href="/sdn/jj_titmetable.asp">시간표</a></dd>
						<dd><a href="/sdn/jj_teacher.asp">강사진</a></dd>
					</dl>
					<dl>
						<dt class="dep-tit">학원소개</dt>
						<dd><a href="javascript:alert('미수급');">학원소개*</a></dd>
						<dd><a href="javascript:alert('미수급');">학원시설*</a></dd>
						<dd><a href="/sdn/notice_List.asp">공지사항</a></dd>
						<dd><a href="/sdn/map.asp">오시는길</a></dd>
						<dd><a href="/recruit/sd2019/emp/default.asp">인재채용--</a></dd>
					</dl>
				</div>
			</div>
		</div>
		<!--// E : nav -->

		<% Else %>

		<!-- S : nav -->
		<div class="nav-area">
			<div class="tit-layout float-area">
				<div class="fl">
					<div class="notice">
						<h4 class="dep-tit">공지</h4>
						<ul class="notice-list">
							<%
							If IsArray(arrGNBACANoticeList) Then
								If ubound(arrGNBACANoticeList, 2)>5 Then
									itemLength = 5
								Else
									itemLength = ubound(arrGNBACANoticeList, 2)
								End If


								For lj=0 To itemLength
							%>
							<li><a href="/aca/notice_detail.asp?bseq=<%=Trim(arrGNBACANoticeList(1, lj))%>&page=1" class="table_link"><%=cutString(Trim(arrGNBACANoticeList(3, lj)), 15)%></a>
							<%
								Next
							Else
							%>
							<li>등록된 공지가 없습니다.</li>
							<%
							End If
							%>
						</ul>
					</div>
					<!--div class="news-letter">
						<h4 class="dep-tit">Newsletter</h4>
						<label class="input-search">
							<input type="text" class="input-text" placeholder="Your Email Address">
							<input type="submit" class="btn btn-xs btn-darkgray" value="ok">
						</label>
					</div-->
				</div>
				<div class="nav fr">
					<dl>
						<dt class="dep-tit">시대인재</dt>
						<dd><a href="/aca/schd/schd_view.asp">시간표</a></dd>
						<dd><a href="/aca/brief/brief_list.asp">설명회</a></dd>
						<dd><a href="/aca/csti/default.asp">컨설팅</a></dd>
						<dd><a href="/aca/board/exam_list.asp">입시R&amp;D</a></dd>
						<dd><a href="/aca/svv/2018/grade/">부엉이포스트</a></dd>
						<!--dd><a href="#">1:1 질의응답</a></dd-->
					</dl>
					<dl>
						<dt class="dep-tit">학원 소개</dt>
						<dd><a href="javascript:alert('준비중입니다');">학원소개</a></dd>
						<dd><a href="javascript:alert('준비중입니다');">학원시설</a></dd>
						<dd><a href="/aca/notice_list.asp">공지사항</a></dd>
						<dd><a href="/aca/info/map.asp">오시는길</a></dd>
						<dd><a href="/recruit/sd2019/emp/default.asp">인재채용</a></dd>
					</dl>
					<dl>
						<dt class="dep-tit">회원관리</dt>
						
                        <% If COOK_ID = "" Then %>
						<dd><a href="/member/sd2019/login.asp">로그인</a></dd>
						<dd><a href="/member/sd2019/login.asp">회원가입</a></dd>
						<% Else %>
						<dd> <a href="/member/sd2019/logout.asp">로그아웃</a></dd>
						<dd><a href="/member/sd2019/regist_modify_login.asp">정보수정</a></dd>
						<% End If%>

					</dl>
				</div>
			</div>
		</div>
		<!--// E : nav -->

		<% End If %>

	</div>
	<!--// E : header -->