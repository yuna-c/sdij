<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 교재신청
' 모듈기능 : 보충강좌 서비스 > 교재신청
' 파 일 명 : index.asp
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
<style>
	/*#include virtual="/totalWebSite/renew2019/reclass/lecture/incDelv.asp"*/
</style>
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">택배 신청</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="delv-container">
        <!-- S : 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="tit-area">
				<h2 class="tit-dep1">시대인재 택배 신청</h2>

				<a href="detail.asp" class="btn btn-M tit-side">신청 내역 보기</a>
			</div>

            <div class="box-gray">
                <h4 class="tit-dep4">
                    시대인재 스트리밍 사이트에서<br>
                    현재 수강 중인 수업은 택배 신청 가능합니다.
                </h4>

                <p class="strong mt20">택배 신청 기간</p>
                <ul class="list-dash">
                    <li>매주 토 PM 12:30 ~ 월요일 PM 13:00</li>
                </ul>

                <p class="strong mt20">배송지 수정</p>
                <ul class="list-dash">
                    <li>일요일 PM 10:00까지만 수정 신청 가능</li>
                    <li>[택배신청] 버튼 클릭하여 배송지 수정하여 [등록하기] 버튼 클릭</li>
                </ul>

                <p class="strong mt20">택배 지원 업무폰</p>
                <ul class="list-dash">
                    <li>010-7114-2372(문자전용)</li>
                </ul>
            </div>

            <div class="table-type1 mt1">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>강좌명</th>
                            <th>수령방식 선택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 10 %>
                        <tr>
                            <td>엄영대T 지구과학1 C반 현장보강</td>
                            <td>
                                <div class="btn-area">
                                    <a href="javascript:void(0);" onclick="fnOpenModal('.modal-delv-info');" class="btn">현장수령</a>
                                    <a href="javascript:void(0);" onclick="fnOpenModal('.modal-delv');" class="btn btn-black">택배수령</a>
                                </div>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>
        </article>
        <!--// E : 강좌 리스트 -->
    </section>
    <!--// E : container -->

    <!-- S : 현장/택배 배송 관련 -->


	<!-- S : modal-wrap -->
<div class="modal-wrap">
    <div class="modal-bg"></div>

    <!-- S : 배송지 팝업 -->
    <div class="modal-container modal-M modal-delv">
        <div class="modal-header">
            <h3 class="modal-tit">배송지 등록</h3>
        </div>
    
        <div class="modal-content">        
            <div class="form-small">
                <input type="hidden" id="tblDelvIdx" name="tblDelvIdx" value="" />
                <input type="hidden" id="delvState" name="delvState" value="" />
                <ul>
                    <li class="tit-dep4 mt0">배송지 정보입력</li>
                    <!-- <li>
                        <label class="input-text">
                            <input type="text" placeholder="이름" value="홍길동" readonly id="" name="">
                        </label>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="text" placeholder="휴대폰" value="010-1234-5678" readonly id="" name="">
                        </label>
                    </li> -->
                    <!-- <li><p class="strong">주소입력</p></li> -->

                    <li class="type-col2">                       
                        <label class="input-text">
                            <input type="text" placeholder="우편번호" id="txtPost" name="txtPost" value="<%=strPost%>" readonly="readonly">
                        </label>

                        <span><button type="button" class="btn btn-black" id="btnSearch" name="btnSearch">검색</button></span>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="text" placeholder="주소" id="txtAddr1" name="txtAddr1" value="<%=strAddr1%>" readonly="readonly">
                        </label>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="text" placeholder="상세주소" id="txtAddr2" name="txtAddr2" value="<%=strAddr2%>">
                        </label>
                    </li>
                    <li class="agree-area">
                        <p class="strong">개인정보 활용 동의</p>
                        <div class="textarea">
                            <textarea readonly>
첫째, 시대인재는 원활한 교재 배송을 위해 아래와 같은 개인 정보를 수집 하고 있습니다.

필수항목 : 고객명, 고객 전화번호, 배송주소
개인정보 수집 방법 : 홈페이지 내 입력 및 기존 학원 제출 정보

둘째, 서비스 이용 과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.

IP Adress, 쿠키, 방문일시, os종류, 브라우저 종류 서비스 이용기록, 불량 이용기록

