<!--#include virtual="/common/inc/config.asp"-->
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
'gubunText       = ""
'loginFlg        = "N"
'pageSize        = 10
'TOTAL_CNT       = 0
'initGubunCd     = "BEST"
'initDomCd       = "2001"

'page            = fncRequestForm("page")



'------------------------------
' QUERY
'------------------------------

'--교재테스트용
'Sql = "Select top 50 prdt.tblProductIDX, prdt.productCode, '강사테이블.강사명', 'lec.학년', 'lec.구분', prdt.productName, prdt.originalPrice, prdt.price " &_
		'"		, prdt.productDesc, prdt.isNew, prdt.isBest, prdt.isRecommend, prdt.isComplete " &_
		'"From dbo.tblProduct prdt " &_
		'"	left join dbo.tblLecture lec On lec.tblLectureIDX=prdt.originalIDX " &_
		'"Where prdt.productType = 'book' " &_
		'"Order by prdt.tblProductIDX desc "



'arrProductList = dbCon.getRows(sql)
'
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
                    <!-- S : dep1-tab -->
                    <ul class="dep1-tab">
                        <li class="selected"><a href="#">고3</a></li>
                        <li><a href="#">고2/1</a></li>
                    </ul>
                    <!--// E : dep1-tab -->

                    <!-- S : dep2-tab -->
                    <ul class="dep2-tab">
                        <li class="selected"><a href="#">전체</a></li>
                        <li><a href="#">문법</a></li>
                        <li><a href="#">문학</a></li>
                        <li><a href="#">비문학</a></li>
                    </ul>
                    <!--// E : dep2-tab -->

                    <!-- S : dep3-tab -->
                    <div class="dep3-tab">
                        <a href="#" class="selected">전체</a>
                        <a href="#">개념완성</a>
                        <a href="#">서바이벌</a>
                        <a href="#">리바이벌</a>
                        <a href="#">ATG</a>
                    </div>
                    <!--// E : dep3-tab -->

                    <!-- S : 강좌 리스트 -->
                    <div class="board-lec">
                        <h4 class="lec-tit">
                            <span>[카테고리]</span> 강좌정보가 없어서 교재로 일단 테스트
                        </h4>

                        <form name="frmProductList" method="post">
						<input type="hidden" name="mode" value="cart">
						<input type="hidden" name="siteCode" value="on">
						<table>
                            <colgroup>
                                <col style="width:80px;">
                                <col style="width:80px;">
                                <col style="width:auto;">
                                <col style="width:80px;">
                                <col style="width:160px;">
                            </colgroup>
                            <tbody>
                                <%
								'If isArray(arrProductList) Then
									'For i = 0 to ubound(arrProductList, 2)

										'prdt.tblProductIDX, prdt.productCode, '강사테이블.강사명', 'lec.학년', 'lec.구분', prdt.productName, prdt.originalPrice, prdt.price " &_
										'	, prdt.productDesc, prdt.isNew, prdt.isBest, prdt.isRecommend, prdt.isComplete " &_


										'tblProductIDX = arrProductList(0, i)
										'productCode = arrProductList(1, i)
										'teacherName = arrProductList(2, i)
										'grade			= arrProductList(3, i)
										'lecType		= arrProductList(4, i)


										'productName = arrProductList(5, i)
										'originalPrice = arrProductList(6, i)
										'price			= arrProductList(7, i)
										'isNew			= arrProductList(8, i)
										'isBest		= arrProductList(9, i)
										'isRecommend = arrProductList(10, i)
										'isComplete	= arrProductList(11, i)
								%>
                                <tr>
                                    <td class="txt-area"><a href="#" target="_blank">김은양</a></td>
                                    <td class="txt-area">고3 / N수개념</td>
                                    <td class="lec-area">
                                        <div class="data-sticker">
															<% 'If isNew="Y" Then %><span class="sticker-lec sticker-red">new</span><% End If %>
                                            <% 'If isBest="Y" Then %><span class="sticker-lec sticker-orange">best</span><% End If %>
                                            <% 'If isRecommend="Y" Then %><span class="sticker-lec sticker-green">추천</span><% End If %>
                                            <% 'If isComplete="Y" Then %><span class="sticker-lec sticker-gray">완강</span><% End If %>
                                        </div>
                                        <div class="data-tit">
                                            <a href="#"><%='productName%></a>
                                        </div>
                                        <div class="data-info">
                                            <span>강좌구성 05강</span>
                                            <span>수강기간 135일</span>
                                        </div>
                                        <div class="data-txt">
                                            강좌랑 조인해서 상세내용 뿌려쥬기
                                        </div>
                                    </td>
                                    <td class="btn-area">
                                        <input type="button" class="btn" value="OT">
                                        <input type="button" class="btn" value="맛보기">
                                        <input type="button" class="btn" value="교재샘플">
                                    </td>
                                    <% if i = 1 then '교재 PDF 제공 시  %>
                                    <td class="price-area">
                                            <input type="hidden" name="productCode" value="<%='productCode%>">
											<label class="form-checkbox">
                                            <input type="checkbox" name="tblProductIDX" value="<%='tblProductIDX%>">
                                            <span class="ico ico-checkbox"></span>
                                            <span class="tit">강좌</span>
                                            <span class="price"><%='setComma(price, 0)%>원</span>
                                        </label>

                                        <div>
                                            <span class="tit">교재</span>
                                            <span class="price">PDF 제공</span>
                                        </div>
                                    </td>
                                    <% else %>
                                    <td class="price-area">
                                         <input type="hidden" name="productCode" value="<%='productCode%>">
										 <label class="form-checkbox">
                                            <input type="checkbox" name="tblProductIDX" value="<%='tblProductIDX%>">
                                            <span class="ico ico-checkbox"></span>
                                            <span class="tit">강좌</span>
                                            <span class="price"><%='setComma(price, 0)%>원</span>
                                        </label>


										<%
										'-- 연관테이블에서 교재 리스트 가져오기
										%>

                                        <label class="form-checkbox">
                                            <input type="checkbox" name="bookCode" value="<%'=productCode%>">
                                            <span class="ico ico-checkbox"></span>
                                            <span class="tit">교재</span>
                                            <span class="price">
                                                <%'=setComma(price, 0)%>원
                                            </span>
                                            <em>(총 3권)</em>
                                        </label>
                                    </td>
                                    <% end if %>
                                </tr>
                                <%
									Next
								Else
								%>
								<tr>
                                    <td colspan="7">등록된 강좌가 없습니다.</td>
								</tr>
								<%
								End If
								%>
                            </tbody>
                        </table>
						</form>
                    </div>

                    <div class="board-btn txt-right mt30">
                        <button  class="btn btn-mid" onclick="addCart();">장바구니</button>
                        <button class="btn btn-mid btn-black" onclick="goCheckOut();">바로구매</button>
                    </div>
                    <!--// E : 강좌 리스트 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
