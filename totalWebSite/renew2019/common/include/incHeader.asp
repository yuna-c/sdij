<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->

<!-- S : wrap -->
<div id="wrap">
	<!-- S : header -->
	<div id="header">
		<!-- S : gnb -->
		<div class="gnb-area">
			<div class="content-layout float-area">
				<button class="btn-gnb"><span class="ico ico-menu">메뉴</span></button>

				<% if true then '재종반 %>
				<h1 class="fl"><a href="https://pub.sdij.com/totalWebSite/renew2019/sdn/index.asp">시대인재 N재수종합</a></h1>
				<% else '단과반 %>
				<h1 class="fl"><a href="#">시대인재 단과 대치</a></h1>
				<h1 class="fl"><a href="#">시대인재 단과 분당</a></h1>
				<% end if %>

				<div class="gnb fr">
					<ul class="float-area">
						<li><a href="#">로그인</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--// E : gnb -->

		<!-- S : nav -->
		<div class="nav-area">
			<div class="tit-layout float-area">
				<div class="fl">
					<div class="notice">
						<h4 class="dep-tit">공지</h4>
						<ul class="notice-list">
							<li><a href="#">시대인재 N재종반 2학기 교재비 안내</a></li>
							<li><a href="#">재원생 부엉이 포스트 성적 열람 방법 안내</a></li>
							<li><a href="#">1월 중순 설명회 안내</a></li>
						</ul>
					</div>
					<!-- <div class="news-letter">
						<h4 class="dep-tit">Newsletter</h4>
						<label class="input-search">
							<input type="text" class="input-text" placeholder="Your Email Address">
							<input type="submit" class="btn btn-xs btn-darkgray" value="ok">
						</label>
					</div> -->
				</div>
				<div class="nav fr">
					<% if true then '재종반 GNB %>
					<dl>
						<dt class="dep-tit">재종반 소개</dt>
						<dd><a href="/totalWebSite/renew2019/sdn/info/curri.asp">커리큘럼</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/info/library.asp">부엉이라이브러리</a></dd>
						<dd><a href="/totalWebSite/renew2019/bbs/info/examInfo.asp">실전모의고사</a></dd>
						<dd><a href="javascript:alert('미작업');">만점구조시스템</a></dd>
					</dl>
					<dl>
						<dt class="dep-tit">재종반 콘텐츠</dt>
						<dd><a href="/totalWebSite/renew2019/sdn/apply/qualList.asp">모집요강</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/apply/applyList.asp">응시원서접수</a></dd>
						<dd><a href="/totalWebSite/renew2019/bbs/examList.asp">입시 R&amp;D</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/info/qnaList.asp">1:1 질의응답</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/grade/default.asp">부엉이포스트</a></dd>
						<dd><a href="javascript:alert('모바일이후');">급식메뉴</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/honor/honor.asp">명예의전당</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/brief/briefList.asp">설명회</a></dd>
					</dl>
					<dl>
						<dt class="dep-tit">학원소개</dt>
						<dd><a href="#">학원소개</a></dd>
						<dd><a href="#">학원시설</a></dd>
						<dd><a href="/totalWebSite/renew2019/bbs/info/noticeList.asp">공지사항</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/info/map.asp">오시는길</a></dd>
						<dd><a href="javascript:alert('모바일이후');">강사/직원채용</a></dd>
					</dl>
					<% else '단과반 GNB %>
					<dl>
						<dt class="dep-tit">단과반 소개</dt>
						<dd><a href="/totalWebSite/renew2019/aca/info/schdView.asp">시간표</a></dd>
						<dd><a href="/totalWebSite/renew2019/aca/info/library.asp">부엉이라이브러리</a></dd>
						<dd><a href="/totalWebSite/renew2019/bbs/info/examInfo.asp">실전모의고사</a></dd>
						<dd><a href="javascript:alert('미작업');">만점구조시스템</a></dd>
					</dl>
					<dl>
						<dt class="dep-tit">단과반 콘텐츠</dt>
						<dd><a href="/totalWebSite/renew2019/aca/brief/briefList.asp">설명회</a></dd>
						<dd><a href="/totalWebSite/renew2019/aca/info/consulting.asp">컨설팅</a></dd>
						<dd><a href="/totalWebSite/renew2019/bbs/examList.asp">입시 R&amp;D</a></dd>
						<dd><a href="/totalWebSite/renew2019/aca/grade/intro.asp">부엉이포스트</a></dd>
					</dl>
					<dl>
						<dt class="dep-tit">학원 소개</dt>
						<dd><a href="javascript:alert('미작업');">학원소개</a></dd>
						<dd><a href="javascript:alert('미작업');">학원시설</a></dd>
						<dd><a href="/totalWebSite/renew2019/bbs/info/noticeList.asp">공지사항</a></dd>
						<dd><a href="/totalWebSite/renew2019/sdn/info/map.asp">오시는길</a></dd>
						<dd><a href="javascript:alert('모바일이후');">강사/직원채용</a></dd>
					</dl>
					<% end if %>
				</div>
			</div>
		</div>
		<!--// E : nav -->
	</div>
	<!--// E : header -->

	<!-- S : container -->
	<div id="container">