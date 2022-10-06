
<%
'-----------------------------------------------------------------------
' 업 무 명 : 고객센터 > 메인 > 1:1문의내용 보기
' 모듈기능 : 고객센터 > 메인 > 1:1문의내용 보기
' 파 일 명 : qna_view.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/cs.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="content-layout">
                <h2 class="dep1-tit">
                    1:1 문의 내역
                    <small>궁금한 사항은 1:1 문의를 통해 해결하세요</small>
                </h2>

                <div class="board-layout">
                    <!-- S : 1:1문의 내용보기 -->
                    <div class="board-view board-view2">
                        <table>
                            <colgroup>
                                <col style="width:140px;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <!-- S : 타이틀 -->
                                <tr>
                                    <th colspan="2">
                                        <div class="board-tit">
											회원 가입은 어디서 하나요? 1:1 문의 내역 타이틀입니다. 두줄 세줄 계속 노출됩니다 무한대 노출 가능합니다.
                                        </div>

                                        <div class="board-info">
                                            <span class="pl0">홍길동</span>
                                            <span>2019-07-31</span>
                                        </div>
                                    </th>
                                </tr>
                                <!--// E : 타이틀 -->
                            </thead>
                            <tbody>
                                <!-- S :내용 -->
                                <tr>
                                    <td class="txt-box" colspan="2">
										07월 04일 새벽 1시부터 새벽 5시까지 긴급 점검을 실시합니다. 8/7 (월) 티패스 판매 종료 안내드립니다.
										사용가이드를 활용해보세요! 07월 04일 새벽 1시부터 새벽 5시까지 긴급 점검을 실시합니다.
										커넥츠를 처음 사용하시나요? 사용가이드를 활용해보세요! 07월 04일 새벽 1시부터 새벽 5시까지 긴급 점검을 실시합니다.
										8/7 (월) 티패스 판매 종료 안내드립니다. 커넥츠를 처음 사용하시나요? 사용가이드를 활용해보세요!
										07월 04일 새벽 1시부터 새벽 5시까지 긴급 점검을 실시합니다.
									</td>
                                </tr>
                                <!--// E :내용 -->

                                <!-- S : 첨부파일 -->
                                <tr>
                                    <td class="txt-file" colspan="2">
                                        <span>첨부파일</span>
                                        <span class="ico ico-file2"></span>
                                        <button type="button" class="color-darkgray">file3027491.png</button>
                                    </td>
                                </tr>
                                <!--// E : 첨부파일 -->

                                <!-- S : 답변 -->
                                <tr>
                                    <td class="reply" colspan="2">
                                        <!-- S : 답변 타이틀 -->
                                        <div class="board-tit">
                                            <span class="sticker-board sticker-black">답변</span>
											답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀 답변 타이틀
										</div>

                                        <div class="board-info">
                                            <span class="pl0">관리자</span>
                                            <span>2019-07-31</span>
                                        </div>
                                        <!--// E : 답변 타이틀 -->

                                        <div class="txt-box">
											답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다
											답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다 답변내용이 노출됩니다
										</div>
                                    </td>
                                </tr>
                                <!--// E : 답변 -->

                                <!-- S : 답변 첨부파일 -->
                                <tr>
                                    <td class="reply-file txt-file" colspan="2">
                                        <span>첨부파일</span>
                                        <span class="ico ico-file2"></span>
                                        <button type="button" class="color-darkgray">file3027491.png</button>
                                    </td>
                                </tr>
                                <!--// E : 답변 첨부파일 -->
                            </tbody>
                        </table>

                        <!-- S : board-btn -->
                        <div class="board-btn">
                            <a href="qna_list.asp" class="btn btn-sm">목록보기</a>
                        </div>
                        <!--// E : board-btn -->
                    </div>
                    <!--// E : 1:1문의 내용보기 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

//-->
</script>
<!--// E : 페이지별 스크립트 -->