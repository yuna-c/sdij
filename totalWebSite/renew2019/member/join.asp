<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <h2 class="page-tit">회원가입</h2>

    <div class="form-layout">
        <!-- S : 회원가입 -->
        <div class="form-defult">
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
                        <th>이름 *</th>
                        <td colspan="3"><input type="text" class="input-text" placeholder="이름"></td><% '회원정보 수정 시 input readonly 추가 %>
                    </tr>
                    <tr>
                        <th>아이디 *</th>
                        <td colspan="2"><input type="text" class="input-text" placeholder="6자 이상의 영문, 영문+숫자 조합"></td><% '회원정보 수정 시 td colspan="3"으로 변경, input readonly 추가 %>
                        <td>
                            <input type="button" onclick="fnAlertMsg('사용 가능한 아이디입니다.')" value="중복확인" class="btn btn-black">
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호 *</th>
                        <td colspan="3"><input type="text" class="input-text" placeholder="8자 이상의 영문, 숫자, 특수문자 중 2가지 조합"></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인 *</th>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th>생년월일 *</th>
                        <% if true then '회원가입 시 %>
                        <td>
                            <select class="select">
                                <option value="년">년</option>
                            </select>
                        </td>
                        <td>
                            <select class="select">
                                <option value="월">월</option>
                            </select>
                        </td>
                        <td>
                            <select class="select">
                                <option value="일">일</option>
                            </select>
                        </td>
                        <% else '회원정보 수정 시 %>
                        <td>
                            <input type="text" class="input-text" value="년" readonly>
                        </td>
                        <td>
                            <input type="text" class="input-text" value="월" readonly>
                        </td>
                        <td>
                            <input type="text" class="input-text" value="일" readonly>
                        </td>
                        <% end if %>
                    </tr>
                    <tr>
                        <th>성별 *</th>
                        <td colspan="3">
                            <label class="radio">
                                <input type="radio">
                                <span>남</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>여</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>휴대폰 번호 *</th>
                        <% if true then '회원가입 시 %>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" class="input-text"></td>
                        <td><input type="text" class="input-text"></td>
                        <% else '회원정보 수정 시 %>
                        <td>
                            <input type="text" class="input-text" value="010" readonly>
                        </td>
                        <td>
                            <input type="text" class="input-text" value="1234" readonly>
                        </td>
                        <td>
                            <input type="text" class="input-text" value="5678" readonly>
                        </td>
                        <% end if %>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <span class="txt">상품, 입시정보, 이벤트 정보 등을 SMS로 받음</span>
                            <label class="radio">
                                <input type="radio">
                                <span>받음</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>받지않음</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>학교 *</th>
                        <td colspan="2"><input type="text" class="input-text"></td>
                        <% if false then 'dim layer 오픈 시 %>
                        <td><input type="button" onclick="fnOpenLayer('dim6'); return false;" value="학교검색" class="btn btn-black"></td>
                        <% else %>
                        <td><input type="button" onclick="window.open('/totalWebSite/renew2019/common/include/incDim6.asp', '학교검색', 'width=480, height=550, location=no, status=no, scrollbars=no');" value="학교검색" class="btn btn-black"></td>
                        <% end if %>
                    </tr>
                    <tr>
                        <th>계열/학년</th>
                        <td colspan="3">
                            <select class="select select-mid">
                                <option value="선택">선택</option>
                            </select>
                            <select class="select select-mid">
                                <option value="학년">학년</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>시대인재 재원여부 *</th>
                        <td colspan="3">
                            <label class="radio">
                                <input type="radio">
                                <span>없음</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>재원했었음</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>현재 재원중</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일 *</th>
                        <td><input type="text" class="input-text"></td>
                        <td colspan="2">
                            <select class="select">
                                <option value="선택">선택</option>
                                <option value="옵션1">옵션1</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <span class="txt">상품, 입시정보, 이벤트 정보 등을 이메일로 받음</span>
                            <label class="radio">
                                <input type="radio">
                                <span>받음</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>받지않음</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>주소 *</th>
                        <td colspan="2"><input type="text" class="input-text"></td>
                        <td><input type="button" value="우편번호 찾기" class="btn btn-black"></td>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                        <td colspan="3"><input type="text" class="input-text" placeholder="주소"></td>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                        <td colspan="3"><input type="text" class="input-text" placeholder="나머지 주소"></td>
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" class="input-text"></td>
                        <td><input type="text" class="input-text"></td>
                    </tr>
                </tbody>
            </table>

            <!-- S : form-agree : 이용약관 -->
            <div class="form-agree">
                <p class="agree-all">
                    <label class="check">
                        <input type="checkbox" class="all-check">
                        <span>시대인재 사이트를 이용하기 위한 통합 이용약관, 정보 활용 및 개인정보 제3자 제공에<br>모두 동의합니다.</span>
                    </label>
                </p>

                <ul class="agree-list">
                    <li>
                        <label class="check">
                            <input type="checkbox">
                            <span>시대인재 이용약관(필수)</span>
                        </label>
                        <a href="#" onclick="fnOpenLayer('dim12'); return false;" class="txt-link">자세히보기</a>
                    </li>
                    <li>
                        <label class="check">
                            <input type="checkbox">
                            <span>개인정보 처리방침(필수)</span>
                        </label>
                        <a href="#" onclick="fnOpenLayer('dim13'); return false;" class="txt-link">자세히보기</a>
                    </li>
                    <li>
                        <label class="check">
                            <input type="checkbox">
                            <span>개인정보 수집 및 프로모션 이용안내(선택)</span>
                        </label>
                        <a href="#" onclick="fnOpenLayer('dim14'); return false" class="txt-link">자세히보기</a>
                    </li>
                </ul>

                <input type="button" onclick="fnAlertMsg('회원가입이 되었습니다.')" value="확인" class="btn btn-black btn-strong">
            </div>
            <!--// E : form-agree : 이용약관 -->
            </form>
        </div>
        <!--// E : 회원가입 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : dim-layer -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incDimLayer.asp"-->
<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 