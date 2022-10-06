<%
'-----------------------------------------------------------------------
' 업 무 명 : 결제 > 캐쉬/쿠폰 > 쿠폰등록하기
' 모듈기능 : 결제 > 캐쉬/쿠폰 > 쿠폰등록하기
' 파 일 명 : pop.couponRegist.asp
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
<div class="dim-full dim-fixed pop-couponregist">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit border-none">쿠폰 등록하기</h4>
    </div>

    <div class="content-layout">
        <div class="dim-select">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <b cclass="tit">쿠폰번호입력</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-input">
                                <input type="text" placeholder="‘-’ 없이 16자리를 모두입력해 주세요">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="txt-guide color-red">* 쿠폰 번호를 정확하게 입력 후 등록 버튼을 클릭 하세요.</p>
                            <p class="txt-guide">* 쿠폰 번호는 영문, 숫자 혼합으로 이루어져 있습니다.</p>
                            <p class="txt-guide">* 대소문자 구분 없이 입력 가능합니다.</p>
                            <p class="txt-guide">
                                * 쿠폰 마다 등록/사용 기간이 다르니,<br>
                                &nbsp;&nbsp;&nbsp;등록 후 My coupon &gt; 쿠폰확인하기를 통해서 확인해 주세요.
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="board-btn page-btn">
        <button type="button" class="btn btn-lightgray btn-cancle">취소</button>
        <a href="javascript:void(0);" class="btn btn-black btn-confirm">등록하기</a>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->