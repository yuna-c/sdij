<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 주문내역
' 모듈기능 : 공통 > 마이페이지 > 주문내역
' 파 일 명 : order_check.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
			<!-- S : SNB -->
			<!--#include virtual="/totalWebSite/renew2019/sdijS/_mypage/inc.snb.asp"-->
			<!--// E : SNB -->
            <div class="board-layout">
                <h2 class="page-tit">주문내역</h2>

                <h4 class="table-tit">
                    기간 검색
                    <!-- <small><i class="fas fa-search"></i></small> -->
                </h4>

                <!-- S : 기간 검색 -->
                <div class="board-date mb50">
                    <form action="" method="">
                        <!-- S : 달력날짜선택 -->
                        <div class="date-terms">
                            <label class="label-date"><input type="text" value="2019-06-11" class="input-text datepicker"></label>
                            &nbsp;~&nbsp;
                            <label class="label-date"><input type="text" value="2019-06-18" class="input-text datepicker"></label>
                        </div>
                        <!--// E : 달력날짜선택 -->

                        <!-- S : 버튼날짜선택 -->
                        <div class="btn-terms">
                            <button type="button" class="btn on">1주일</button>
                            <button type="button" class="btn">1개월</button>
                            <button type="button" class="btn">3개월</button>
                            <button type="button" class="btn">6개월</button>
                        </div>
                        <!--// E : 버튼날짜선택 -->

                        <input type="submit" class="btn btn-black btn-search" value="검색">
                    </form>
                </div>
                <!--// E : 기간 검색 -->

                <div class="board-layout">
                    <div class="board-tab">
                        <div class="tab-list">
                            <a href="javascript:void(0);" class="selected">일반주문내역</a>
                            <a href="javascript:void(0);">정기배송내역</a>
                        </div>

                        <!-- S : 일반주문내역 리스트 -->
                        <div class="tab-content tab-on">
                            <div class="board-list board-cart">
                                <table>
                                    <colgroup>
                                        <col style="width:160px;">
                                        <col style="width:120px;">
                                        <col style="width:auto;">
                                        <col style="width:95px;">
                                        <col style="width:95px;">
                                        <col style="width:90px;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>결제일시 / 주문번호</th>
                                            <th colspan="2">상품정보</th>
                                            <th>주문상태</th>
                                            <th>결제수단</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% For i = 1 To 2 '최대 주문 10개 노출 %>
                                        <tr>
                                            <td class="order-box">
                                                2019-05-22 18:19
                                                <a href="order_check_detail.asp" class="txt-link">20190522181902304860</a>
                                            </td>
                                            <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                            <td class="tit-box">
                                                <span>모의고사<br></span>
                                                <a href="#">2020 서바이벌 제로 2차</a><br>
                                                <span>10,000원 / 1개</span>
                                            </td>
                                            <td>결제완료</td>
                                            <td>휴대폰결제</td>
                                            <td class="btn-box">
                                                <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_cancel.asp" class="btn btn-xs2 btn-darkgray">주문취소</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="order-box">
                                                2019-05-22 18:19
                                                <a href="order_check_detail.asp" class="txt-link">20190522181902304860</a>
                                            </td>
                                            <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                            <td class="tit-box">
                                                <span>모의고사<br></span>
                                                <a href="#">2020 서바이벌 제로 2차</a><br>
                                                <span>10,000원 / 1개</span>
                                            </td>
                                            <td>배송완료</td>
                                            <td>신용카드</td>
                                            <td class="btn-box">
                                                <a href="#" class="btn btn-xs2 btn-black">배송조회</a>
                                                <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_cancel.asp" class="btn btn-xs2 btn-darkgray">반품신청</a>
                                            </td>
                                        </tr>
                                        <% 'S : 상품이 여러개 일 경우 %>
                                        <tr>
                                            <td class="order-box" rowspan="2"><% 'rowspan="총 상품개수" %>
                                                2019-05-22 18:19
                                                <a href="order_check_detail.asp" class="txt-link">20190522181902304860</a>
                                            </td>
                                            <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                            <td class="tit-box">
                                                <span>모의고사<br></span>
                                                <a href="#">2020 서바이벌 제로 2차</a><br>
                                                <span>10,000원 / 1개</span>
                                            </td>
                                            <td rowspan="2">배송완료</td><% 'rowspan="총 상품개수" %>
                                            <td rowspan="2">신용카드</td><% 'rowspan="총 상품개수" %>
                                            <td class="btn-box" rowspan="2"><% 'rowspan="총 상품개수" %>
                                                <a href="#" class="btn btn-xs2 btn-black">배송조회</a>
                                                <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_cancel.asp" class="btn btn-xs2 btn-darkgray">반품신청</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                            <td class="tit-box">
                                                <span>모의고사<br></span>
                                                <a href="#">2020 서바이벌 제로 2차</a><br>
                                                <span>10,000원 / 1개</span>
                                            </td>
                                        </tr>
                                        <% '// E : 상품이 여러개 일 경우 %>
                                        <tr>
                                            <td class="order-box">
                                                2019-05-22 18:19
                                                <a href="order_check_detail.asp" class="txt-link">20190522181902304860</a>
                                            </td>
                                            <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                            <td class="tit-box">
                                                <span>모의고사<br></span>
                                                <a href="#">2020 서바이벌 제로 2차</a><br>
                                                <span>10,000원 / 1개</span>
                                            </td>
                                            <td>결제완료</td>
                                            <td>휴대폰결제</td>
                                            <td class="btn-box">
                                                <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_cancel.asp" class="btn btn-xs2 btn-darkgray">주문취소</a>
                                            </td>
                                        </tr>
                                        <% next %>
                                    </tbody>
                                </table>
                            </div>

                            <!-- S : 페이징 -->
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
                            <!--// E : 페이징 -->
                        </div>
                        <!--// E : 일반주문내역 리스트 -->

                        <!-- S : 정기배송내역 리스트 -->
                        <div class="tab-content">
                            <ul class="list-dotted mb10">
                                <li>정기배송 취소/환불 문의는 고객센터 1522-0568로 문의주시기 바랍니다.</li>
                                <li>정기배송 상품은 배송지 수정을 하실 경우 이 후 회차부터 변경된 주소지로 배송됩니다.</li>
                            </ul>

                            <div class="board-list board-cart">
                                <table>
                                    <colgroup>
                                        <col style="width:160px;">
                                        <col style="width:120px;">
                                        <col style="width:auto;">
                                        <col style="width:95px;">
                                        <col style="width:100px;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>결제일시 / 주문번호</th>
                                            <th colspan="2">상품정보</th>
                                            <th>주문상태</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% For i = 1 To 10 '최대 주문 10개 노출 %>
                                        <tr>
                                            <td class="order-box" rowspan="2"><% 'rowspan="총 상품개수" %>
                                                2019-05-22 18:19
                                                <a href="order_check_detail.asp" class="txt-link">20190522181902304860</a>
                                            </td>
                                            <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                            <td class="tit-box">
                                                <span>2회차<br></span>
                                                <a href="#">2020 서바이벌 제로</a><br>
                                            </td>
                                            <td>배송준비중</td>
                                            <td class="btn-box">
                                                <!-- <a href="#" class="btn btn-xs2 btn-darkgray">배송지변경</a> -->
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                            <td class="tit-box">
                                                <span>1회차<br></span>
                                                <a href="#">2020 서바이벌 제로</a><br>
                                            </td>
                                            <td>배송완료</td>
                                            <td class="btn-box">
                                                <a href="#" class="btn btn-xs2 btn-black">배송조회</a>
                                            </td>
                                        </tr>
                                        <% next %>
                                    </tbody>
                                </table>
                            </div>

                            <!-- S : 페이징 -->
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
                            <!--// E : 페이징 -->
                        </div>
                        <!--// E : 정기배송내역 리스트 -->
                    </div>
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
    // 체크박스 all
    $('.check-all').on('click', function(){
        $(this).parents('table').children('tbody').find('input[type="checkbox"]').prop('checked', this.checked);
    });
});

</script>
