<!--include virtual="/totalWebSite/renew2019/sdijS/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 배송지 목록
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 배송지 목록
' 파 일 명 : delv_list_my_pop.asp
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
    <div class="tit-area">
        <h4 class="pop-tit">배송지 목록</h4>

        <button onclick="window.open('./delv_list_my_add_pop.asp','배송지 추가','width=560, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="btn btn-black btn-sm tit-side">배송지 추가</button>
    </div>

    <div class="dim-table">
        <table>
            <caption>배송지 목록</caption>
            <colgroup>
                <col width="70px">
                <col width="80px">
                <col width="70px">
                <col width="120px">
                <col width="auto">
                <col width="100px">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">선택</th>
                    <th scope="col">배송지명</th>
                    <th scope="col">이름</th>
                    <th scope="col">연락처</th>
                    <th scope="col">배송지</th>
                    <th scope="col">관리</th>
                </tr>
            </thead>
            <tbody>
                <% For i = 1 To 5 %>
                <tr>
                    <td>
                        <button type="button" class="btn btn-black btn-xs2">선택</button>
                    </td>
                    <td>회사회사</td>
                    <td>홍길동</td>
                    <td>010-1234-5678</td>
                    <td class="txt-left">
                        <% if i = 1 then %>
                        <em class="sticker">기본배송지</em><br>
                        <% end if %>
                        서울시 강남구 삼성동 123123-44645646 룰루룰루룰루룰루룰루룰루룰루
                    </td>
                    <td>
                        <button type="button" onclick="window.open('./delv_list_my_add_pop.asp','배송지 추가','width=560, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;" class="txt-link">수정</button>&nbsp;
                        <button type="button" class="txt-link color-red">삭제</button>
                    </td>
                </tr>
                <% next %>
                <% '데이터 없을 경우 %>
                <tr>
                    <td class="no-data" colspan="6">배송지 목록이 없습니다.</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>