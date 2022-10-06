<!-- S : modal-wrap -->
<div class="modal-wrap">
    <div class="modal-bg"></div>

    <!-- S : 배송지 팝업 -->
    <div class="modal-container modal-M modal-delv">
        <div class="modal-header">
            <h3 class="modal-tit">배송지 등록</h3>
            <a href="javascript:void(0)" class="btn-close">팝업창 닫기</a>
        </div>
    
        <div class="modal-content">        
            <div class="form-small">
                <ul>
                    <li class="type-col2">
                        <label class="input-text">
                            <input type="text" placeholder="우편번호" readonly="readonly">
                        </label>

                        <span><button type="button" class="btn btn-black">검색</button></span>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="text" placeholder="주소">
                        </label>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="text" placeholder="상세주소">
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
                            <input type="checkbox">
                            <span class="ico ico-checkbox"></span>

                            <span>위 내용에 동의합니다.</span>
                        </label>
                    </li>
                </ul>

                <div class="box-gray">
                    *교재는 매주 월-화 중 출고 되어 화-목 중 배송될 예정이나, 택배사 사정에 따라 변동이 있을 수 있습니다.<br><br>
                    *주소 변경을 원하실 경우 전 주 토요일까지 완료해 주셔야 차주 월요일 출고 시 변경된 주소로 배송 됩니다.
                </div>

                <div class="table-btn mt1">
                    <input type="submit" id="btnSubmit" class="btn btn-black" value="등록하기" onclick="fnCloseModal('.modal-write')">
                </div>
            </div>
        
        </div>
    </div>
    <!--// E : 배송지 팝업 -->

    <!-- S : 현장 수령 안내 팝업 -->
    <div class="modal-container modal-M modal-delv-info">
        <div class="modal-header">
            <h3 class="modal-tit">단과수업 교재 현장 수령 방법 안내</h3>
            <a href="javascript:void(0)" class="btn-close">팝업창 닫기</a>
        </div>
    
        <div class="modal-content">        
            <ul class="list-dash">
                <% if true then 'CASE1 장소/방법 결정이 났을 경우 %>
                <li>
                    <p class="strong">교재 수령 장소</p>
                    월-금 오후 1시 부터 오후 8시까지, 주말 오후 1시부터 오후 8시까지 아래 지정된 장소에서 수령 가능 합니다.

                    <div class="table-type1">
                        <table>
                            <colgroup>
                                <col style="width:25%;">
                                <col style="width:auto;">
                                <col style="width:25%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>학원명</th>
                                    <th>주소</th>
                                    <th>전화번호</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>시대인재 본관</th>
                                    <td>서울시 주소</td>
                                    <td><a href="tel:02-123-4567">02-123-4567</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li>
                    <p class="strong">교재 수령 방법</p>

                    <ul class="list-number">
                        <li>현장 수업에 등록된 학생만 교재 수령이 가능 합니다.</li>
                        <li>지정된 장소에서 현재 듣고 있는 선생님명, 요일, 시간을 말씀해 주세요.</li>
                        <li>정확한 확인을 위하여 학생증 혹은 신분증, 수강증을 지참해 주세요. </li>
                    </ul>
                </li>

                <% else 'CASE2 장소/방법 미정일 경우 %>
                <li>
                    <p class="strong">교재 수령 장소 및 방법</p>
                    현장 수령 신청자 대상으로 월요일 오후까지 문자 발송 예정 입니다.
                </li>
                <% end if %>
            </ul>
        </div>
    </div>
    <!--// E : 현장 수령 안내 팝업 -->
</div>
<!--// E : modal-wrap -->