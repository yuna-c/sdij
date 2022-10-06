<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 단과(대치/목동/분당) 강의실 입실번호 발급 시스템
' 모듈기능 : 비밀번호 찾기
' 파 일 명 : findPW.asp
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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!-- S : 페이지별 css -->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">
<!--// E : 페이지별 css -->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

<!-- S : container -->
<div id="container" class="pw-find-container">
    <!-- S : 비밀번호 찾기 -->
    <div class="container-form form-layout">
        <h2 class="tit-dep1">비밀번호 찾기</h2>

        <form action="" method="">
            <div class="form-small">
                <ul>
                    <li>
                        <label class="input-type1">
                            <input type="text" placeholder="이름">
                        </label>
                    </li>
                    <li>
                        <label class="input-type1">
                            <input type="text" placeholder="아이디">
                        </label>
                    </li>
                    <li class="type-col4">
                        <label class="select-type1">
                            <select>
                                <option value="">010</option>
                            </select>
                        </label>

                        <label class="input-type1">
                            <input type="tel" maxlength="4">
                        </label>

                        <label class="input-type1">
                            <input type="tel" maxlength="4">
                        </label>

                        <span><button type="button" class="btn">인증번호 받기</button></span>
                    </li>
                    <li class="type-col2">
                        <label class="input-type1">
                            <input type="tel" maxlength="6" placeholder="인증번호">
                        </label>

                        <span><button type="button" class="btn">확인</button></span>
                    </li>
                </ul>

                <div class="form-btn">
                    <input type="button" class="btn btn-disabled" value="취소">
                    <a href="javascript:void(0);" onclick="fnOpenModal('.modal-password')"; class="btn btn-black">확인</a>
                </div>
            </div>
        </form>
    </div>
    <!--// E : 비밀번호 찾기 -->

    <!-- S : modal-wrap -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 임시 비밀번호 발급 팝업 -->
        <div class="modal-container modal-M modal-password">
            <div class="modal-header">
                <h3 class="modal-tit">임시 비밀번호 발급</h3>
                <a href="javascript:void(0);" class="btn-close">팝업창 닫기</a>
            </div>
        
            <div class="modal-content txt-center">
                임시비밀번호 : <b>123456789</b><br>
                변경된 비밀번호로 로그인 해주세요.

                <div class="table-btn mt1">
                    <a href="login.asp" class="btn btn-black">로그인</a>
                </div>
            </div>            
        </div>
        <!--// E : 임시 비밀번호 발급 팝업 -->
    </div>
    <!--// E : modal-wrap -->
</div>
<!--// E : container -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

// modal open
function fnOpenModal(modal){ // fnOpenLaver(오픈하고 싶은 class or id)
	var $modal = $(modal);

	$modal.show().parents('.modal-wrap').fadeIn(500);

	$('.btn-close').on('click', function(){
		$modal.hide().parents('.modal-wrap').fadeOut(500);
	});

	return false;
}

//-->
</script>
<!--// E : 페이지별 스크립트 -->
    
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->