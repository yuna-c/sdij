<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <div class="layer-top">
            <a href="javascript:history.back();"><span class="ico ico-close"></span></a>
        </div>

        <h2 class="page-tit">입실번호발급 로그인하기</h2>

        <p class="mb20 small-t">
            - 문자로 수신한 아이디, 비번을 이용하여 로그인 <br/>
            &nbsp; 하세요. <br>
            - 기존 시대인재 사이트에 가입하신 경우에도, 본인의 원래 <br/>
            &nbsp; 아이디가 아니라 입실번호 발급용으로 발송된 아이디,<br/>
            &nbsp; 비밀번호로 로그인을 하셔야 합니다. <br>
            <span class="txt-link color-red" style="display: inline;">
                - 아이디, 비번은 해당 수업이 종료되면 폐기되므로, 매 수업 <br/>
                &nbsp; 회차마다 인증 후 새로운 아이디, 비번을 받아야 합니다.<br/>
                &nbsp; (지난주 사용한 아이디로 이번주 수업 번호 발급 신청 불가)
            </span> <br>
            - 로그인 후 입실번호 신청이 가능합니다. <br>
            - 문자로 수신된 아이디, 비번은 영문소문자와 숫자로만 <br/>
            &nbsp; 구성되며 특수문자, 한글, 영문대문자는 입력할 수 없습니다.
        </p>

        <!-- S : 입실번호발급 로그인하기 -->
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
                </colgroup>
                <tbody>
                    <tr>
                        <th>아이디 *</th>
                    </tr>
                    <tr>
                        <td><input type="text" class="input-text" id="seatId" name="seatId" maxlength="15"></td>
                    </tr>
                    <tr>
                        <th>비밀번호 *</th>
                    </tr>
                    <tr>
                        <td><input type="password" class="input-text" id="seatpw" name="seatpw" maxlength="15"></td>
                    </tr>
                </tbody>
            </table>

            <!-- S : board-btn -->
            <div class="board-btn txt-center mt30">
                <input type="button" class="btn btn-strong btn-black" value="로그인" onclick="location.href='seat-confirm.asp'" style="cursor:pointer">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
        <!--// E : 입실번호발급 로그인하기 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->