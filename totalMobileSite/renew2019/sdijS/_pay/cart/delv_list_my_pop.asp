<%
'-----------------------------------------------------------------------
' 업 무 명 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 배송지 목록
' 모듈기능 : 공통 > 마이페이지 > 장바구니 > 주문/결제 > 배송지 목록
' 파 일 명 : delv_list_my_add_pop.asp
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

<!-- S : 컨텐츠 영역 -->
<div class="dim-full dim-fixed delv-list-my-pop">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit"><!-- <small>주문/결제</small> -->배송지 목록</h4>
    </div>

    <div class="content-layout">
        <ul class="list-link">
            <% For i = 1 To 5 %>
            <li>
                <% if i = 1 then %>
                <em class="sticker">기본배송지</em>
                <% end if %>
                <span>회사 / 홍길동</span>
                <span>서울시 강남구 삼성로 434 쥬비스타워</span>
                <span>010-1234-5678 / 02-1234-5678</span>
                <span>배송 전 연락주세요.</span>
                <span class="txt-right">
                    <a href="javascript:void(0);" onclick="fnOpenLayer('delv-list-my-add-pop');" class="btn btn-darkgray btn-xs btn-close">수정</a>
                    <a href="javascript:void(0);" onclick="fnCloseLayer(this);" class="btn btn-black btn-xs">선택</a>
                </span>
            </li>
            <% next %>
        </ul>
    </div>

    <div class="board-btn page-btn">
        <a href="javascript:void(0);" onclick="fnOpenLayer('delv-list-my-add-pop');" class="btn btn-black btn-close">배송지 추가</a>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->