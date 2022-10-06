<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 시대인재 2021 추석특강 > 원격LIVE (MO)
' 모듈기능 : 시대인재 단과 > 시대인재 2021 추석특강 > 원격LIVE (MO)
' 파 일 명 : live.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">

<!-- S : container -->
<div id="container">
	<div class="layout-container">
		<div class="content-layout">

			<h2 class="page-tit">시대인재 2021 추석특강</h2>

			<div class="board-layout">
				<div class="board-tab">
					<div class="tab-list mb20">
						<a href="https://pub.sdij.com/totalMobileSite/renew2019/aca/event/2009/default.asp">현장수업</a>
						<a href="javascript:void(0);" class="selected">원격LIVE</a>
					</div>

					<!-- S : 원격LIVE -->
					<div class="tab-content tab-on">
						<div class="board-tab">
							<div class="tab-list">
								<a href="javascript:void(0);" class="selected">국어</a>
								<a href="javascript:void(0);">수학</a>
								<a href="javascript:void(0);">영어</a>
								<a href="javascript:void(0);">사회탐구</a>
								<a href="javascript:void(0);">과학탐구</a>
							</div>
						
							<!-- S : 국어 강좌리스트 -->
							<div class="tab-content tab-on">
								<div class="board-lec">
									<% if true then '수강신청 가능  %>						
									<table>
										<tbody>
											<% for i = 1 to 3 %>
											<tr>
												<td class="lec-area">
													<div class="data-tit">
														[국어] 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브
													</div>
													<div class="data-info">
														<span>강기원</span>
														<span>국어</span>
													</div>
													<div class="data-info">
														<span>개강일</span>
														<span>2020-09-02(수)</span>
													</div>
													<div class="data-info">
														<span>라이브날짜/시간</span>
														<span>2020-09-02(수)14시 00분</span>
													</div>
												</td>

												<td class="price-area">
													<label class="form-checkbox">
														<input type="checkbox">
														<span class="ico ico-checkbox"></span>
														<span class="tit">가격</span>
														<span class="price">100,000원</span>
													</label>
												</td>
											</tr>
											<% next %>
											<tr>
												<td class="no-data">강좌가 없습니다.</td>
											</tr>
										</tbody>
									</table>
									<% Else '수강신청 불가능 %>
									<table>
										<tbody>
											<tr>
												<td class="no-data">수강신청은 PC 버전에서 가능합니다.</td>
											</tr>
										</tbody>
									</table>
									<% end if %>
								</div>
							</div>
							<!--// E : 국어 강좌리스트 -->

							<!-- S : 수학 강좌리스트 -->
							<div class="tab-content">
								<div class="board-lec">
									<% if true then '수강신청 가능  %>						
									<table>
										<tbody>
											<% for i = 1 to 3 %>
											<tr>
												<td class="lec-area">
													<div class="data-tit">
														[수학] 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브
													</div>
													<div class="data-info">
														<span>강기원</span>
														<span>수학</span>
													</div>
													<div class="data-info">
														<span>개강일</span>
														<span>2020-09-02(수)</span>
													</div>
													<div class="data-info">
														<span>라이브날짜/시간</span>
														<span>2020-09-02(수)14시 00분</span>
													</div>
												</td>

												<td class="price-area">
													<label class="form-checkbox">
														<input type="checkbox">
														<span class="ico ico-checkbox"></span>
														<span class="tit">가격</span>
														<span class="price">100,000원</span>
													</label>
												</td>
											</tr>
											<% next %>
											<tr>
												<td class="no-data">강좌가 없습니다.</td>
											</tr>
										</tbody>
									</table>
									<% Else '수강신청 불가능 %>
									<table>
										<tbody>
											<tr>
												<td class="no-data">수강신청은 PC 버전에서 가능합니다.</td>
											</tr>
										</tbody>
									</table>
									<% end if %>
								</div>
							</div>
							<!--// E : 수학 강좌리스트 -->

							<!-- S : 영어 강좌리스트 -->
							<div class="tab-content">
								<div class="board-lec">
									<% if true then '수강신청 가능  %>						
									<table>
										<tbody>
											<% for i = 1 to 3 %>
											<tr>
												<td class="lec-area">
													<div class="data-tit">
														[영어] 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브
													</div>
													<div class="data-info">
														<span>강기원</span>
														<span>영어</span>
													</div>
													<div class="data-info">
														<span>개강일</span>
														<span>2020-09-02(수)</span>
													</div>
													<div class="data-info">
														<span>라이브날짜/시간</span>
														<span>2020-09-02(수)14시 00분</span>
													</div>
												</td>

												<td class="price-area">
													<label class="form-checkbox">
														<input type="checkbox">
														<span class="ico ico-checkbox"></span>
														<span class="tit">가격</span>
														<span class="price">100,000원</span>
													</label>
												</td>
											</tr>
											<% next %>
											<tr>
												<td class="no-data">강좌가 없습니다.</td>
											</tr>
										</tbody>
									</table>
									<% Else '수강신청 불가능 %>
									<table>
										<tbody>
											<tr>
												<td class="no-data">수강신청은 PC 버전에서 가능합니다.</td>
											</tr>
										</tbody>
									</table>
									<% end if %>
								</div>
							</div>
							<!--// E : 영어 강좌리스트 -->

							<!-- S : 사회탐구 강좌리스트 -->
							<div class="tab-content">
								<div class="board-lec">
									<% if true then '수강신청 가능  %>						
									<table>
										<tbody>
											<% for i = 1 to 3 %>
											<tr>
												<td class="lec-area">
													<div class="data-tit">
														[사회탐구] 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브
													</div>
													<div class="data-info">
														<span>강기원</span>
														<span>사회탐구</span>
													</div>
													<div class="data-info">
														<span>개강일</span>
														<span>2020-09-02(수)</span>
													</div>
													<div class="data-info">
														<span>라이브날짜/시간</span>
														<span>2020-09-02(수)14시 00분</span>
													</div>
												</td>

												<td class="price-area">
													<label class="form-checkbox">
														<input type="checkbox">
														<span class="ico ico-checkbox"></span>
														<span class="tit">가격</span>
														<span class="price">100,000원</span>
													</label>
												</td>
											</tr>
											<% next %>
											<tr>
												<td class="no-data">강좌가 없습니다.</td>
											</tr>
										</tbody>
									</table>
									<% Else '수강신청 불가능 %>
									<table>
										<tbody>
											<tr>
												<td class="no-data">수강신청은 PC 버전에서 가능합니다.</td>
											</tr>
										</tbody>
									</table>
									<% end if %>
								</div>
							</div>
							<!--// E : 사회탐구 강좌리스트 -->

							<!-- S : 과학탐구 강좌리스트 -->
							<div class="tab-content">
								<div class="board-lec">
									<% if true then '수강신청 가능  %>						
									<table>
										<tbody>
											<% for i = 1 to 3 %>
											<tr>
												<td class="lec-area">
													<div class="data-tit">
														[과학탐구] 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브 강기원T 추석특강 라이브
													</div>
													<div class="data-info">
														<span>강기원</span>
														<span>과학탐구</span>
													</div>
													<div class="data-info">
														<span>개강일</span>
														<span>2020-09-02(수)</span>
													</div>
													<div class="data-info">
														<span>라이브날짜/시간</span>
														<span>2020-09-02(수)14시 00분</span>
													</div>
												</td>

												<td class="price-area">
													<label class="form-checkbox">
														<input type="checkbox">
														<span class="ico ico-checkbox"></span>
														<span class="tit">가격</span>
														<span class="price">100,000원</span>
													</label>
												</td>
											</tr>
											<% next %>
											<tr>
												<td class="no-data">강좌가 없습니다.</td>
											</tr>
										</tbody>
									</table>
									<% Else '수강신청 불가능 %>
									<table>
										<tbody>
											<tr>
												<td class="no-data">수강신청은 PC 버전에서 가능합니다.</td>
											</tr>
										</tbody>
									</table>
									<% end if %>
								</div>
							</div>
							<!--// E : 과학탐구강좌리스트 -->

							<div class="board-btn txt-right mt30">
								<input type="button" class="btn btn-mid btn-black" value="수강신청">
							</div> 

							<h4 class="table-tit">상품 안내/유의사항</h4>
							<div class="board-table">
								<table>
									<colgroup>
										<col style="width:180px;">
										<col style="width:auto;">
									</colgroup>
									<tbody>                                        
										<tr>
											<th scope="row">상품 안내</th>
											<td class="txt-left">라이브 상품</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!--// E : 상품 안내/유의사항 -->
						</div>
					</div>
					<!--// E : 원격LIVE -->
				</div>
			</div>
		</div>
	</div>
<div>
<!--// E : container -->

<script type="text/javascript">
$(function(){

});
</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"--> 