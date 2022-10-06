<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 멤버 > 회원가입
' 모듈기능 : 보충강좌 서비스 > 멤버 > 회원가입
' 파 일 명 : join.asp
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
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

<!-- S : header -->
<header id="header">
    <div class="content-layout">
        <a href="javascript:window.history.back();" class="btn-back">뒤로가기</a>
        <h1 class="tit-dep1">회원가입</h1>
    </div>
</header>
<!--// E : header -->

<!-- S : container -->
<section id="container" class="flex-container pw-find-container">
    <!-- S : 회원가입 영역 -->
    <article class="container-form form-layout">
        <form action="" method="">
            <div class="form-small">
                <ul>
                    <li>
                        <label class="input-text">
                            <input type="text" placeholder="아이디">
                        </label>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="password" placeholder="비밀번호">
                        </label>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="password" placeholder="비밀번호 확인">
                        </label>
                    </li>
                    <li class="type-col4">
                        <label class="select">
                            <select>
                                <option value="">010</option>
                            </select>
                        </label>

                        <label class="input-text">
                            <input type="tel" maxlength="4">
                        </label>

                        <label class="input-text">
                            <input type="tel" maxlength="4">
                        </label>

                        <span><button type="button" class="btn">인증번호 받기</button></span>
                    </li>
                    <li class="type-col2">
                        <label class="input-text">
                            <input type="tel" maxlength="6" placeholder="인증번호">
                        </label>

                        <span><button type="button" class="btn">확인</button></span>
                    </li>
                    <li>
                        <div class="form-agree">
                            <p class="agree-tit">
                                <label class="input-checkbox">
                                    <input type="checkbox" onclick="fnTermsAll(this);">
                                    <span class="ico ico-checkbox"></span>

                                    <span>이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</span>
                                </label>
                            </p>

                            <ul class="agree-list">
                                <li>
                                    <label class="input-checkbox">
                                        <input type="checkbox" onclick="fnTermsList(this);" id="agree1">
                                        <span class="ico ico-checkbox"></span>

                                        <span>사이트 이용약관(필수)</span>
                                    </label>
                                    <a href="javascript:void(0);" onclick="fnOpenModal('.modal-terms1');" class="txt-link">보기</a>
                                </li>
                                <li>
                                    <label class="input-checkbox">
                                        <input type="checkbox" onclick="fnTermsList(this);" id="agree2">
                                        <span class="ico ico-checkbox"></span>

                                        <span>개인정보 수집 및 이용에 대한 안내(필수)</span>
                                    </label>
                                    <a href="javascript:void(0);" onclick="fnOpenModal('.modal-terms2');" class="txt-link">보기</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>

                <div class="form-btn">
                    <input type="button" class="btn btn-disabled" value="취소">
                    <input type="submit" class="btn btn-black" value="확인">
                </div>
            </div>
        </form>
    </article>
    <!--// E : 회원가입 영역 -->
</section>
<!--// E : container -->

<!-- S : modal-wrap -->
<div class="modal-wrap">
    <div class="modal-bg"></div>

    <!-- S : 사이트 이용 약관 -->
    <!--#include file="modal.terms1.asp"-->
    <!--// E : 사이트 이용 약관 -->

    <!-- S : 개인정보 수집 및 이용에 대한 안내 -->
    <!--#include file="modal.terms2.asp"-->
    <!--// E : 개인정보 수집 및 이용에 대한 안내 -->
</div>
<!--// E : modal-wrap -->

<script>
// 모든 약관 동의
function fnTermsAll(obj){
	$obj = $(obj);

	if( $obj.is(':checked') ){
		$obj.parents('.agree-tit').next('.agree-list').find('input').prop('checked', true);
	}else{
		$obj.parents('.agree-tit').next('.agree-list').find('input').prop('checked', false);
	}
}

// 개별 약관 동의
function fnTermsList(obj){
	$objParent = $(obj).parents('.agree-list');

	if( $objParent.find('input:checked').length === $objParent.find('input').length ){
		$objParent.prev('.agree-tit').find('input').prop('checked', true);
	}else{
		$objParent.prev('.agree-tit').find('input').prop('checked', false);
	}
}

// 약관 팝업 내에 동의버튼 클릭 시 
function fnTermsModal(obj){
    var $obj = $(obj);

    $obj.prop('checked', true);
    fnTermsList($obj);
}
</script>

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->