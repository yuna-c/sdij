<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 주문내역 > 주문내역 상세보기
' 모듈기능 : 공통 > 마이페이지 > 주문내역 > 주문내역 상세보기
' 파 일 명 : order_check_detail.asp
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
                <h2 class="page-tit">주문내역 상세보기</h2>

                <!-- S : 주문내역 리스트 -->
                <div class="board-list board-cart">
                    <table>
                        <colgroup>
                            <col style="width:160px;">
                            <col style="width:140px;">
                            <col style="width:auto;">
                            <col style="width:100px;">
                            <col style="width:90px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>결제일시 / 주문번호</th>
                                <th colspan="2">상품정보</th>
                                <th colspan="2">주문상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% '일반 배송 상품 일 경우 %>
                            <tr>
                                <td class="order-box" rowspan="2"><% 'rowspan="총 상품개수" %>
                                    2019-05-22 18:19
                                    <span class="txt-link">20190522181902304860</span>
                                </td>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                    <span>10,000원 / 1개</span>
                                </td>
                                <td rowspan="2"><% 'rowspan="총 상품개수" %>결제완료</td>
                                <td class="btn-box" rowspan="2"><% 'rowspan="총 상품개수" %>
                                    <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_cancel.asp" class="btn btn-xs2 btn-darkgray">주문취소</a>
                                    <a href="#" class="btn btn-xs2 btn-black">배송조회</a>
                                    <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check_cancel.asp" class="btn btn-xs2 btn-darkgray">반품신청</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="img-box"><img src="https://via.placeholder.com/100x100" alt="상품 이미지"></td>
                                <td class="tit-box">
                                    <span>모의고사</span>
                                    <a href="#">상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명 상품명</a>
                                    <span>10,000원 / 1개</span>
                                </td>
                            </tr>
                            <% '// 일반 배송 상품 일 경우 %>

                            <% '정기 배송 상품 일 경우 %>
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
                            <% '// 정기 배송 상품 일 경우 %>
                        </tbody>
                        <tfoot>
                            <tr class="pay-area">
                                <td class="type1-box" colspan="2">
                                    <dl>
                                        <dt>결제수단</dt>
                                        <dd>
                                            신용카드
                                            <button class="btn btn-xs2 btn-black">영수증</button>
                                        </dd>
                                    </dl>
                                </td>
                                <td class="type2-box" colspan="3">
                                    <dl>
                                        <dt>상품금액</dt>
                                        <dd><b>1,000,000</b>원</dd>

                                        <dt>할인쿠폰</dt>
                                        <dd><b>2,500</b>원</dd>

                                        <dt>배송비</dt>
                                        <dd><b>2,500</b>원</dd>

                                        <dt>캐시</dt>
                                        <dd><b>12,500</b>원</dd>

                                        <dt class="mt5">총 결제금액</dt>
                                        <dd class="mt5"><b>1,002,500</b>원</dd>
                                    </dl>
                                    
                                    <% '취소완료, 반품완료 시에만 노출 %>
                                    <dl class="refund-list">
                                        <dt>신용카드</dt>
                                        <dd><b>1,002,500</b>원</dd>

                                        <dt>캐시</dt>
                                        <dd><b>1,002,500</b>원</dd>

                                        <dt class="mt5">총 환불금액</dt>
                                        <dd class="mt5"><b>1,002,500</b>원</dd>
                                    </dl>
                                    <% '// 취소완료, 반품완료 시에만 노출 %>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!--// E : 주문내역 리스트 -->

                <!-- S : 구매자 정보 -->
                <h4 class="table-tit border-none">구매자 정보</h4>
                <div class="form-defult form-defult2">
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
                            <tr>
                                <th>휴대폰 번호</th>
                                <td colspan="3">010-1234-5678</td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td colspan="3">abe@email.com</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 구매자 정보 -->

                <% if true then '강좌 구매 시 노출 X %>
                <!-- S : 배송 정보 -->
                <h4 class="table-tit border-none">
                    <% if true then %>
                    배송 정보
                    <% else '반품일 경우 %>
                    회수지 정보
                    <% end if %>
                    <small><button onclick="window.open('/_pay/cart/delv_list_my_pop.asp','배송지 목록에서 선택','width=820, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="btn btn-sm">배송지 변경</button></small>
                </h4>
                <div class="form-defult form-defult2">
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
                    </table>
                </div>
                <p class="txt-guide mt10">*정기배송 상품은 배송지 수정을 하실 경우 이 후 회차부터 변경된 주소지로 배송됩니다.</p><% '정기배송 문구 노출 %>
                <!--// E : 배송 정보 -->
                <% end if %>

                <% if true then '무통장 입금 시 노출 %>
                <!-- S : 입금 정보 -->
                <h4 class="table-tit border-none">입금 정보</h4>
                <div class="form-defult form-defult2">
                    <table>
                        <colgroup>
                            <col style="width:200px;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>입금계좌</th>
                                <td>2017901861937</td>
                            </tr>
                            <tr>
                                <th>입금은행(예금주)</th>
                                <td>국민은행(하이컨시북스)</td>
                            </tr>
                            <tr>
                                <th>입금금액</th>
                                <td>10,000원</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 입금 정보 -->
                <% end if %>

                <% if true then '반품, 취소 시 노출 %>
                <!-- S : 환불 계좌 정보 -->
                <h4 class="table-tit border-none">환불 정보</h4>
                <div class="form-defult form-defult2">
                    <table>
                        <colgroup>
                            <col style="width:200px;">
                            <col style="width:auto;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>환불계좌</th>
                                <td>2017901861937</td>
                            </tr>
                            <tr>
                                <th>환불은행(예금주)</th>
                                <td>국민은행(홍길동)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 환불 계좌 정보 -->
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