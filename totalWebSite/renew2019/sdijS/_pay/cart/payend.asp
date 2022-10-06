<!--include virtual="/totalWebSite/renew2019/sdijS/common/inc/config.asp"-->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="board-layout">
                <h2 class="page-tit border-tit mb20">주문완료</h2>

                <!-- S : STEP -->
                <div class="step-box mb0">
                    <h4 class="tit">step3. 주문완료</h4>
                    <ul class="step">
                        <li class="prev">1</li>
                        <li class="prev">2</li>
                        <li class="on">3</li>
                    </ul>
                </div>
                <!--// E : STEP -->

                <div class="info-box mt50">
                    <p class="tit mb10">주문이 완료되었습니다.<br></p>
                    <p class="txt">구매해주셔서 감사합니다.</p>
                </div>

                <h4 class="table-tit border-none">주문상품</h4>
                <!-- S : 구매내역 리스트 -->
                <div class="board-list board-cart">
                    <table>
                        <colgroup>
                            <col style="width:140px;">
                            <col style="width:auto;">
                            <col style="width:70px;">
                            <col style="width:150px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2">상품정보</th>
                                <th>수량</th>
                                <th>총 결제금액</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                </td>
                                <td>1</td>
                                <td rowspan="2"><b>1,100,000원</b></td><% 'rowspan="총 상품 개수" %>
                            </tr>
                            <tr>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                </td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 구매내역 리스트 -->

                <div class="board-btn mt50 txt-center">
                    <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_detail.asp" class="btn btn-lg btn-black">주문상세보기</a>
                    <a href="#" class="btn btn-lg">메인으로</a>
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){
    
});

</script>