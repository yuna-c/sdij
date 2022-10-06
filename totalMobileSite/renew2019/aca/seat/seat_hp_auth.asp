<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <div class="layer-top">
            <a href="javascript:history.back();"><span class="ico ico-close"></span></a>
        </div>

        <h2 class="page-tit">발급내역 조회</h2>

        <!-- S : 발급내역 조회 -->
        <div class="form-defult">

            <form id="searchForm" name="searchForm" method="post">
            <input type="hidden" id="briefNm" name="briefNm" value="">
            <input type="hidden" id="briefHp" name="briefHp" value="">

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
                        <!--td>
                            <input type="button" onclick="IfSearch();" value="확인" class="btn btn-darkgray">
                        </td-->
                    </tr>
                </tbody>
            </table>

            <!-- S : board-btn -->
            <div class="board-btn txt-center mt30">
                <input type="button" class="btn btn-lg btn-strong btn-black" value="확인" onclick="location.href='library_list.asp'" style="cursor:pointer">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
        <!--// E : 발급내역 조회 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->