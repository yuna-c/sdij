<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/layer.css">

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 설명회 신청 -->
    <div class="content-layout">
        <div class="layer-top">
            <a href="javascript:history.back();"><span class="ico ico-close"></span></a>
        </div>

        <h2 class="page-tit">
            문자수신 DB등록
            <small>
                DB에 등록하시면 설명회/강좌 안내 문자를 수신할 수 있습니다.<br>
                인증받은 핸드폰 번호가 시대인재 문자 DB로 저장됩니다.
            </small>
        </h2>

        <!-- S : 설명회 신청 -->
        <div class="form-defult">
            <form action="" method="">
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
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th colspan="3">휴대폰번호 *</th>
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
                        <td><input type="button" onclick="fnAlertMsg('인증되었습니다.')" value="인증번호 받기" class="btn btn-darkgray"></td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <th>인증번호 *</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="cert-form">
                                <input type="text" maxlength="6" class="input-text">
                                <span class="cert-txt">3:00</span>
                            </div>
                        </td>
                        <td>
                            <input type="button" onclick="fnAlertMsg('인증이 실패되었습니다.<br>인증번호를 다시 입력하세요.')" value="확인" class="btn btn-darkgray">
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">학교 *</th>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th colspan="3">학년 *</th>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th colspan="3">계열 *</th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <select class="select">
                                <option value="선택">선택</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="form-agree">
                <div class="agree-box">약관내용</div>
                
                <div class="txt-left">
                    <label class="radio">
                        <input type="radio">
                        <span>동의합니다.</span>
                    </label>

                    <label class="radio">
                        <input type="radio">
                        <span>동의하지 않습니다.</span>
                    </label>
                </div>
            </div>

            <!-- S : board-btn -->
            <div class="board-btn txt-center mt30">
                <input type="submit" class="btn btn-lg btn-strong btn-black" value="신청">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
        <!--// E : 설명회 신청 -->
    </div>
    <!--// E : 설명회 신청 -->    
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"--> 