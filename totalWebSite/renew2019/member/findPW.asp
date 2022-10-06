<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <h2 class="page-tit mt90">비밀번호 찾기</h2>

    <div class="form-layout">
        <!-- S : 비밀번호 찾기 -->
        <div class="form-small">
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
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증되었습니다.')" value="인증번호 받기" class="btn btn-black">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><div class="cert-form">
                            <input type="text" maxlength="6" class="input-text" placeholder="인증번호">
                            <span class="cert-txt">3:00</span>
                        </div></td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증이 실패되었습니다.<br>인증번호를 다시 입력하세요.')" value="확인" class="btn btn-black">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4"><input type="password" class="input-text" placeholder="새 비밀번호 (8자 이상의 영문, 숫자, 특수문자 중 2가지 조합)"></td>
                    </tr>
                    <tr>
                        <td colspan="4"><input type="password" class="input-text" placeholder="새 비밀번호 확인"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <% if true then '완료 되었을 경우 %>
                            <input type="button" onclick="fnAlertMsg('비밀번호가 변경되었습니다.')" value="확인" class="btn btn-black btn-strong">
                            <% else '일치하는 정보가 없을 경우 %>
                            <input type="button" onclick="fnAlertMsgTit('비밀번호를 잊으셨나요?', '입력하신 정보와 일치하는 비밀번호가 없습니다.<br>입력정보를 다시 확인해 주세요.')" value="확인" class="btn btn-black btn-strong">
                            <% end if %>
                        </td>
                    </tr>
                </tbody>
            </table>
            </form>
        </div>
        <!--// E : 비밀번호 찾기 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : dim-layer -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incDimLayer.asp"-->
<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 