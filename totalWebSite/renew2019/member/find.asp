<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <h2 class="page-tit mt90">아이디/비밀번호 찾기</h2>

    <div class="form-layout">
        <!-- S : 아이디 찾기 -->
        <div class="form-small">
            <form action="" method="">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th colspan="3">아이디 찾기</th>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text" placeholder="이름"></td>
                    </tr>
                    <tr>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <% if true then '정보 미기입 시 %>
                            <input type="button" onclick="fnAlertMsg('모든 정보를 정확히 넣어주세요.')" value="확인" class="btn btn-black btn-strong">
                            <% else '일치하는 정보가 없을 경우 %>
                            <input type="button" onclick="fnAlertMsgTit('아이디를 잊으셨나요?', '입력하신 정보와 일치하는 아이디가 없습니다.<br>입력정보를 다시 확인해 주세요.')" value="확인" class="btn btn-black btn-strong">
                            <% end if %>
                        </td>
                    </tr>
                </tbody>
            </table>
            </form>
        </div>
        <!--// E : 아이디 찾기 -->

        <!-- S : 비밀번호 찾기 -->
        <div class="form-small border-none">
            <form action="" method="">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th colspan="3">비밀번호 찾기</th>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text" placeholder="이름"></td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text" placeholder="아이디""></td>
                    </tr>
                    <tr>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <% if true then '정보 미기입 시 %>
                            <input type="button" onclick="fnAlertMsg('모든 정보를 정확히 넣어주세요.')" value="확인" class="btn btn-black btn-strong">
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