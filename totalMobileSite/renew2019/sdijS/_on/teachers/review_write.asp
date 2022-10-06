<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 리뷰작성하기
' 모듈기능 : 선생님 > 리뷰작성하기
' 파 일 명 : review_write.asp
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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container">
        <div class="content-layout">
            <h2 class="dep1-tit">리뷰 작성하기</h2>

            <div class="board-layout">
                <!-- S : 리뷰 작성하기 -->
                <div class="form-defult form-defult2">
                    <form id="dataForm" name="dataForm" method="get">
						<input type="hidden" id="reviewScore" name="reviewScore" value="2">
						<table>
							<tbody>
								<tr>
									<td class="pt15">
										<div class="flex-area">
											<div class="form-select">
												<select id="reviewSubCd" name="reviewSubCd">
													<option value="">과목</option>
												</select>
											</div>

											<div class="form-select">
												<select id="reviewTecId" name="reviewTecId">
													<option value="">강사</option>
													<option value="">강사명</option>
												</select>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="form-select">
											<select id="reviewChrCd" name="reviewChrCd">
												<option value="">강좌</option>
												<option value="">강좌명</option>
											</select>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="form-input">
											<input type="text" id="reviewHashTag" name="reviewHashTag" placeholder="#해시태그는 최대 5개까지 입력 가능합니다">
										</div>
									</td>
								</tr>
								<tr>
									<th>만족도</th>
									<td>
										<div class="review-box">
											<a href="javascript:void(0);" class="ico ico-star2 ico-star2-on">별점 1점</a>
											<a href="javascript:void(0);" class="ico ico-star2">별점 2점</a>
											<a href="javascript:void(0);" class="ico ico-star2">별점 3점</a>
											<a href="javascript:void(0);" class="ico ico-star2">별점 4점</a>
											<a href="javascript:void(0);" class="ico ico-star2">별점 5점</a>
										</div>
									</td>
								</tr>
								<tr>
									<th>제목</th>
									<td>
										<div class="form-input">
											<input type="text" id="reviewTitle" name="reviewTitle">
										</div>
									</td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<div class="form-textarea">
											<textarea id="reviewContent" name="reviewContent"></textarea>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
                    </form>
                </div>
                <!--// E : 리뷰 작성하기 -->
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

    <div class="board-btn page-btn">
        <a href="javascript:history.back(-1)" class="btn btn-lightgray">취소</a>
        <input type="button" value="리뷰작성" class="btn btn-black" onclick="IfSend()">
    </div>

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">


$(function(){

});
</script>
<!--// E : 페이지별 스크립트 -->
