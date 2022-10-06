<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > Q&A/리뷰 > 학습질문하기 > 선생님 선택
' 모듈기능 : 마이페이지 > Q&A/리뷰 > 학습질문하기 > 선생님 선택
' 파 일 명 : pop.qnaselect.asp
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
<div class="dim-full dim-fixed pop-qnaselect">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit border-none">학습질문하기</h4>
    </div>

    <div class="content-layout">
        <div class="dim-select">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <td colspan="3">
                            <b>* 학습 질문 과목과 선생님을 골라주세요.</b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div class="form-select">
                                <select>
                                    <option hidden disabled selected>과목</option>
                                    <option value="">국어</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <% for i = 1 to 3 %>
                    <tr>
                        <td>
                            <label class="form-radio">
                                <input type="radio">
                                <span class="ico ico-radio"></span>
                                홍길동
                            </label>
                        </td>
                        <td>
                            <label class="form-radio">
                                <input type="radio">
                                <span class="ico ico-radio"></span>
                                홍길동
                            </label>
                        </td>
                        <td>
                            <label class="form-radio">
                                <input type="radio">
                                <span class="ico ico-radio"></span>
                                홍길동
                            </label>
                        </td>
                    </tr>
                    <% next %>
                </tbody>
            </table>
        </div>
    </div>

    <div class="board-btn page-btn">
        <button type="button" class="btn btn-lightgray btn-cancle">취소</button>
        <a href="/_on/teachers/qna_write.asp" class="btn btn-black btn-confirm">선택완료</a>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->