<!--include virtual="/totalWebSite/renew2019/sdijS/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 배송지 목록 선택 > 배송지 추가, 수정 팝업
' 파 일 명 : delv_list_my_add_pop.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



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
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<body>
<div class="pop-content">
    <h4 class="pop-tit">
        <% if true then %>
        배송지 추가
        <% else %>
        배송지 수정
        <% end if %>
    </h4>

    <div class="dim-form">
        <form action="" method="">
        <table>
            <colgroup>
                <col style="width:100px;">
                <col style="width:auto;">
                <col style="width:auto;">
                <col style="width:auto;">
            </colgroup>
            <tbody>
                <tr>
                    <th>배송지명</th>
                    <td colspan="3"><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td colspan="3"><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>연락처</th>
                    <td>
                        <div class="form-select">
                            <select>
                                <option value="010">010</option>
                            </select>
                        </div>
                    </td>
                    <td><input type="text" class="input-text"></td>
                    <td><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td colspan="2"><input type="text" class="input-text" readonly="readonly"></td>
                    <td><input type="button" value="우편번호 찾기" class="btn btn-black"></td>
                </tr>
                <tr>
                    <th>&nbsp;</th>
                    <td colspan="3"><input type="text" class="input-text" readonly="readonly" placeholder="주소"></td>
                </tr>
                <tr>
                    <th>&nbsp;</th>
                    <td colspan="3"><input type="text" class="input-text" placeholder="나머지 주소"></td>
                </tr>
                <tr>
                    <th>배송요청사항</th>
                    <td colspan="3"><input type="text" class="input-text"></td>
                </tr>
                <tr class="info-txt">
                    <th>&nbsp;</th>
                    <td colspan="3">
                        <label class="form-checkbox">
                            <input type="checkbox">
                            <span class="ico ico-checkbox"></span>
                            <span>기본 배송지로 저장</span>
                        </label>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="dim-btn">
            <button class="btn btn-black btn-confirm">확인</button>
            <button class="btn btn-darkgray btn-confirm">취소</button>
        </div>
        </form>
    </div>
</div>
</body>
</html>