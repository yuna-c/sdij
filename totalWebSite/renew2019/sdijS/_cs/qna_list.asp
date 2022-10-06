
<%
'-----------------------------------------------------------------------
' 업 무 명 : 고객센터 > 메인 > qna_list
' 모듈기능 : 고객센터 > 메인 > qna_list
' 파 일 명 : qna_list.asp
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
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mt60">
            <div class="content-layout board-layout">
                <h2 class="dep1-tit">
                    1:1 문의 내역
                    <small>궁금하신 사항은 1:1 문의를 통해 해결하세요</small>
                </h2>

				<div class="board-search float-area">
					<div class="btn-area fr">
						<a href="qna_write.asp" class="btn btn-sm2 btn-black">문의하기</a>
					</div>
				</div>

				<!-- S : board-list : 게시판 리스트 -->
				<div class="board-list">
					<table>
						<colgroup>
							<col style="width:80px;">
							<col style="width:110px;">
							<col style="width:auto;">
							<col style="width:100px;">
							<col style="width:80px;">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>유형</th>
								<th>제목</th>
								<th>작성일</th>
								<th>답변상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>회원가입</td>
								<td class="tit-box">
									<a href="qna_view.asp" class="tit-txt tit-ico">정보수정이안되요</a>
								</td>
								<td>2019-01-01</td>
								<td>답변대기</td>
							</tr>
							<tr>
								<td>2</td>
								<td>회원가입</td>
								<td class="tit-box">
									<a href="qna_view.asp" class="tit-txt tit-ico">회원가입은 어디서하나요?</a>
								</td>
								<td>2019-01-01</td>
								<td class="color-black">답변완료</td>
							</tr>
							<!-- S : 문의 내역이 없을 경우 -->
							<tr class="no-data">
								<td colspan="5" >문의 내역이 없습니다.</td>
							</tr>
							<!--// E : 문의 내역이 없을 경우 -->
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
			</div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

//-->
</script>
<!--// E : 페이지별 스크립트 -->

<style>

</style>
