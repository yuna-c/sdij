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
                                
                                <tr>
                                    <td class="txt-area"><a href="#" target="_blank">김은양</a></td>
                                    <td class="txt-area">고3 / N수개념</td>
                                    <td class="lec-area">
                                        <div class="data-sticker">
											<span class="sticker-lec sticker-red">new</span>
                                            <span class="sticker-lec sticker-orange">best</span>
                                            <span class="sticker-lec sticker-green">추천</span>
                                            <span class="sticker-lec sticker-gray">완강</span>
                                        </div>
                                        <div class="data-tit">
                                            <a href="#"></a>
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
                                    <td class="price-area">
                                            <input type="hidden" name="productCode" value="">
											<label class="form-checkbox">
                                            <input type="checkbox" name="tblProductIDX" value="">
                                            <span class="ico ico-checkbox"></span>
                                            <span class="tit">강좌</span>
                                            <span class="price">원</span>
                                        </label>

                                        <div>
                                            <span class="tit">교재</span>
                                            <span class="price">PDF 제공</span>
                                        </div>
                                    </td>
                                    <td class="price-area">
                                         <input type="hidden" name="productCode" value="">
										 <label class="form-checkbox">
                                            <input type="checkbox" name="tblProductIDX" value="">
                                            <span class="ico ico-checkbox"></span>
                                            <span class="tit">강좌</span>
                                            <span class="price">원</span>
                                        </label>



                                        <label class="form-checkbox">
                                            <input type="checkbox" name="bookCode" value="">
                                            <span class="ico ico-checkbox"></span>
                                            <span class="tit">교재</span>
                                            <span class="price">
                                                원
                                            </span>
                                            <em>(총 3권)</em>
                                        </label>
                                    </td>
                                </tr>
								<tr>
                                    <td colspan="7">등록된 강좌가 없습니다.</td>
								</tr>
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