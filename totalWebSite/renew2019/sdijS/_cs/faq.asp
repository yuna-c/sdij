<!--include virtual="/totalWebSite/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 고객센터 > 메인 > FAQ
' 모듈기능 : 고객센터 > 메인 > FAQ
' 파 일 명 : faq.asp
' 작성일자 :
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------





'------------------------------
' VARS
'------------------------------






'------------------------------
' QUERY
'------------------------------





'------------------------------
' ETC
'------------------------------






%>

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/cs.css?ver=<%=now()%>">
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
			<!-- S : SNB -->
			<!--#include virtual="/totalWebSite/renew2019/sdijS/_mypage/inc.snb.asp"-->
			<!--// E : SNB -->
            <div class="content-layout board-layout">
                <h2 class="dep1-tit">
                    시대인재 FAQ
                    <small>찾으시는 답변이 없으면 1:1 문의를 이용해 주세요</small>
                </h2>

                <!-- S : FAQ검색창 -->
				<div class="gray-box faq">
	                <div class="search-faq">
	                    <div class="search-area white">
	                        <input type="text" placeholder="추가하고 싶은 강좌를 검색해보세요.">
	                        <button type="button" class="btn-search"><span class="ico ico-search2">검색하기</span></button>
	                    </div>
	                    <div class="hash-area mt10">
	                        <span class="sticker-faq mr10">추천검색어</span>
	                        <a href="#" class="hash-txt">#강의듣는법</a>
							<a href="#" class="hash-txt">#A.Pass</a>
							<a href="#" class="hash-txt">#월결제</a>
							<a href="#" class="hash-txt">#서바이벌</a>
							<a href="#" class="hash-txt">#쇼컷</a>
	                    </div>
	                </div>
				</div>
				<!--// E : FAQ검색창 -->

				<!-- S : dep2-tab -->
				<ul class="dep2-tab faq mt20">
					<li class="selected">
						<a href="#" class="tab-a">
						 <span class="ico ico-pass block m-auto"></span>
							프리패스
						</a>
					</li>
					<li>
						<a href="#" class="tab-a">
						 <span class="ico ico-video block m-auto"></span>
							강좌
						</a>
					</li>
					<li>
						<a href="#" class="tab-a">
						 <span class="ico ico-textbook block m-auto"></span>
							교재
						</a>
					</li>
					<li>
						<a href="#" class="tab-a">
						 <span class="ico ico-etc block m-auto"></span>
							기타
						</a>
					</li>
				</ul>
				<!--// E : dep2-tab -->

				<!-- S : board-list : 게시판 리스트 -->
				<div class="board-list accordion">
					<table>
						<colgroup>
							<col style="width:80px;">
							<col style="width:110px;">
							<col style="width:auto;">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>유형</th>
								<th>제목</th>
							</tr>
						</thead>
						<tbody>
							<% for i = 1 to 10 '10줄 노출 %>
							<tr class="title">
								<td><% = i %></td>
								<td>
									교재구성
								</td>
								<td><span class="color-darkgray block txt-left"><a href="javascript:void(0)">교재관련 자주하는 질문 타이틀 입니다.</a></span></td>
							</tr>
							<tr class="content">
								<td>&nbsp;</td>
								<td class="circle-faq"></td>
								<td>
									<div class="color-black txt-left">
										교재 구성에관한 답변입니다. 교재 구성에관한 답변입니다. 교재 구성에관한 답변입니다.<br> 교재 구성에관한 답변입니다. 교재 구성에관한 답변입니다.
									</div>
								</td>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>
				<!--// E : board-list : 게시판 리스트 -->

				<!-- S : board-pager : 페이지 버튼 -->
				<div class="board-pager">
					<a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
					<a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>

					<div class="pager-num">
						<a href="javascript:void(0);" class="on">1</a>
						<a href="javascript:void(0);">2</a>
						<a href="javascript:void(0);">3</a>
						<a href="javascript:void(0);">4</a>
						<a href="javascript:void(0);">5</a>
						<a href="javascript:void(0);">6</a>
						<a href="javascript:void(0);">7</a>
						<a href="javascript:void(0);">8</a>
						<a href="javascript:void(0);">9</a>
						<a href="javascript:void(0);">10</a>
					</div>

					<a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
					<a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
				</div>
				<!--// E : board-pager : 페이지 버튼 -->

				<div class="black-box faq">
					<ul>
						<li>
							<span class="data-tit">고객센터</span>
							<span class="data-txt">1:1 문의</span>
							<a href="qna_write.asp"><span class="data-sub">1:1 문의하기 ></span></a>
							<a href="qna_list.asp"><span class="data-sub">1:1 문의내역 ></span></a>
						</li>
						<li>
							<span class="data-tit">시대인재S</span>
							<span class="data-txt">공지사항</span>
							<a href="#"><span class="data-sub">공지사항 전체보기 ></span></a>
						</li>
						<li class="border-none">
							<span class="data-tit">시대인재S 고객센터</span>
							<span class="data-txt">1234-5678</span>
							<span class="data-sub">평일 10:00 - 18:00 (주말/공휴일 휴무)</span>
						</li>
					</ul>
				</div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">

</script>
<!--// E : 페이지별 스크립트 -->
