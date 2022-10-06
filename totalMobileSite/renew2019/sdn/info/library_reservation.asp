<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<script type="text/javascript" src="/totalMobileSite/renew2019/common/js/lib/jquery.cycle2.js"></script>
<script type="text/javascript" src="/totalMobileSite/renew2019/common/js/lib/jquery.cycle2.carousel.min.js"></script>

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <h2 class="page-tit">부엉이 라이브러리 좌석 예약 서비스 </h2>

        <table class="line-t">
            <tbody>
                <tr>
                    <th>
                        신청방법
                    </th>
                    <td>
                        - 시대인재 N 재종 재원생만 본 서비스를 이용할 수 있습니다. <br>
                        - 핸드폰 번호 인증 후 원하는 좌석 번호를 선택하세요.
                    </td>
                </tr>
                <tr>
                    <th>
                        문의
                    </th>
                    <td>
                        - 부엉이라이브러리 이용 관련 문의: 02-538-2321 <br>
                        - 좌석 신청 및 변경 등 절차 문의: 1522-0568 (시대인재 ON)
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="board-btn mb30 txt-right">
            <a href="javascript:void(0);" class="btn btn-sm btn-gray" onclick="location.href='library_hp_auth.asp'">예약내역 조회</a>
        </div>

        <div class="step_list">
          <div class="on"><em>1</em>본인인증</div>
          <div><em>2</em>좌석선택</div>
          <div><em>3</em>완료</div>
        </div>

        <!-- S : 본인인증 -->
        <div class="form-defult mb60">

            <form id="searchForm" name="searchForm" method="post">

              <!-- 인증 Set s -->
              <input type="hidden" id="authIdx" name="authIdx" value="">
              <input type="hidden" id="authTimeFlag" name="authTimeFlag" value="N">
              <input type="hidden" id="authConfirmFlag" name="authConfirmFlag" value="N">
              <!-- 인증 Set e -->

              <table>
                  <colgroup>
                      <col style="width:auto;">
                      <col style="width:auto;">
                      <col style="width:auto;">
                  </colgroup>
                  <tbody>
                      <tr>
                          <th colspan="3">이름 *</th>
                      </tr>
                      <tr>
                          <td colspan="3"><input type="text" class="input-text" id="brieNm" name="brieNm" maxlength="15"></td>
                      </tr>
                      <tr>
                          <th colspan="3">휴대폰번호 *</th>
                      </tr>
                      <tr>
                          <td>
                              <select class="select" title="휴대폰번호 앞 세자리" name="brieHp1">
                                  <option value="010">010</option>
                                  <option value="011">011</option>
                                  <option value="017">017</option>
                                  <option value="018">018</option>
                                  <option value="019">019</option>
                              </select>
                          </td>
                          <td><input type="text" maxlength="4" class="input-text onlyNumber" title="휴대폰번호 가운데 네자리" name="brieHp2"></td>
                          <td><input type="text" maxlength="4" class="input-text onlyNumber" title="휴대폰번호 가운데 네자리" name="brieHp3"></td>
                      </tr>
                      <tr>
                          <td><input type="button" value="인증번호 받기" class="btn btn-darkgray" id="ipa" onclick="IfPhoneAuth()" style="cursor:pointer"></td>
                          <td colspan="2"></td>
                      </tr>
                      <tr>
                          <th>인증번호 *</th>
                      </tr>
                      <tr>
                          <td colspan="3">
                              <div class="cert-form">
                                  <input type="text" maxlength="6" class="input-text onlyNumber" id="authNumber" name="authNumber">
                                  <span class="cert-txt" id="authTimer">3:00</span>
                              </div>
                          </td>
                      </tr>
                      <tr>
                          <td>
                            <input type="button" class="btn btn-darkgray" value="확인" onClick="IfSearch();" style="cursor:pointer">
                          </td>
                          <td colspan="2"></td>
                      </tr>

                      <tr>
                        <td colspan="3">
                          * 입력한 핸드폰 번호로 인증번호가 발송됩니다. <br/>
                          * 인증된 핸드폰 번호로 추후 예약내역 조회 및 취소가 가능합니다.
                        </td>
                      </tr>
                      <tr>
                        <td colspan="3">
                          <label class="check mb10">
                                <input type="checkbox" id="check" name="check">
                                    <span class="b">
                                       개인정보 수집 및 이용에 동의합니다.
                                    </span>
                            </label>
                             <div class="agree-box">
                                시대인재  N 재수종합 학원은 부엉이라이브러리 자리 예약 서비스 제공을 위한 최소한의 개인정보를 수집·이용합니다. <br>
                                [수집항목] 이름, 핸드폰번호, 재원정보, 예약정보[수집목적] 학원 재원 정보 조회, 학원 수강 관련 정보제공 등에 사용[개인정보의 보유 및 이용기간] 서비스 종료 후 30일 이내 파기 단, 재원생 인증 결과 조회된 재원정보(학원, 수강반, 정보)는 회원 탈퇴 시 파기<br> <br>
                                <em>* 개인정보 수집 및 이용 동의를 하지 않을 경우 관련 서비스의 제한이 있을 수 있습니다.</em>
                            </div>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="3">
                           <input type="button" class="btn btn-black" value="좌석 선택" onClick="" style="cursor:pointer">
                        </td>
                      </tr>
                  </tbody>
              </table>
            </form>
        </div>
        <!--// E : 본인인증 -->


        <div class="link-t">
            PC사이트에서 더 많은 정보를 보실 수 있습니다.
            <a href="#">
                <span>시대인재 N재수종합반 사이트</span> <br>
                <span>PC 화면으로 보기</span>
            </a>
        </div>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->