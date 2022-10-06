<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 2020 시대인재 추석특강 > 비대면 라이브 수업
' 모듈기능 : 시대인재 단과 > 2020 시대인재 추석특강 > 비대면 라이브 수업
' 파 일 명 : live.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">

<!-- S : container -->
<div class="layout-container">
	<div class="page-loc float-area">
		<div class="fl">
			<a href="javascript:history.back();">&lt; Back</a>
		</div>
	</div>

	<h2 class="page-tit">시대인재 2021 추석특강</h2>

	<div class="board-layout">
		<div class="board-tab">
			<div class="tab-list mb20">
				<a href="/aca/event/2009/default.asp">현장수업</a>
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
							<table>
								<colgroup>
									<col style="width:120px;">
									<col style="width:80px;">
									<col style="width:auto;">
									<col style="width:140px;">
									<col style="width:120px;">
									<col style="width:140px;">
								</colgroup>
								<thead>
									<tr>
										<th>과목</th>
										<th>강사</th>
										<th>수업명</th>
										<th>라이브날짜/시간</th>
										<th>개강일</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody>
									<% for i = 1 to 5 %>
									<tr>
										<td class="txt-area">국어</td>
										<td class="txt-area">강기원</td>
										<td class="lec-area">
											<div class="data-tit">
												<a href="javascript:void(0)">강기원T 추석특강 라이브</a>
											</div>
										</td>            
										<td class="txt-area">2020-09-02(수)<br>14시 00분</td>     
										<td class="txt-area">2020-09-02(수)</td>
										<td class="price-area">
											<label class="form-checkbox">
												<input type="checkbox">
												<span class="ico ico-checkbox"></span>
												<span class="price">100,000원</span>
											</label>
										</td>
									</tr>
									<% next %>
								</tbody>
							</table>
						</div>
					</div>
					<!--// E : 국어 강좌리스트 -->

					<!-- S : 수학 강좌리스트 -->
					<div class="tab-content">
						<div class="board-lec">
							<table>
								<colgroup>
									<col style="width:120px;">
									<col style="width:80px;">
									<col style="width:auto;">
									<col style="width:140px;">
									<col style="width:120px;">
									<col style="width:140px;">
								</colgroup>
								<thead>
									<tr>
										<th>과목</th>
										<th>강사</th>
										<th>수업명</th>
										<th>라이브날짜/시간</th>
										<th>개강일</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody>
									<% for i = 1 to 5 %>
									<tr>
										<td class="txt-area">수학(가)</td>
										<td class="txt-area">강기원</td>
										<td class="lec-area">
											<div class="data-tit">
												<a href="javascript:void(0)">강기원T 추석특강 라이브</a>
											</div>
										</td>            
										<td class="txt-area">2020-09-02(수)<br>14시 00분</td>     
										<td class="txt-area">2020-09-02(수)</td>
										<td class="price-area">
											<label class="form-checkbox">
												<input type="checkbox">
												<span class="ico ico-checkbox"></span>
												<span class="price">100,000원</span>
											</label>
										</td>
									</tr>
									<% next %>
								</tbody>
							</table>
						</div>
					</div>
					<!--// E : 수학 강좌리스트 -->

					<!-- S : 영어 강좌리스트 -->
					<div class="tab-content">
						<div class="board-lec">
							<table>
								<colgroup>
									<col style="width:120px;">
									<col style="width:80px;">
									<col style="width:auto;">
									<col style="width:140px;">
									<col style="width:120px;">
									<col style="width:140px;">
								</colgroup>
								<thead>
									<tr>
										<th>과목</th>
										<th>강사</th>
										<th>수업명</th>
										<th>라이브날짜/시간</th>
										<th>개강일</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody>
									<% for i = 1 to 5 %>
									<tr>
										<td class="txt-area">영어</td>
										<td class="txt-area">강기원</td>
										<td class="lec-area">
											<div class="data-tit">
												<a href="javascript:void(0)">강기원T 추석특강 라이브</a>
											</div>
										</td>            
										<td class="txt-area">2020-09-02(수)<br>14시 00분</td>     
										<td class="txt-area">2020-09-02(수)</td>
										<td class="price-area">
											<label class="form-checkbox">
												<input type="checkbox">
												<span class="ico ico-checkbox"></span>
												<span class="price">100,000원</span>
											</label>
										</td>
									</tr>
									<% next %>
								</tbody>
							</table>
						</div>
					</div>
					<!--// E : 영어 강좌리스트 -->

					<!-- S : 사회탐구 강좌리스트 -->
					<div class="tab-content">
						<div class="board-lec">
							<table>
								<colgroup>
									<col style="width:120px;">
									<col style="width:80px;">
									<col style="width:auto;">
									<col style="width:140px;">
									<col style="width:120px;">
									<col style="width:140px;">
								</colgroup>
								<thead>
									<tr>
										<th>과목</th>
										<th>강사</th>
										<th>수업명</th>
										<th>라이브날짜/시간</th>
										<th>개강일</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody>
									<% for i = 1 to 5 %>
									<tr>
										<td class="txt-area">사탐</td>
										<td class="txt-area">강기원</td>
										<td class="lec-area">
											<div class="data-tit">
												<a href="javascript:void(0)">강기원T 추석특강 라이브</a>
											</div>
										</td>            
										<td class="txt-area">2020-09-02(수)<br>14시 00분</td>     
										<td class="txt-area">2020-09-02(수)</td>
										<td class="price-area">
											<label class="form-checkbox">
												<input type="checkbox">
												<span class="ico ico-checkbox"></span>
												<span class="price">100,000원</span>
											</label>
										</td>
									</tr>
									<% next %>
								</tbody>
							</table>
						</div>
					</div>
					<!--// E : 사회탐구 강좌리스트 -->

					<!-- S : 과학탐구 강좌리스트 -->
					<div class="tab-content">
						<div class="board-lec">
							<table>
								<colgroup>
									<col style="width:120px;">
									<col style="width:80px;">
									<col style="width:auto;">
									<col style="width:140px;">
									<col style="width:120px;">
									<col style="width:140px;">
								</colgroup>
								<thead>
									<tr>
										<th>과목</th>
										<th>강사</th>
										<th>수업명</th>
										<th>라이브날짜/시간</th>
										<th>개강일</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody>
									<% for i = 1 to 5 %>
									<tr>
										<td class="txt-area">과탐</td>
										<td class="txt-area">강기원</td>
										<td class="lec-area">
											<div class="data-tit">
												<a href="javascript:void(0)">강기원T 추석특강 라이브</a>
											</div>
										</td>            
										<td class="txt-area">2020-09-02(수)<br>14시 00분</td>     
										<td class="txt-area">2020-09-02(수)</td>
										<td class="price-area">
											<label class="form-checkbox">
												<input type="checkbox">
												<span class="ico ico-checkbox"></span>
												<span class="price">100,000원</span>
											</label>
										</td>
									</tr>
									<% next %>
								</tbody>
							</table>
						</div>
					</div>
					<!--// E : 과학탐구강좌리스트 -->

					<div class="board-btn txt-right mt30">
						<input type="button" class="btn btn-mid btn-black" value="수강신청">
					</div>

					<!-- S : 상품 안내/유의사항 -->
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
<!--// E : container -->

<script type="text/javascript">
$(function(){

});


    // 결제 이동
    var go_pay = function() {
        <% If COOK_ID = "" then %>
            alert('로그인 후 수강신청해 주세요.');
        <% Else %>
            if (!$('input:checkbox[name="chr_cd"]').is(":checked")) {
                alert('수강신청할 강좌를 선택해 주세요.');
            } else {
                if (confirm('수강신청하시겠습니까?')) {
                    var form_url = "/pay/cart/cart_in.asp";
                    $("#payForm").attr("action",form_url).submit();
                }
            }
        <% End If %>
    };
</script>
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->