/*

$(function(){

});

function addCart() {
	if (confirm('선택하신 상품을 장바구니에 추가 하시겠습니까?'))
	{
		var frm = document.frmProductList;
		frm.mode.value = 'ajax';

		var serializedData = $(frm).serialize();
		$.ajax({
				url: "/_pay/cart/xhrCartAdd.asp",
				type: "POST",
				data: serializedData,
				dataType: 'html',
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
					if (confirm('장바구니에 담았습니다. 장바구니로 이동하시겠습니까?'))
					{
						location.href='/_pay/cart/cart.asp';
					} else {
						console.log(result);
					}
				},
				error:function(rst){
					alert(rst);
				}
			});

	}
}

function goCheckOut() {
	if (confirm('선택하신 상품을 바로 구매하시겠습니까?'))
	{
		/*var frm = document.frmProductList;
		frm.mode.value = 'checkout';
		frm.action='href="/_pay/cart/cart_proc.asp"';
		frm.submit();*/
/*

		var frm = document.frmProductList;
		frm.mode.value = 'checkout';

		var serializedData = $(frm).serialize();
		$.ajax({
				url: "/_pay/cart/xhrCartAdd.asp",
				type: "POST",
				data: serializedData,
				dataType: 'html',
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
					location.href='/_pay/cart/cart.asp'; //나중에 결제로 이동
				},
				error:function(rst){
					alert(rst);
				}
			});
	 }
}
*/
</script>
<!--// E : 페이지별 스크립트 -->