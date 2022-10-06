<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 주문/결제 > (M)배송지 목록
' 모듈기능 : 시대인재 Digital > 주문/결제 > (M)배송지 목록
' 파 일 명 : incModalDelivery.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------



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
<div class="modal-container modal-M modal-delivery">
    <div class="modal-header">
        <h3 class="tit-dep4">배송지 목록</h3>
    </div>

    <div class="modal-content">
        <!-- S : 배송지 목록 리스트 -->
        <ul class="list-delivery">
            <% for i = 1 to 10 %>
            <li>
                <div class="name-area">
                    <% if i = 1 then '기본 배송지에 노출 %><i class="ico-check"></i><% end if %>
                    홍길동
                </div>
                <div class="add-area">
                    <p>서울 강남구 강남대로 777(압구정동) 2층 101호</p>
                    <p>010-1234-5678</p>
                </div>
                <div class="btn-area">
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-add');" class="txt-link">수정</a>
                <a href="javascript:void(0)" onclick="modalDialog.confirm('배송지를 삭제하시겠습니까?');" class="txt-link color-red">삭제</a>

                    <a href="javascript:void(0)" class="btn btn-M btn-select">선택</a>
                </div>
            </li>
            <% next %>
        </ul>
        <!--// E : 배송지 목록 리스트 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-delivery');" class="btn btn-gray">닫기</a>
        <a href="javascript:void(0)" onclick="fnOpenModal('.modal-add');" class="btn btn-black">배송지 추가</a>
    </div>
</div>