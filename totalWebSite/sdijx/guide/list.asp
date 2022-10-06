<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 리스트
' 모듈기능 : 리스트
' 파 일 명 : list.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="guide.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

	<!-- S : container -->
	<section id="container" class="guide-container">
		<!-- S : 컨텐츠 -->
		<div class="wide-layout">
			<h2 class="tit-dep1">pub list</h2>

			<div class="tab-type1 tab-border">
				<ul>
					<li class="selected"><a href="javascript:void(0);">메인/기타/가이드</a></li>
					<li><a href="javascript:void(0);">멤버</a></li>
					<li><a href="javascript:void(0);">검색/플레이어</a></li>
					<li><a href="javascript:void(0);">선생님</a></li>
					<li><a href="javascript:void(0);">마이페이지/결제</a></li>
					<li><a href="javascript:void(0);">고객센터</a></li>
				</ul>
			</div>
			
			<!-- S : 메인/기타/가이드 -->
			<div class="tab-content tab-on">
				<div class="table-type1">
					<table>
						<colgroup>
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:150px">
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:auto;">
							<col style="width:200px;">
						</colgroup>
						<thead>
							<tr>
								<th>depth1</th>
								<th>depth2</th>
								<th>depth3</th>
								<th>depth4</th>
								<th>depth5</th>
								<th>URL</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>메인</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/main/index.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/main/index.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>랜딩</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/landing/YYMM/WORK/index.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/landing/YYMM/WORK/index.asp</a>
								</td>
								<td>
									랜딩 작업에 필요한 css, js파일은 해당 폴더에 함께 작성
								</td>
							</tr>
							<tr>
								<td>에러페이지</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/error.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/error.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>로딩페이지</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/loading.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/loading.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>가이드</td>
								<td>퍼블리싱 가이드</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="//dev.sdijx.co.kr/guide/" target="_blank">//dev.sdijx.co.kr/guide/</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>script 가이드</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="//dev.sdijx.co.kr/guide/script.asp" target="_blank">//dev.sdijx.co.kr/guide/script.asp</a>
								</td>
								<td></td>
							</tr>
							<!-- <tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="#" target="_blank"></a>
								</td>
								<td></td>
							</tr> -->
						</tbody>
					</table>
				</div> 
			</div>
			<!--// E : 메인/기타/가이드 -->

			<!-- S : 멤버 -->
			<div class="tab-content">
				<div class="table-type1">
					<table>
						<colgroup>
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:150px">
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:auto;">
							<col style="width:200px;">
						</colgroup>
						<thead>
							<tr>
								<th>depth1</th>
								<th>depth2</th>
								<th>depth3</th>
								<th>depth4</th>
								<th>depth5</th>
								<th>URL</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>로그인</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/login.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/login.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>회원가입</td>
								<td>유형선택 / 기본정보</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/join.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/join.asp</a>
								</td>
								<td></td>
							</tr>
							<tr class="bg-gray">
								<td>회원가입(수정전)</td>
								<td>GATE. 유형선택</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/joinBak.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/joinBak.asp</a>
								</td>
								<td></td>
							</tr>
							<tr class="bg-gray">
								<td></td>
								<td>STEP1. 기본 정보</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/joinStep1.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/joinStep1.asp</a>
								</td>
								<td></td>
							</tr>
							<tr class="bg-gray">
								<td></td>
								<td>STEP2. 추가정보</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/joinStep2.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/joinStep2.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>STEP3. 회원가입 완료</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/joinEnd.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/joinEnd.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>아이디/비밀번호 찾기</td>
								<td>GATE. 유형선택</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/findGate.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/findGate.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>아이디 찾기완료</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/findIDEnd.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/findIDEnd.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>비밀번호 재설정</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/findPW.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/findPW.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>비밀번호 변경완료</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/findPWEnd.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/findPWEnd.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>회원탈퇴</td>
								<td>STEP1. 탈퇴조건</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/leaveStep1.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/leaveStep1.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>STEP2. 탈퇴확인</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/leaveStep2.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/leaveStep2.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>STEP3. 회원탈퇴완료</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/member/leaveEnd.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/member/leaveEnd.asp</a>
								</td>
								<td></td>
							</tr>
							<!-- <tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="#" target="_blank"></a>
								</td>
								<td></td>
							</tr> -->
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : 멤버 -->

			<!-- S : 검색/플레이어 -->
			<div class="tab-content">
				<div class="table-type1">
					<table>
						<colgroup>
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:150px">
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:auto;">
							<col style="width:200px;">
						</colgroup>
						<thead>
							<tr>
								<th>depth1</th>
								<th>depth2</th>
								<th>depth3</th>
								<th>depth4</th>
								<th>depth5</th>
								<th>URL</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>강좌</td>
								<td>검색</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/lecture/index.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/lecture/index.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>상세보기</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/lecture/view.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/lecture/view.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>플레이어</td>
								<td>VOD</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/player/player.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/player/player.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>LIVE</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/player/playerLive.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/player/playerLive.asp</a>
								</td>
								<td></td>
							</tr>
							<!-- <tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="#" target="_blank"></a>
								</td>
								<td></td>
							</tr> -->
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : 검색/플레이어 -->

			<!-- S : 선생님 -->
			<div class="tab-content">
				<div class="table-type1">
					<table>
						<colgroup>
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:150px">
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:auto;">
							<col style="width:200px;">
						</colgroup>
						<thead>
							<tr>
								<th>depth1</th>
								<th>depth2</th>
								<th>depth3</th>
								<th>depth4</th>
								<th>depth5</th>
								<th>URL</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>선생님</td>
								<td>전체보기</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/index.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/index.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>선생님</td>
								<td>메인</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/main.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/main.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>공지사항</td>
								<td>리스트</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/noticeList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/noticeList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>뷰</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/noticeView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/noticeView.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>학습질문답변</td>
								<td>리스트</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/qnaList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/qnaList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>뷰</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/qnaView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/qnaView.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>학습질문하기</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/qnaWrite.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/qnaWrite.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>(W)파일등록</td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/winFileUpload.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/winFileUpload.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>학습자료실</td>
								<td>리스트</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/dataList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/dataList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>뷰</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/dataView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/dataView.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>개설강좌</td>
								<td>리스트</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/lecList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/lecList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>수강후기</td>
								<td>리스트</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/reviewList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/reviewList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>뷰</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/reviewView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/reviewView.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>작성하기</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/teachers/reviewWrite.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/teachers/reviewWrite.asp</a>
								</td>
								<td></td>
							</tr>
							<!-- <tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="#" target="_blank"></a>
								</td>
								<td></td>
							</tr> -->
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : 선생님 -->

			<!-- S : 마이페이지/결제 -->
			<div class="tab-content">
				<div class="table-type1">
					<table>
						<colgroup>
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:150px">
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:auto;">
							<col style="width:200px;">
						</colgroup>
						<thead>
							<tr>
								<th>depth1</th>
								<th>depth2</th>
								<th>depth3</th>
								<th>depth4</th>
								<th>depth5</th>
								<th>URL</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>마이페이지</td>
								<td>마이홈</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/index.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/index.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>나의강의</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/lecList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/lecList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>강좌상세보기</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/lecView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/lecView.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>나의선생님</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/teacherList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/teacherList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>나의쿠폰/캐시</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/benefitList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/benefitList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>내정보관리</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/myInfo.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/myInfo.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>비밀번호관리</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/myPw.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/myPw.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>배송지관리</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/myDelv.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/myDelv.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>비밀번호 확인</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/mypage/pwCheck.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/mypage/pwCheck.asp</a>
								</td>
								<td>내정보관리/비밀번호관리/회원탈퇴 페이지 진입 전 비밀번호 체크</td>
							</tr>
							<tr>
								<td>결제</td>
								<td>장바구니</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/cart.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/cart.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>주문/결제</td>
								<td>STEP1. 주문정보</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/orderStep1.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/orderStep1.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>STEP2. 결제정보</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/orderStep2.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/orderStep2.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>STEP3. 주문완료</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/orderEnd.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/orderEnd.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>주문/배송조회</td>
								<td>주문내역리스트</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/orderList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/orderList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>주문상세보기</td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/orderView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/orderView.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>취소/교환/환불</td>
								<td>STEP1. 신청</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/orderCancel.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/orderCancel.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>STEP2. 신청완료</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/pay/orderCancelEnd.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/pay/orderCancelEnd.asp</a>
								</td>
								<td></td>
							</tr>
							<!-- <tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="#" target="_blank"></a>
								</td>
								<td></td>
							</tr> -->
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : 마이페이지/결제 -->

			<!-- S : 고객센터 -->
			<div class="tab-content">
				<div class="table-type1">
					<table>
						<colgroup>
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:150px">
							<col style="width:150px;">
							<col style="width:150px;">
							<col style="width:auto;">
							<col style="width:200px;">
						</colgroup>
						<thead>
							<tr>
								<th>depth1</th>
								<th>depth2</th>
								<th>depth3</th>
								<th>depth4</th>
								<th>depth5</th>
								<th>URL</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>고객센터</td>
								<td>FAQ</td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/help/faqList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/help/faqList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>1:1 QNA</td>
								<td>리스트</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/help/qnaList.asp" target="_blank">https://pub.sdij.com/totalWebSite0/sdijx/help/qnaList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>뷰</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/help/qnaView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/help/qnaView.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>질문하기</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/help/qnaWrite.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/help/qnaWrite.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td>공지사항</td>
								<td>리스트</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/help/noticeList.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/help/noticeList.asp</a>
								</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>뷰</td>
								<td></td>
								<td></td>
								<td>
									<a href="https://pub.sdij.com/totalWebSite/sdijx/help/noticeView.asp" target="_blank">https://pub.sdij.com/totalWebSite/sdijx/help/noticeView.asp</a>
								</td>
								<td></td>
							</tr>
							<!-- <tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a href="#" target="_blank"></a>
								</td>
								<td></td>
							</tr> -->
						</tbody>
					</table>
				</div>
			</div>
			<!--// E : 고객센터 -->

		</div>
		<!--// E : 컨텐츠 -->
	</section>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->