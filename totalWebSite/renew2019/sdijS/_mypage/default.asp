<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 메인
' 모듈기능 : 마이페이지 > 메인
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

<!--#include virtual="/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<!--include virtual="/renew2019/sdijS/common/include/incDimLayer.asp"-->
<!--#include virtual="/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mypage-container">
			<!-- S : SNB -->
			<!--#include virtual="/renew2019/sdijS/_mypage/inc.snb.asp"-->
			<!--// E : SNB -->
            <div class="content-layout">

                <div class="board-layout">

					<div class="bg-wrap">
						<div class="upload-box cycle-slideshow"
							data-cycle-fx="carousel"
							data-cycle-timeout="3000"
							data-cycle-pause-on-hover="true"
							data-cycle-slides="> div"
							data-cycle-carousel-visible=1
							data-cycle-carousel-vertical=true
							>
							<div>
								<span class="ico ico-balloon"></span>
								<span class="upload-txt">
									<strong>8/9(금) 최수준 선생님</strong>의 <strong>생명과학Ⅰ서바이벌 31강</strong>이 업로드 되었습니다.
								</span>
							</div>
							<div>
								<span class="ico ico-balloon"></span>
								<span class="upload-txt">
									<strong>8/9(금) 이순신 선생님</strong>의 <strong>지구과학 31강</strong>이 업로드 되었습니다.
								</span>
							</div>
							<div>
								<span class="ico ico-balloon"></span>
								<span class="upload-txt">
									<strong>8/9(금) 최수준 선생님</strong>의 <strong>생명과학Ⅰ서바이벌 31강</strong>이 업로드 되었습니다.
								</span>
							</div>
							<div>
								<span class="ico ico-balloon"></span>
								<span class="upload-txt">
									<strong>8/9(금) 이순신 선생님</strong>의 <strong>지구과학 31강</strong>이 업로드 되었습니다.
								</span>
							</div>
						</div>
					</div>

				    <!-- S : 마이페이지 공부시간 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit mt60">마이 페이지</h3>

                        <div class="tit-side">
                            <input type="button" value="누적보기" class="btn btn-sm">
                            <!-- <input type="button" value="vs 시대인재N" class="btn btn-sm"> : 버튼 삭제 -->
                        </div>
                    </div>

                    <div class="hr-graph float-area">
                        <!-- S : 목표대학카드 -->
                        <div class="fl">
							<a href="javascript:void(0)" onclick="fnOpenLayer('dim-univer')">
	                            <% if false then '목표대학카드 %>
	                            <img src="http://placehold.it/140x164" alt="대학이름">
	                            <% else '선택된 카드 이미지가 없을 경우 %>
	                            <div class="no-data">목표대학을<br>선택해 주세요.</div>
	                            <% end if %>
							</a>
                        </div>
                        <!--// E : 목표대학카드 -->

                        <!-- S : 공부시간 -->
                        <div class="fr">
                            <table>
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>오늘 공부시간</th>
                                        <th>이번주 공부시간</th>
                                        <th>8월 누적 공부시간</th>
                                    </tr>
                                    <tr>
                                        <td>8hr</td>
                                        <td>28hr</td>
                                        <td>160hr</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--// E : 공부시간 -->
                    </div>
                    <!--// E : 마이페이지 공부시간 -->

                    <!-- S : 부엉이 포스트 -->
                    <h3 class="dep2-tit">부엉이 포스트</h3>

                    <div class="owl-info">
                        <ul>
                            <li>
                                <span class="tit">점수</span>
                                <span class="score">92점</span>
                            </li>
                            <li>
                                <span class="tit">등급</span>
                                <span class="score">1등급</span>
                            </li>
                            <li>
                                <span class="tit">예상 백분위</span>
                                <span class="score">98%</span>
                            </li>
                        </ul>
                    </div>
                    <!--// E : 부엉이 포스트 -->

                    <!-- S : 최근 본 강좌 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit">최근 본 강좌</h3>

                        <div class="tit-side lec-legend">
                            <span class="black">진도율</span>
                            <span class="dark-gray">강의 업로드율</span>
                        </div>
                    </div>

                    <div class="lec-info">
                        <table>
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:166px;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th><a href="/renew2019/sdijS/_mypage/lecture/lecture_detail.asp" class="tit-txt">[S반 수학 (가)] 서바이벌 정규반 Shotcut_기하벡터 강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명v</a></th>
                                    <th>
                                        <div class="btn-info">
                                            <a href="/renew2019/sdijS/_on/teachers/qna_write.asp" class="btn">질문하기</a>
                                            <a href="/renew2019/sdijS/_on/teachers/review_write.asp" class="btn">후기쓰기</a>
                                        </div>
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="lec-graph">
                                            <div class="info-area"><span class="txt">OT</span></div>

                                            <!-- S : 총 강의 -->
                                            <div class="graph1">
                                                <div class="info-area">
                                                    <span class="txt">34강 예정</span>
                                                </div>
                                            </div>
                                            <!--// E : 총 강의 -->

                                            <!-- S : 오픈 강의 -->
                                            <div class="graph2" style="width:58%">
                                                <div class="info-area">
                                                    <span class="txt">20강</span>
                                                </div>
                                            </div>
                                            <!--// E : 오픈 강의 -->

                                            <!-- S : 수강 중 강의 -->
                                            <div class="graph3" style="width:6%">
                                                <div class="info-area">
                                                    <span class="txt">2강</span>
                                                </div>
                                            </div>
                                            <!--// E : 수강 중 강의 -->
                                        </div>
                                    </td>
                                    <td>
                                        <div class="play-info">
                                            <a href="/renew2019/sdijS/_player/player.asp" class="btn btn-black"><span class="ico ico-lec"></span>강좌 이어보기</a>
                                            <a href="#" class="btn">8-3 교재 배송 중</a>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 최근 본 강좌 -->

                    <!-- S : 시대인재 공지사항 -->
                    <div class="tit-area">
                        <h3 class="dep2-tit">시대인재 공지사항</h3>

                        <div class="tit-side">
                            <a href="/renew2019/sdijS/_on/board/notice_list.asp" class="more-link">전체보기</a>
                        </div>
                    </div>

                    <div class="board-list board-list3">
                        <table>
                            <colgroup>
                                <col style="width:100px;">
                                <col style="width:auto;">
                                <col style="width:130px;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><span class="sticker-board sticker-red">notice</span></td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/board/notice_view.asp" class="tit-txt">
                                            <b>가나다라가나다라가나다라가나다라가나다라</b><!-- 이벤트, 공지글일 경우 <b>제목</b> -->
                                        </a>
                                    </td>
                                    <td>2019-01-01</td>
                                </tr>
                                <tr>
                                    <td><span class="sticker-board sticker-purple">event</span></td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/board/notice_view.asp" class="tit-txt tit-ico"><!-- 신규 게시글일 경우 class="tit-ico" 추가 -->
                                            <b>가나다라가나다라가나다라가나다라가나다라</b><!-- 이벤트, 공지글일 경우 <b>제목</b> -->
                                        </a>

                                        <span class="ico ico-new">신규 게시물</span><!-- 신규 게시물일 경우 해당 영역 노출 -->
                                    </td>
                                    <td>2019-01-01</td>
                                </tr>
                                <% for i = 1 to 2 %>
                                <tr>
                                    <td><% = i %></td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/board/notice_view.asp" class="tit-txt tit-ico"><!-- 신규 게시글일 경우 class="tit-ico" 추가 -->
                                            제목
                                        </a>
                                        <span class="ico ico-new">신규 게시물</span><!-- 신규 게시물일 경우 해당 영역 노출 -->
                                    </td>
                                    <td>2019-01-01</td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 시대인재 공지사항 -->

                    <!-- S : 선생님 공지사항 -->
                    <h3 class="dep2-tit">선생님 공지사항</h3>

                    <div class="dep3-tab txt-left">
                        <a href="javascript:void(0);" class="selected">김은희 선생님</a>
                        <a href="javascript:void(0);">홍길동 선생님</a>
                        <a href="javascript:void(0);">김인재 선생님</a>
                    </div>

                    <div class="board-list board-list3">
                        <table>
                            <colgroup>
                                <col style="width:100px;">
                                <col style="width:auto;">
                                <col style="width:130px;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><span class="sticker-board sticker-red">notice</span></td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/teachers/notice_view.asp" class="tit-txt">
                                            제목
                                        </a>
                                    </td>
                                    <td>2019-01-01</td>
                                </tr>
                                <tr>
                                    <td><span class="sticker-board sticker-purple">event</span></td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/teachers/notice_view.asp" class="tit-txt tit-ico"><!-- 신규 게시글일 경우 class="tit-ico" 추가 -->
                                            제목
                                        </a>

                                        <span class="ico ico-new">신규 게시물</span><!-- 신규 게시물일 경우 해당 영역 노출 -->
                                    </td>
                                    <td>2019-01-01</td>
                                </tr>
                                <% for i = 1 to 2 %>
                                <tr>
                                    <td><% = i %></td>
                                    <td class="tit-box">
                                        <a href="/renew2019/sdijS/_on/teachers/notice_view.asp" class="tit-txt tit-ico"><!-- 신규 게시글일 경우 class="tit-ico" 추가 -->
                                            제목
                                        </a>
                                        <span class="ico ico-new">신규 게시물</span><!-- 신규 게시물일 경우 해당 영역 노출 -->
                                    </td>
                                    <td>2019-01-01</td>
                                </tr>
                                <% next %>
                            </tbody>
                        </table>
                    </div>
                    <!--// E : 선생님 공지사항 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

	<div class="dim-layer">
		<div class="dim-bg"></div>

		<!-- S : dim-univer : 목표대학 설정하기 -->
		<div class="dim-content dim-form dim-univer">
			<h4 class="dim-tit txt-center">목표대학 설정하기</h4>

			<div class="border-box">
				<div class="search-area">
					<input type="text" placeholder="대학교명을 입력해 주세요.">
					<button type="button" class="btn-search"><span class="ico ico-search2">검색하기</span></button>
				</div>
				<div class="board-tab">
					<div class="radio-align">
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교가나다대학교가나다대학교가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
					</div>
					<div class="radio-align">
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
					</div>
					<div class="radio-align">
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
					</div>
					<div class="radio-align">
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
						<label class="form-radio">
							<input type="radio">
							<span class="ico ico-radio"></span>
							<span class="radio-txt">가나다대학교</span>
						</label>
					</div>
				</div>
				<!-- S : board-pager : 페이지 버튼 -->
				<div class="board-pager mt30 mb0">
					<a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
					<a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>

					<div class="pager-num">
						<a href="javascript:void(0);" class="on">1</a>
						<a href="javascript:void(0);">2</a>
						<a href="javascript:void(0);">3</a>
						<a href="javascript:void(0);">4</a>
						<a href="javascript:void(0);">5</a>
						<a href="javascript:void(0);">6</a>
						<a href="javascript:void(0);">7</a>
						<a href="javascript:void(0);">8</a>
						<a href="javascript:void(0);">9</a>
						<a href="javascript:void(0);">10</a>
					</div>

					<a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
					<a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
				</div>
				<!--// E : board-pager : 페이지 버튼 -->

			</div>

			<div class="dim-btn txt-center mt30">
				<a href="javascript:void(0);" class="btn btn-black btn-confirm">선택완료</a>
				<button type="button" class="btn btn-darkgray pop-close">취소</button>
			</div>
		</div>
		<!--// E : dim-univer : 목표대학 설정하기 -->
	</div>


<!--#include virtual="/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