배송 등 기본 서비스 제공을 위한 개인정보 처리업무 외에는 외부업체에 위탁하고 있지 않으며, 관계 법령에 따라 위탁 계약시 개인정보가 안전하게 관리될 수 있도록 필요한 사항들을 규정하고 있습니다.

&lt;회사의 개인정보 위탁처리 기관 및 위탁 업무 내용&gt;
제공받는 자 : CJ 대한통운택배, 모아물류 (제공목적 : 상품 배송업무)
                            </textarea>
                        </div>
                        <label class="input-checkbox">
                            <input type="checkbox" name="chkAgree" id="chkAgree">
                            <span class="ico ico-checkbox"></span>

                            <span>위 내용에 동의합니다.</span>
                        </label>
                    </li>
                    <li class="agree-area">
                        <p class="strong">택배 신청 동의서</p>
                        <div class="textarea">
                            <textarea readonly>
&dot; 수강 여부와 관계없이
해당 강좌의 1회분 수강료 차감 후 택배 신청 가능하며
택배만 신청하여 자료 수령하실 수 없는 점 양해 부탁드립니다.

&dot; 예상보다 현저히 많은 폭발적인 택배 신청량과
강사님들의 강의 자료가 입고되는 시기가 매우 촉박함으로 인해

(경우에 따라서는 1% 내외)
오배송이나 누락 혹은 코로나 2.5단계를 이유로 
예전보다 배송이 상당히 지연되는 경우가 일부 지역 있을 수 있습니다.

(강남권의 경우 최대한 현장 수령 권장)

※ 오배송 /누락 /배송지연의 경우
택배 업무폰 010-7114-2372(문자전용)으로 연락주시면
자료 재배송 및 강의와 관련 보강 조치 연락드리겠습니다.
                            </textarea>
                        </div>
                        <label class="input-checkbox">
                            <input type="checkbox" name="chkAgreeMisDelv" id="chkAgreeMisDelv">
                            <span class="ico ico-checkbox"></span>

                            <span>위 내용에 동의합니다.</span>
                        </label>
                    </li>
                </ul>

                <div class="box-gray">
                    *동시에 여러 과목 신청하였음에도 불구하고<br>
                    과목별 강사별로 다른 날짜에 발송 및 도착할 수 있음을 유의 부탁드립니다.
                </div>

                <div class="table-btn mt1">
                    <input type="submit" id="btnSubmit" class="btn btn-black btn-close" value="등록하기" ><!--onclick="fnCloseModal('.modal-write')"-->
                </div>
            </div>
        
        </div>
    </div>
    <!--// E : 배송지 팝업 -->

    <!-- S : 현장 수령 안내 팝업 -->
    <div class="modal-container modal-M modal-delv-info">
        <div class="modal-header">
            <h3 class="modal-tit">단과수업 교재 현장 수령 방법 안내</h3>
            <a href="index.asp" class="btn-close">팝업창 닫기</a>
        </div>
    
        <div class="modal-content">
            <h4 class="tit-dep4">교재 수령 장소</h4>

            <ul class="list-dash">
                <li>
                    매주 수요일 PM 1시 부터 현장 수령이 시작 되며, 월~일 PM 1~10시 까지 아래 지정된 장소에서 수령 가능 합니다.

                    <div class="table-type1">
                        <table>
                            <colgroup>
                                <col style="width:25%;">
                                <col style="width:auto;">
                                <!-- <col style="width:25%;"> -->
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>학원명</th>
                                    <th>주소</th>
                                    <!-- <th>전화번호</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>시대인재 N관 지하 2층</th>
                                    <td>서울 강남구 대치동 988-15번지 태성빌딩 지하 2층</td>
                                    <!-- <td><a href="tel:02-123-4567">02-123-4567</a></td> -->
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
            </ul>

            <h4 class="tit-dep4 mt1">
                교재 수령 방법
            </h4>
            <ul class="list-dash">
                <li>현장 수업에 등록된 학생만 교재 수령이 가능 합니다.</li>
                <li>지정된 장소에서 현재 듣고 있는 선생님명, 요일, 시간을 말씀해 주세요.</li>
            </ul>
        </div>
    </div>
    <!--// E : 현장 수령 안내 팝업 -->
</div>
<!--// E : modal-wrap -->
	
    <!--// E : 현장/택배 배송 관련 -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->
