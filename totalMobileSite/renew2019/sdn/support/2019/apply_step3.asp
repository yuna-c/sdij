<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 지원하기 3단계
' 모듈기능 :
' 파 일 명 :
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

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/support.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 콘텐츠 영역 -->
<div class="layout-container pb0">
    <!-- S : 레이아웃 -->
    <div class="content-layout support">
        <!-- S : 면접일정 영역 -->
        <h2 class="page-tit border-tit mb20">시대인재 대학생<br>서포터즈 지원서 작성</h2>

        <div class="step-box">
            <h4 class="tit">STEP3. 면접 일정 선택</h4>
            <ul class="step">
                <li class="prev">1</li>
                <li class="prev">2</li>
                <li class="on">3</li>
            </ul>
        </div>
        <ul class="list-dotted mt30">
            <li style="letter-spacing:-0.5px;">면접을 진행할 수 있는 날짜를 <span>모두</span> 선택해주세요.</li>
        </ul>

        <div class="board-table table-list1 mt10">
            <table>
                <colgroup>
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>가능여부/날짜</th>
                    </tr>
                    <tr>
                        <td>
                            <label class="form-checkbox">
                                <input type="checkbox">
                                <span class="ico ico-checkbox"></span>
                                <span>11월 17일 (일)</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <label class="form-checkbox ">
                                <input type="checkbox">
                                <span class="ico ico-checkbox"></span>
                                <span>11월 21일 (목)</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <label class="form-checkbox ">
                                <input type="checkbox">
                                <span class="ico ico-checkbox"></span>
                                <span>11월 24일 (월)</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <label class="form-checkbox ">
                                <input type="checkbox">
                                <span class="ico ico-checkbox"></span>
                                <span>11월 26일 (화)</span>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h2 class="table-tit mt30">
            개인정보 수집 및 활용 동의(필수)
        </h2>

        <div class="agree-box mt30">
            수집목적: 입사 지원 및 선발전형, 이력관리, 기타  채용 진행사항 안내<br>
            수집항목: 본인사진, 성명, 생년월일, 핸드폰번호, 최종학력, 전공, 이메일주소, 주소, 경력사항, 자기소개<br>
            보유기간: 제출 시점부터 3년간 보유<br>
            개인정보 수집 및 이용에 동의하지 않을 권리가 있습니다. 다만, 동의를 거부할 경우 입사 지원을 하실 수 없습니다.
        </div>

        <div class="mt30">
            <label class="form-radio mr20">
                <input type="radio">
                <span class="ico ico-radio"></span>
                동의합니다.
            </label>

            <label class="form-radio">
                <input type="radio">
                <span class="ico ico-radio"></span>
                동의하지 않습니다.
            </label>
        </div>
        <div class="step-btn float-area mt50">
            <a href="apply_ok.asp" class="btn btn-step-next next_submit" >다음</a>
        </div>
        <!--// E : 면접일정 영역 -->

    </div>
    <!--// E: 레이아웃 -->
</div>
<!--// E : 콘텐츠 영역 -->

<!-- S : dim-layer -->
<div class="dim-layer">
    <div class="dim-bg"></div>

    <!-- S : 대상자 아닐때 alert -->
    <div class="dim-content dim-alert dim-tit-alert dim-support-alert1">
        <h4 class="dim-tit">안내</h4>

        <div class="dim-txt">귀하는 2019년 시대인재N 재수종합 재원생이 아니므로 지원할 수 없습니다.<br> 만약 올해 재수종합 재원생임에도 이 메시지를 확인했을 경우 question@sdij.com으로 문의해주세요.</div>

        <div class="dim-btn"><button onclick="fnCloseAlert();return false;" class="btn btn-black btn-confirm">확인</button></div>
    </div>
    <!--// E : 대상자 아닐때 alert -->
</div>
<!--// E : dim-layer -->

<script type="text/javascript">

$(function(){
	$('.table-list1 td label').on('click',function(e){
		if( $(this).find('input').is(':checked')===true ){
			console.log($(this))
			$(this).parents('td').addClass('on')
		} else {
			$(this).parents('td').removeClass('on')
		}
	})
});

</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->
