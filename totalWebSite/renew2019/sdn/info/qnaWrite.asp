<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <!-- S : 1:1 질의 응답 등록 -->
    <div class="form-layout">
        <h2 class="page-tit border-tit">1:1 질의 응답 등록</h2>

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
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th>휴대폰번호 *</th>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                    </tr>
                    <tr>
                        <th>이메일 *</th>
                        <td colspan="2">
                            <input type="text" class="input-text input-text-mid">
                            @
                            <input type="text" class="input-text input-text-mid">
                        </td>
                        <td>
                            <select class="select">
                                <option value="직접선택">직접선택</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>상담분류 *</th>
                        <td colspan="3">
                            <select class="select select-mid">
                                <option value="직접선택">직접선택</option>
                            </select>
                            <select class="select select-mid">
                                <option value="직접선택">직접선택</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>제목 *</th>
                        <td colspan="3"><input type="text" class="input-text"></td>
                    </tr>
                    <tr>
                        <th>비밀번호 *</th>
                        <td colspan="3"><input type="password" class="input-text"></td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <span class="txt">* 비공개 비밀번호를 숫자 4자 이상 6자 이하로 입력하세요.<br>게시글 수정 및 답변확인 시 비밀번호를 입력하셔야 합니다.</span>
                        </td>
                    </tr>
                    <tr>
                        <th>내용 *</th>
                        <td colspan="3">
                            <textarea class="textarea"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>첨부파일</th>
                        <td colspan="3"><input type="file"></td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <span class="txt">* 10MB 이하의 파일을 최대 5개까지 첨부하실 수 있습니다.<br>(exe, zip 등 일부 파일은 첨부 제외)</span>
                        </td>
                    </tr>
                    <tr>
                        <th>답변알림</th>
                        <td colspan="3">
                            <label class="check">
                                <input type="checkbox">
                                <span>답변 완료 시, 문자 메세지 알림을 받겠습니다.</span>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="form-agree">
                <div class="agree-box">약관내용</div>
                
                <div class="txt-left">
                    <label class="check">
                        <input type="checkbox">
                        <span>네, 개인정보 수집·이용에 동의합니다.</span>
                    </label>
                </div>
            </div>

            <!-- S : board-btn -->
            <div class="board-btn txt-center">
                <a href="#" class="btn btn-lg btn-strong btn-darkgray">이전</a>
                <input type="submit" class="btn btn-lg btn-strong btn-black" value="등록">
            </div>
            <!--// E : board-btn -->
            </form>
        </div>
    </div>
    <!--// E : 1:1 질의 응답 등록 -->    
</div>
<!--// E : 컨텐츠 영역 -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 