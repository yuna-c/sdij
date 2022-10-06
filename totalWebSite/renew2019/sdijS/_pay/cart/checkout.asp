<!--include virtual="/totalWebSite/renew2019/sdijS/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제
' 파 일 명 : checkout.asp
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
    'pg_menu_code = ""	   ' DB 등록 메뉴 코드 기재
    'SET_GOURL URL_SELF     ' 이동할 URL 주소 쿠키 설정 Reponse.cookies("go_url")
    'GO_LOGIN()            ' 로그인 인증 필용 시 사용, 불필요시 주석 처리






'------------------------------
' VARS
'------------------------------






'------------------------------
' QUERY
'------------------------------
    ' 해당 페이지 쿼리문 정의
	'arrParams = Array( _
	'	DbCon.makeParam("@APP_SEQ",            adInteger,  adParamInput, 0,   extra_app_seq), _
	'	DbCon.makeParam("@CHR_CD",             adInteger,  adParamInput, 0,   extra_chr_cd), _
	'	DbCon.makeParam("@LEC_CD",             adInteger,  adParamInput, 0,   extra_lec_cd), _
	'	DbCon.makeParam("@STD_DVC",            adChar,     adParamInput, 6,   extra_std_dvc), _
	'	DbCon.makeParam("@USER_ID",            adVarChar,  adParamInput, 20,  user_id), _
	'	DbCon.makeParam("@PLAYER_ID",          adVarChar,  adParamInput, 50,  player_id), _
	'	DbCon.makeParam("@CONTENT_DURATION",   adSmallInt, adParamInput, 0,   content_duration), _
	'	DbCon.makeParam("@CURRENT_POSITION",   adSmallInt, adParamInput, 0,   current_position), _
	'	DbCon.makeParam("@PLAYED_TIME",        adSmallInt, adParamInput, 0,   played_time), _
	'	DbCon.makeParam("@STRONG_PLAYED_TIME", adSmallInt, adParamInput, 0,   strong_played_time), _
	'	DbCon.makeParam("@TRACKER_TIME",       adSmallInt, adParamInput, 0,   tracker_time), _
	'	DbCon.makeParam("@TRACKER_DATA",       adVarChar,  adParamInput, 20,  tracker_data), _
	'	DbCon.makeParam("@CONTENT_URL",        adVarChar,  adParamInput, 200, content_url), _
	'	DbCon.makeParam("@EXTRA_DATA",         adVarChar,  adParamInput, 100, extra_data), _
	'	DbCon.makeParam("@BEGIN_LOCALTIME",    adDate,     adParamInput, 7,   begin_localtime), _
	'	DbCon.makeParam("@END_LOCALTIME",      adDate,     adParamInput, 7,   end_localtime), _
	'	DbCon.makeParam("@EXCEPTION",          adChar,     adParamInput, 1,   exception) _
	')

	'Call DbCon.ExecSP("P_PLAYER_LOG", arrParams, DBSDIJLMS)



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
            <div class="board-layout">
                <h2 class="page-tit">주문/결제</h2>

                <!-- S : STEP -->
                <div class="step-box mb0">
                    <h4 class="tit">step2. 주문/결제</h4>
                    <ul class="step">
                        <li class="prev">1</li>
                        <li class="on">2</li>
                        <li>3</li>
                    </ul>
                </div>
                <!--// E : STEP -->

                <!-- S : 구매내역 리스트 -->
                <div class="board-list board-cart">
                    <table>
                        <colgroup>
                            <col style="width:140px;">
                            <col style="width:auto;">
                            <col style="width:80px;">
                            <col style="width:130px;">
                            <col style="width:130px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2">상품정보</th>
                                <th>수량</th>
                                <th>판매가</th>
                                <th>합계</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i = 1 To 2 %>
                            <tr>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                </td>
                                <td>1</td>
                                <td>
                                    <% if true then '상품 정가가 있을 경우 %>
                                    <del>1,100,000원</del>
                                    100,000원
                                    <% else %>
                                    1,000,000원
                                    <% end if %>
                                </td>
                                <td><b>1,100,000원</b></td>
                            </tr>
                            <% next %>
                        </tbody>
                        <% if false then '이전 상품금액 %>
                        <tfoot>
                            <tr class="total-area">
                                <td colspan="5">
                                    <!-- S : 장바구니 금액 -->
                                    <div class="total-line">
                                        <dl>
                                            <dt>총 상품금액</dt>
                                            <dd><b>1,000,000</b>원</dd>
                                        </dl>
                                        <dl>
                                            <dt>배송비</dt>
                                            <dd><b>2,500</b>원</dd>
                                        </dl>
                                        <dl>
                                            <dt>총 결제예정금액</dt>
                                            <dd><b>1,002,500</b>원</dd>
                                        </dl>
                                    </div>
                                    <!--// E : 장바구니 금액 -->
                                </td>
                            </tr>
                        </tfoot>
                        <% end if %>
                    </table>
                </div>
                <!--// E : 구매내역 리스트 -->
                <p class="txt-guide mt10">*주문상품 변경은 <a href="/totalWebSite/renew2019/sdijS/_pay/cart/cart.asp" class="txt-link color-blue">장바구니</a> 단계에서 가능합니다.</p>

                <% if true then '강좌 구매 시 노출 X %>
                <!-- S : 구매자 정보 -->
                <h4 class="table-tit border-none">
                    구매자 정보
                    <!-- <small><a href="/totalWebSite/member/regist_modify_login.asp" target="_blank" class="btn btn-sm">회원정보수정</a></small> -->
                </h4>
                <div class="form-defult form-defult2">
                    <form action="" method="">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>이름</th>
                                <td colspan="3">홍길동</td>
                            </tr>
                            <tr class="info-txt">
                                <th rowspan="2">휴대폰 번호</th>
                                <td>
                                    <div class="form-select">
                                        <select>
                                            <option value="010">010</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    <div class="form-input">
                                        <input type="text">
                                    </div>
                                </td>
                                <td>
                                    <div class="form-input">
                                        <input type="text">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <p class="mt5 txt-guide">*주문/배송 정보를 SMS로 안내해 드리오니 정확하게 입력하세요.</p>
                                </td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td colspan="2">
                                    <div class="form-input form-email">
                                        <input type="text" maxlength="40">
                                        <span class="dash">@</span>
                                        <input type="text" readonly="readonly">
                                    </div>
                                </td>
                                <td>
                                    <div class="form-select">
                                        <select>
                                            <option value="">선택</option>
                                            <option value="1">직접입력</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="hanmail.net">hanmail.net</option>
                                            <option value="hotmail.com">hotmail.com</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="korea.com">korea.com</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </form>
                </div>
                <!--// E : 구매자 정보 -->

                <!-- S : 배송 정보 -->
                <h4 class="table-tit border-none">
                    배송 정보
                    <small><button onclick="window.open('./delv_list_my_pop.asp','배송지 목록에서 선택','width=820, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="btn btn-sm">배송지 변경</button></small>
                </h4>
                <div class="form-defult form-defult2">
                    <form action="" method="">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <% if false then '배송지 정보가 없을 경우 %>
                        <tbody>
                            <tr>
                                <td colspan="4" class="no-data">
                                    저장되어 있는 배송지가 없습니다.<br>배송지를 추가해주세요.<br>
                                    <button onclick="window.open('./delv_list_my_add_pop.asp','배송지 추가','width=560, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="btn btn-black btn-sm">배송지 추가</button>
                                </td>
                            </tr>
                        </tbody>
                        <% else %>
                        <tbody>
                            <tr>
                                <th>이름</th>
                                <td colspan="3">홍길동</td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td colspan="3">서울시 강남구 삼성로 434 쥬비스타워 5층</td>
                            </tr>
                            <tr>
                                <th>휴대폰 번호</th>
                                <td colspan="3">010-1234-5678</td>
                            </tr>
                            <tr>
                                <th>전화번호</th>
                                <td>02-1234-5678</td>
                            </tr>
                            <tr>
                                <th>배송요청사항</th>
                                <td colspan="3">배송 전 연락주세요.</td>
                            </tr>
                        </tbody>
                        <% end if %>
                    </table>
                    </form>

                    <p class="txt-guide mt10">*주소 및 연락처가 정확하지 않을 경우 분실 및 반송 될 수 있습니다.</p>
                </div>
                <!--// E : 배송 정보 -->
                <% end if %>

                <% '신규 수정 영역 19/08 %>
                <!-- S : 쿠폰/캐시 -->
                <h4 class="table-tit border-none">쿠폰 / 캐시</h4>
                <div class="form-defult form-defult2">
                    <form action="" method=""></form>
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup> 
                        <tbody>
                            <tr>
                                <th>할인쿠폰</th>
                                <td colspan="3">
                                    <span class="price-txt"><em>1,000,000</em>원</span>
                                    <a href="javascript:void(0);" onclick="window.open('./coupon_pop.asp','할인쿠폰 선택','width=560, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="btn btn-black btn-sm">할인쿠폰</a>
                                </td>
                            </tr>
                            <tr>
                                <th>배송비쿠폰</th>
                                <td colspan="3">
                                    <span class="price-txt"><em>2,500</em>원</span>
                                    <a href="javascript:void(0);" onclick="window.open('./coupon_delivery_pop.asp','할인쿠폰 선택','width=560, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="btn btn-black btn-sm">배송비쿠폰</a>
                                </td>
                            </tr>
                            <tr>
                                <th>캐시</th>
                                <td class="form-cash" colspan="3">
                                    <div class="form-input">
                                        <input type="text">
                                    </div>
                                    <span class="txt">잔여&nbsp;&nbsp;<em>1,000,500</em>원</span>
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        전액사용
                                    </label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 쿠폰/캐시 -->

                <!-- S : 자동 결제 안내 -->
                <h4 class="table-tit">자동 결제 안내</h4>
                <ul class="list-dotted mt20">
                    <li>자동 결제 안내111</li>
                    <li>자동 결제 안내111</li>
                    <li>자동 결제 안내111</li>
                    <li>교재가 포함된 상품 또는 강좌의 결제를 취소하시면 해당 교재도 함께 취소됩니다.</li>
                    <li>수강 중인 강좌와 교재는 수강 중 재구매 할 수 없습니다.</li>
                </ul>
                <!--// E : 자동 결제 안내 -->

                <!-- S : 결제 정보 -->
                <h4 class="table-tit border-none">
                    결제 정보
                    <!-- <small><a href="http://www.sdijbooks.com/board/faq_list.asp?mcd=175" target="_blank" class="btn btn-sm">결제관련 FAQ</a></small> -->
                </h4>
                <div class="form-defult form-defult2">
                    <form action="" method="">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>총 상품금액</th>
                                <td colspan="3"><span><em>1,000,000</em>원</span></td>
                            </tr>
                            <tr>
                                <th>할인금액</th>
                                <td colspan="3"><span class="color-red strong"><em>10,500</em>원</span></td>
                            </tr>
                            <tr>
                                <th>배송비</th>
                                <td colspan="3"><span><em>-</em> 2,500원</span></td>
                            </tr>
                            <tr>
                                <th>캐시</th>
                                <td colspan="3"><span>10,000원</span></td>
                            </tr>
                            <tr>
                                <th>총 결제금액</th>
                                <td colspan="3"><span class="color-black strong">1,000,500원</span></td>
                            </tr>
                            <% '신규 수정 영역 19/08 %>
                            <tr class="info-txt">
                                <th rowspan="2">결제수단</th><% '자동 결제 상품에 경우 결제수단 신용카드만 가능 %>
                                <td colspan="3">
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        신용카드
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        계좌이체
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        무통장 입금
                                    </label>
                                    <label class="form-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        휴대폰 결제
                                    </label>
                                </td>
                            </tr>
                            <% '// 신규 수정 영역 19/08 %>
                            <tr>
                                <td colspan="3">
                                    <p class="txt-guide mt10">*무이자할부 카드 정보는 결제창에서 확인하세요.</p>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="4"><label class="check"><input type="checkbox"><span>주문할 상품의 상품명, 상품가격, 배송정보, 환불규정을 확인하였으며 구매에 동의합니다. (전자상거래법 제8조 제2항)</span></label></th>
                            </tr>
                        </tbody>
                    </table>
                    </form>
                </div>
                <!--// E : 결제 정보 -->
                <% '// 신규 수정 영역 19/08 %>

                <div class="board-btn txt-center mt50">
                    <a href="payend.asp" class="btn btn-black btn-lg">결제하기</a>
                </div>
                
                <% if false then %>
                <!-- S : 장바구니 안내 -->
                <div class="gray-box2 txt-left mt50">
                    <ul class="list-number">
                        <li>장바구니에 담겨진 상품/강좌/교재/도서는 30일 동안 보관됩니다.<br>(단, 판매종료 상품은 별도 고지없이 삭제)</li>
                        <li>교재 배송비는 주문 1건당 2,500원입니다. (만원이상 구매 시 무료배송)</li>
                        <li>단순 변심에 의한 반송 시, 환불금액에서 왕복 배송비가 제외됩니다.</li>
                        <li>교재가 포함된 상품 또는 강좌의 결제를 취소하시면 해당 교재도 함께 취소됩니다.</li>
                        <li>수강 중인 강좌와 교재는 수강 중 재구매 할 수 없습니다.</li>
                    </ul>
                    <div class="txt-right mt50">
                        <a href="http://www.sdijbooks.com/board/faq_list.asp?mcd=175" target="_blank" class="txt-link2"><b>시대인재 상품별 환불규정</b></a>
                        <a href="http://www.sdijbooks.com/board/faq_list.asp?mcd=175" target="_blank" class="txt-link2"><b>교재 배송 및 구매 안내</b></a>
                    </div>
                </div>
                <!--// E : 장바구니 안내 -->
                <% end if %>
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