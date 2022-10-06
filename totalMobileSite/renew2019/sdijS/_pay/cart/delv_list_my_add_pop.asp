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
<div class="dim-full dim-fixed delv-list-my-add-pop">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit">
            <!-- <small>주문/결제</small> -->
            <% if true then %>
            배송지 추가
            <% else '수정 시 타이틀 변경 %>
            배송지 수정
            <% end if %>
        </h4>
    </div>

    <div class="content-layout">
        <div class="pop-form">
        <form action="" method="">
            <dl>
                <dt>배송지명</dt>
                <dd>
                    <div class="form-input">
                        <input type="text">
                    </div>
                    <!-- <p class="alert-msg"></p><% '알럿 메시지 %> -->
                </dd>

                <dt>이름</dt>
                <dd>
                    <div class="form-input">
                        <input type="text">
                    </div>
                    <!-- <p class="alert-msg"></p><% '알럿 메시지 %> -->
                </dd>

                <dt>연락처</dt>
                <dd>
                    <div class="form-tel">
                        <div class="form-select">
                            <select>
                                <option value="010">010</option>
                            </select>
                        </div>

                        <div class="form-input">
                            <input type="text">
                        </div>

                        <div class="form-input">
                            <input type="text">
                        </div>
                    </div>

                    <!-- <p class="alert-msg"></p><% '알럿 메시지 %> -->
                </dd>
                
                <dt>주소</dt>
                <dd>
                    <div class="flex-area">
                        <div class="form-input">
                            <input type="text" readonly="readonly">
                        </div>
                        <input type="button" value="우편번호 찾기" class="btn btn-black">
                    </div>
                </dd>
                <dd>
                    <div class="form-input">
                        <input type="text" readonly="readonly" placeholder="주소">
                    </div>
                </dd>
                <dd>
                    <div class="form-input">
                        <input type="text" placeholder="나머지 주소">
                    </div>
                    <!-- <p class="alert-msg"></p><% '알럿 메시지 %> -->
                </dd>

                <dt>배송요청사항</dt>
                <dd>
                    <div class="form-input">
                        <input type="text">
                    </div>
                    <!-- <p class="alert-msg"></p><% '알럿 메시지 %> -->
                </dd>

                <dd>
                    <label class="form-checkbox">
                        <input type="checkbox">
                        <span class="ico ico-checkbox"></span>
                        <span>기본 배송지로 저장</span>
                    </label>
                </dd>
            </dl>     
        </form>
        </div>
    </div>

    <div class="board-btn page-btn">
        <% '배송지 수정 시 노출 %>
        <button class="btn btn-darkgray btn-del"><span class="ico ico-del">배송지 삭제</span></button>
        <% '// 배송지 수정 시 노출 %>
        <a href="javascript:void(0);" onclick="fnOpenLayer('delv-list-my-pop');" class="btn btn-black btn-close">저장</a>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->