<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 단과(대치/목동/분당) 강의실 입실번호 발급 시스템
' 모듈기능 : 메인
' 파 일 명 : default.asp
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
<div id="container" class="lecture-container relative">
    <div class="container-user">
        <a href="editPW.asp" class="btn btn-M">비밀번호 변경</a>
    </div>

    <!-- S : 리스트 -->
    <div class="container-list content-layout">
        <h2 class="tit-dep1">
            시대인재 강의실 입실번호 발급
        </h2>

        <div class="table-type1 table-mobile">
            <table>
                <colgroup>
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>분원</th>
                        <th>선생님</th>
                        <th>수업명</th>
                        <th>수업 회차</th>
                        <th>수업 일시</th>
                        <th>번호신청 일시</th>
                        <th>번호발급</th>
                    </tr>
                </thead>
                <tbody>
                    <% for i = 1 to 10 %>
                    <tr>
                        <td data-th="분원">대치</td>
                        <td data-th="선생님">현우진</td>
                        <td data-th="수업명" class="txt-left">【현우진T 확통 특강】 토 PM 1:30</td>
                        <td data-th="수업 회차">4</td>
                        <td data-th="수업 일시">2020-01-01</td>
                        <td data-th="번호신청 일시">2020-01-01 오후 11:00</td>
                        <td data-th="번호발급">
                            <% if i = 1 then '발급 종료 시 %>
                            <a href="javascript:void(0)" class="btn btn-disabled btn-M">발급 종료</a>
                            <% else %>
                            <a href="detail.asp" class="btn btn-black btn-M">번호 발급</a>
                            <% end if %>
                        </td>
                    </tr>
                    <% next %>
                </tbody>
            </table>

            <div class="table-btn mt1 txt-right">
                <a href="javascript:void(0);" onclick="fnOpenModal('.modal-note');" class="btn btn-M btn-gray">유의 사항</a>
                <a href="javascript:void(0);" onclick="fnOpenModal('.modal-history');" class="btn btn-M btn-black">번호 발급 이력 조회</a>
            </div>
        </div>
    </div>
    <!--// E : 리스트 -->

    <!-- S : modal-wrap -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 유의 사항 -->
        <div class="modal-container modal-F modal-note">
            <div class="modal-header">
                <h3 class="modal-tit">유의 사항</h3>
                <a href="javascript:void(0);" class="btn-close">팝업창 닫기</a>
            </div>
        
            <div class="modal-content">
                <div class="content-layout">
                    <div class="table-type1">
                        <table>
                            <colgroup>
                                <col style="width:25%;">
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>번호신청</th>
                                    <td class="txt-left">
                                        <ul class="list-dash">
                                            <li>부정 신청을 방지하기 위해 비정상적인 새로고침 시 로그인 해제되므로 유의하시기 바랍니다.</li>
                                            <li>입실번호는 신청완료 시간 순으로 자동 발급됩니다.</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>입실</th>
                                    <td class="txt-left">
                                        <ul class="list-dash">
                                            <li>입실번호는 영문+숫자3자리로 구성되며, A&gt;B&gt;C순으로 입장합니다. 동일 알파벳 그룹내에서는 숫자가 빠른 순으로 입장합니다.</li>
                                            <li>발급받은 번호 순서대로 수업 30분 전부터 입실 가능합니다.</li>
                                            <li>입실번호 문자를 삭제할 경우 번호 효력이 상실되며, 현장에서 번호 확인이 안 될 경우, 입실이 불가할 수 있습니다.</li>
                                            <li>앞번호를 발급받았더라도 입실 당시 부재시, 본인의 번호 순서에 입실할 수 없습니다.</li>
                                            <li>번호 신청 기간 내 번호 발급을 받지 못한 경우, 수업 당일 번호표 소지자 입실 완료 후 입실 할 수 있습니다.</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="modal-btn">
                <a href="javascript:void(0);" onclick="fnCloseModal('.modal-note');" class="btn btn-black">확인</a>
            </div>
        </div>
        <!--// E : 유의 사항 -->

        <!-- S : 번호 발급 이력 조회 -->
        <div class="modal-container modal-F modal-history">
            <div class="modal-header">
                <h3 class="modal-tit">번호 발급 이력 조회</h3>
                <a href="javascript:void(0);" class="btn-close">팝업창 닫기</a>
            </div>
        
            <div class="modal-content">
                <div class="content-layout">
                    <div class="table-type1 table-mobile">
                        <table>
                            <colgroup>
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>분원</th>
                                    <th>선생님</th>
                                    <th>수업명</th>
                                    <th>수업 회차</th>
                                    <th>수업 일시</th>
                                    <th>입실번호</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for i = 1 to 10 %>
                                <tr>
                                    <td data-th="분원">대치</td>
                                    <td data-th="선생님">현우진</td>
                                    <td data-th="수업명" class="txt-left">【현우진T 확통 특강】 토 PM 1:30</td>
                                    <td data-th="수업 회차">4</td>
                                    <td data-th="수업 일시">2020-01-01</td>
                                    <td data-th="입실번호">A03</td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="modal-btn">
                <a href="javascript:void(0);" onclick="fnCloseModal('.modal-history');" class="btn btn-black">닫기</a>
            </div>
        </div>
        <!--// E : 번호 발급 이력 조회 -->
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

// modal close
function fnCloseModal(modal){ // fnCloseLaver(닫고 싶은 class or id)
	var $modal = $(modal);

	$modal.hide().parents('.modal-wrap').fadeOut(500);

	return false;
}

//-->
</script>
<!--// E : 페이지별 스크립트 -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->