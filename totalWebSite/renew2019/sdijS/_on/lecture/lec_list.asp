<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 강좌 > 강좌리스트
' 모듈기능 : 강좌 > 강좌리스트
' 파 일 명 : lec_list.asp
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
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

<!-- S : container -->
<div id="container">
	<!-- S : 컨텐츠 영역 -->
	<div class="layout-container">
		<div class="content-layout">
			<div class="board-layout mt50">

				<!-- S : 학년 > 과목 > 단계 > 세부과목 -->
				<h4 class="dep3-tit">학년 &gt; 과목 &gt; 단계 &gt; 세부과목</h4>

				<!-- S : 학년 탭 -->
				<ul class="dep1-tab">
					<li class="selected"><a href="javascript:void(0)">고3</a></li>
					<li><a href="javascript:void(0)">고2/1</a></li>
				</ul>
				<!--// E : 학년 탭 -->

				<!-- S : 과목 탭 -->
				<ul class="dep2-tab">
					<li class="selected"><a href="javascript:void(0)">전체</a></li>
					<li><a href="javascript:void(0)">국어</a></li>
					<li><a href="javascript:void(0)">수학</a></li>
					<li><a href="javascript:void(0)">영어</a></li>
					<li><a href="javascript:void(0)">물리</a></li>
					<li><a href="javascript:void(0)">화학</a></li>
					<li><a href="javascript:void(0)">생명과학</a></li>
					<li><a href="javascript:void(0)">지구과학</a></li>
				</ul>
				<!--// E : 과목 탭 -->

				<!-- S : 단계 탭 -->
				<div class="dep3-tab">
					<a href="javascript:void(0)" class="selected">전체</a>
					<a href="javascript:void(0)">개념완성</a>
					<a href="javascript:void(0)">서바이벌</a>
					<a href="javascript:void(0)">리바이벌</a>
					<a href="javascript:void(0)">ATG</a>
				</div>
				<!--// E : 단계 탭 -->

				<!-- S : 세부과목 탭 -->
				<div class="dep3-tab">
					<a href="javascript:void(0)" class="selected">전체</a>
					<a href="javascript:void(0)">문법</a>
					<a href="javascript:void(0)">문학</a>
					<a href="javascript:void(0)">비문학</a>
				</div>
				<!--// E : 세부과목 탭 -->

				<!-- S : 강좌 리스트 -->
				<div class="board-lec">
					<h4 class="lec-tit">
						<span>[카테고리]</span> 카테고리명 관리자강사별 관리 
					</h4>

					<table>
						<colgroup>
							<col style="width:80px;">
							<col style="width:80px;">
							<col style="width:auto;">
							<col style="width:80px;">
							<col style="width:160px;">
						</colgroup>
						<tbody>
							<% for i = 1 to 5 %>
							<tr>
								<td class="txt-area"><a href="javascript:void(0)" target="_blank">김은양</a></td>
								<td class="txt-area">고3 / N수개념</td>
								<td class="lec-area">
									<div class="data-sticker">
										<span class="sticker-lec sticker-red">new</span>
										<span class="sticker-lec sticker-orange">best</span>
										<span class="sticker-lec sticker-green">추천</span>
										<span class="sticker-lec sticker-gray">완강</span>
									</div>
									<div class="data-tit">
										<a href="javascript:void(0)">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
									</div>
									<div class="data-info">
										<span>강좌구성 05강</span>
										<span>수강기간 135일</span>
									</div>
									<div class="data-txt">
										강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명
									</div>
								</td>
								<td class="btn-area">
									<input type="button" class="btn" value="OT">
									<input type="button" class="btn" value="맛보기">
									<input type="button" class="btn" value="교재샘플">
								</td>
								<% if i = 1 then '교재 PDF 제공 시  %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>

									<div>
										<span class="tit">교재</span>
										<span class="price">PDF 제공</span>
									</div>
								</td>
								<% else %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">교재</span>
										<span class="price">
											100,000원
										</span>
										<em>(총 3권)</em>
									</label>
								</td>
								<% end if %>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>

				<div class="board-btn txt-right mt30">
					<input type="button" class="btn btn-mid" value="장바구니">
					<input type="button" class="btn btn-mid btn-black" value="바로구매">
				</div>
				<!--// E : 강좌 리스트 -->
				<!--// E : 학년 > 과목 > 단계 > 세부과목 -->


				<!-- S : 학년 > 단계 > 과목 > 세부과목 -->
				<h4 class="dep3-tit">학년 &gt; 단계 &gt; 과목 &gt; 세부과목</h4>

				<!-- S : 학년 탭 -->
				<ul class="dep1-tab">
					<li class="selected"><a href="javascript:void(0)">고3</a></li>
					<li><a href="javascript:void(0)">고2/1</a></li>
				</ul>
				<!--// E : 학년 탭 -->

				<!-- S : 단계 탭 -->
				<ul class="dep2-tab">
					<li><a href="javascript:void(0)" class="selected">전체</a></li>
					<li><a href="javascript:void(0)">개념완성</a></li>
					<li><a href="javascript:void(0)">서바이벌</a></li>
					<li><a href="javascript:void(0)">리바이벌</a></li>
					<li><a href="javascript:void(0)">ATG</a></li>
				</ul>
				<!--// E : 단계 탭 -->

				<!-- S : 과목 탭 -->
				<div class="dep3-tab">
					<a href="javascript:void(0)" class="selected">전체</a>
					<a href="javascript:void(0)">국어</a>
					<a href="javascript:void(0)">수학</a>
					<a href="javascript:void(0)">영어</a>
					<a href="javascript:void(0)">물리</a>
					<a href="javascript:void(0)">화학</a>
					<a href="javascript:void(0)">생명과학</a>
					<a href="javascript:void(0)">지구과학</a>
				</div>
				<!--// E : 과목 탭 -->

				<!-- S : 세부과목 탭 -->
				<div class="dep3-tab">
					<a href="javascript:void(0)" class="selected">전체</a>
					<a href="javascript:void(0)">문법</a>
					<a href="javascript:void(0)">문학</a>
					<a href="javascript:void(0)">비문학</a>
				</div>
				<!--// E : 세부과목 탭 -->

				<!-- S : 강좌 리스트 -->
				<div class="board-lec">
					<h4 class="lec-tit">
						<span>[카테고리]</span> 카테고리명 관리자강사별 관리 
					</h4>

					<table>
						<colgroup>
							<col style="width:80px;">
							<col style="width:80px;">
							<col style="width:auto;">
							<col style="width:80px;">
							<col style="width:160px;">
						</colgroup>
						<tbody>
							<% for i = 1 to 5 %>
							<tr>
								<td class="txt-area"><a href="javascript:void(0)" target="_blank">김은양</a></td>
								<td class="txt-area">고3 / N수개념</td>
								<td class="lec-area">
									<div class="data-sticker">
										<span class="sticker-lec sticker-red">new</span>
										<span class="sticker-lec sticker-orange">best</span>
										<span class="sticker-lec sticker-green">추천</span>
										<span class="sticker-lec sticker-gray">완강</span>
									</div>
									<div class="data-tit">
										<a href="javascript:void(0)">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
									</div>
									<div class="data-info">
										<span>강좌구성 05강</span>
										<span>수강기간 135일</span>
									</div>
									<div class="data-txt">
										강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명
									</div>
								</td>
								<td class="btn-area">
									<input type="button" class="btn" value="OT">
									<input type="button" class="btn" value="맛보기">
									<input type="button" class="btn" value="교재샘플">
								</td>
								<% if i = 1 then '교재 PDF 제공 시  %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>

									<div>
										<span class="tit">교재</span>
										<span class="price">PDF 제공</span>
									</div>
								</td>
								<% else %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">교재</span>
										<span class="price">
											100,000원
										</span>
										<em>(총 3권)</em>
									</label>
								</td>
								<% end if %>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>

				<div class="board-btn txt-right mt30">
					<input type="button" class="btn btn-mid" value="장바구니">
					<input type="button" class="btn btn-mid btn-black" value="바로구매">
				</div>
				<!--// E : 강좌 리스트 -->
				<!--// E : 학년 > 단계 > 과목 > 세부과목 -->

				<!-- S : 선생님 > 세부과목 > 단계 -->
				<h4 class="dep3-tit">선생님 &gt; 세부과목 &gt; 단계</h4>

				<!-- S : 선생님 탭 -->
				<ul class="dep1-tab">
					<li class="selected"><a href="javascript:void(0)">김은양</a></li>
					<li><a href="javascript:void(0)">강기원</a></li>
					<li><a href="javascript:void(0)">박종민</a></li>
					<li><a href="javascript:void(0)">엄소연</a></li>
				</ul>
				<!--// E : 선생님 탭 -->

				<!-- S : 세부과목 탭 -->
				<ul class="dep2-tab">
					<li><a href="javascript:void(0)" class="selected">전체</a></li>
					<li><a href="javascript:void(0)">문법</a></li>
					<li><a href="javascript:void(0)">문학</a></li>
					<li><a href="javascript:void(0)">비문학</a></li>
				</ul>
				<!--// E : 세부과목 탭 -->

				<!-- S : 단계 탭 -->
				<div class="dep3-tab">
					<a href="javascript:void(0)" class="selected">전체</a>
					<a href="javascript:void(0)">개념완성</a>
					<a href="javascript:void(0)">서바이벌</a>
					<a href="javascript:void(0)">리바이벌</a>
					<a href="javascript:void(0)">ATG</a>
				</div>
				<!--// E : 단계 탭 -->

				<!-- S : 강좌 리스트 -->
				<div class="board-lec">
					<h4 class="lec-tit">
						<span>[카테고리]</span> 카테고리명 관리자강사별 관리 
					</h4>

					<table>
						<colgroup>
							<col style="width:80px;">
							<col style="width:80px;">
							<col style="width:auto;">
							<col style="width:80px;">
							<col style="width:160px;">
						</colgroup>
						<tbody>
							<% for i = 1 to 5 %>
							<tr>
								<td class="txt-area"><a href="javascript:void(0)" target="_blank">김은양</a></td>
								<td class="txt-area">고3 / N수개념</td>
								<td class="lec-area">
									<div class="data-sticker">
										<span class="sticker-lec sticker-red">new</span>
										<span class="sticker-lec sticker-orange">best</span>
										<span class="sticker-lec sticker-green">추천</span>
										<span class="sticker-lec sticker-gray">완강</span>
									</div>
									<div class="data-tit">
										<a href="javascript:void(0)">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
									</div>
									<div class="data-info">
										<span>강좌구성 05강</span>
										<span>수강기간 135일</span>
									</div>
									<div class="data-txt">
										강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명
									</div>
								</td>
								<td class="btn-area">
									<input type="button" class="btn" value="OT">
									<input type="button" class="btn" value="맛보기">
									<input type="button" class="btn" value="교재샘플">
								</td>
								<% if i = 1 then '교재 PDF 제공 시  %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>

									<div>
										<span class="tit">교재</span>
										<span class="price">PDF 제공</span>
									</div>
								</td>
								<% else %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">교재</span>
										<span class="price">
											100,000원
										</span>
										<em>(총 3권)</em>
									</label>
								</td>
								<% end if %>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>

				<div class="board-btn txt-right mt30">
					<input type="button" class="btn btn-mid" value="장바구니">
					<input type="button" class="btn btn-mid btn-black" value="바로구매">
				</div>
				<!--// E : 강좌 리스트 -->
				<!--// E : 선생님 > 세부과목 > 단계 -->

				<!-- S : 선생님 > 단계 > 세부과목 -->
				<h4 class="dep3-tit">선생님 &gt; 단계 &gt; 세부과목</h4>

				<!-- S : 선생님 탭 -->
				<ul class="dep1-tab">
					<li class="selected"><a href="javascript:void(0)">김은양</a></li>
					<li><a href="javascript:void(0)">강기원</a></li>
					<li><a href="javascript:void(0)">박종민</a></li>
					<li><a href="javascript:void(0)">엄소연</a></li>
				</ul>
				<!--// E : 선생님 탭 -->

				<!-- S : 단계 탭 -->
				<ul class="dep2-tab">
					<li><a href="javascript:void(0)" class="selected">전체</a></li>
					<li><a href="javascript:void(0)">개념완성</a></li>
					<li><a href="javascript:void(0)">서바이벌</a></li>
					<li><a href="javascript:void(0)">리바이벌</a></li>
					<li><a href="javascript:void(0)">ATG</a></li>
				</ul>
				<!--// E : 단계 탭 -->

				<!-- S : 세부과목 탭 -->
				<div class="dep3-tab">
					<a href="javascript:void(0)" class="selected">전체</a>
					<a href="javascript:void(0)">문법</a>
					<a href="javascript:void(0)">문학</a>
					<a href="javascript:void(0)">비문학</a>
				</div>
				<!--// E : 세부과목 탭 -->
				<!--// E : 단계 탭 -->

				<!-- S : 강좌 리스트 -->
				<div class="board-lec">
					<h4 class="lec-tit">
						<span>[카테고리]</span> 카테고리명 관리자강사별 관리 
					</h4>

					<table>
						<colgroup>
							<col style="width:80px;">
							<col style="width:80px;">
							<col style="width:auto;">
							<col style="width:80px;">
							<col style="width:160px;">
						</colgroup>
						<tbody>
							<% for i = 1 to 5 %>
							<tr>
								<td class="txt-area"><a href="javascript:void(0)" target="_blank">김은양</a></td>
								<td class="txt-area">고3 / N수개념</td>
								<td class="lec-area">
									<div class="data-sticker">
										<span class="sticker-lec sticker-red">new</span>
										<span class="sticker-lec sticker-orange">best</span>
										<span class="sticker-lec sticker-green">추천</span>
										<span class="sticker-lec sticker-gray">완강</span>
									</div>
									<div class="data-tit">
										<a href="javascript:void(0)">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</a>
									</div>
									<div class="data-info">
										<span>강좌구성 05강</span>
										<span>수강기간 135일</span>
									</div>
									<div class="data-txt">
										강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명강좌설명
									</div>
								</td>
								<td class="btn-area">
									<input type="button" class="btn" value="OT">
									<input type="button" class="btn" value="맛보기">
									<input type="button" class="btn" value="교재샘플">
								</td>
								<% if i = 1 then '교재 PDF 제공 시  %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>

									<div>
										<span class="tit">교재</span>
										<span class="price">PDF 제공</span>
									</div>
								</td>
								<% else %>
								<td class="price-area">
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">강좌</span>
										<span class="price">100,000원</span>
									</label>
									<label class="form-checkbox">
										<input type="checkbox">
										<span class="ico ico-checkbox"></span>
										<span class="tit">교재</span>
										<span class="price">
											100,000원
										</span>
										<em>(총 3권)</em>
									</label>
								</td>
								<% end if %>
							</tr>
							<% next %>
						</tbody>
					</table>
				</div>

				<div class="board-btn txt-right mt30">
					<input type="button" class="btn btn-mid" value="장바구니">
					<input type="button" class="btn btn-mid btn-black" value="바로구매">
				</div>
				<!--// E : 강좌 리스트 -->
				<!--// E : 선생님 > 단계 > 세부과목 -->
			</div>
		</div>
	</div>
	<!--// E : 컨텐츠 영역 -->
</div>
<!--// E : container -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
$(function(){

});
</script>
<!--// E : 페이지별 스크립트 -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->