<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 지원완료
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

<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->
<!-- S : 페이지별 css -->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/support.css?ver=<%=now()%>">
<!--// E : 페이지별 css -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="board-layout support">
			<!-- S : 접수안내 영역 -->
				<div class="board-table">
					<h2 class="page-tit mt50">시대인재 대학생 서포터즈 지원서 작성</h2>

                    <h2 class="table-tit txt-center border-none">
                        시대인재 서포터즈 1기 모집
                    </h2>

                    <table>
                        <colgroup>
                            <col style="width:90px;">
                            <col style="width:100px;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:100px;">
                            <col style="width:120px;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>모집 차수</th>
                                <th>인터뷰 날짜</th>
                                <th>1차 희망 분야</th>
                                <th>2차 희망 분야</th>
                                <th>3차 희망 분야</th>
                                <th>접수일</th>
                                <th>상태</th>
                            </tr>
                            <tr>
                                <td>
                                    1차
                                </td>
                                <td>
                                    2019-11-21
                                </td>
                                <td>
                                    TA
                                </td>
                                <td>
                                    시대인재 magazine
                                </td>
                                <td>
                                    MD 기획
                                </td>
                                <td>
                                    2019-11-17
                                </td>
                                <td>
                                    취소 완료
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    1차
                                </td>
                                <td>
                                    2019-11-21
                                </td>
                                <td>
                                    컨텐츠 창작
                                </td>
                                <td>
                                    SNS 관리
                                </td>
                                <td>
                                    행사 및 이벤트 기획
                                </td>
                                <td>
                                    2019-11-18
                                </td>
                                <td>
                                    접수 완료

                                    <button class="btn btn-white btn-xs2" onclick="fnOpenLayer('dim-support-alert2')">취소하기</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="list-dotted mt20">
                        <li>자세한 일정과 면접 날짜는 등록하신 휴대폰 번호로 발송될 예정입니다.</li>
                        <li>문의사항은 <a href="mailto:question@sdij.com">question@sdij.com</a>으로 보내주세요.</li>
                    </ul>
				</div>
				<!--// E : 접수안내 영역 -->
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

	<!-- S : dim-layer -->
    <div class="dim-layer">
		<div class="dim-bg"></div>

		<!-- S : 대상자 아닐때 alert -->
		<div class="dim-content dim-alert dim-tit-alert dim-support-alert2">
			<h4 class="dim-tit">취소하시겠습니까?</h4>

			<div class="dim-txt"></div>

			<div class="dim-btn txt-center">
				<button class="btn btn-black btn-confirm">예</button>
				<button class="btn btn-white pop-close">아니오</button>
			</div>
		</div>
		<!--// E : 대상자 아닐때 alert -->
	</div>
	<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
$(function(){

});

</script>
<!--// E : 페이지별 스크립트 -->
