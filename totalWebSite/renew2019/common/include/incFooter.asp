	</div>
	<!--// E : container -->

	<!-- S : footer -->
	<div id="footer">
		<div class="content-layout float-area">
			<div class="family-site">
				<h1><img src="https://pub.sdij.com/totalWebSite/renew2019/img/logo.png" alt="시대인재 로고"></h1>
				<!--<h1><img src="<%=URL_IMG%>/logo.png" alt="시대인재 로고"></h1>-->
				<ul>
					<li><a href="#">시대인재 N재수종합</a></li>
					<li><a href="#">시대인재 단과 대치</a></li>
					<li><a href="#">시대인재 단과 분당</a></li>
					<li><a href="#">시대인재 ON</a></li>
					<li><a href="#">시대인재 Books</a></li>
				</ul>
			</div>

			<div class="footer-nav">
				<% if true then '재종반 footer %>
				<dl>
					<dt class="dep-tit">재종반 소개</dt>
					<dd><a href="#">커리큘럼</a></dd>
					<dd><a href="#">부엉이라이브러리</a></dd>
					<dd><a href="#">수능모의평가</a></dd>
					<dd><a href="#">만점구조시스템</a></dd>
				</dl>
				<dl>
					<dt class="dep-tit">재종반 콘텐츠</dt>
					<dd><a href="#">모집요강</a></dd>
					<dd><a href="#">응시원서접수</a></dd>
					<dd><a href="#">입시 R&amp;D</a></dd>
					<dd><a href="#">1:1 질의응답</a></dd>
					<dd><a href="#">부엉이포스트</a></dd>
					<dd><a href="#">급식</a></dd>
					<dd><a href="#">명예의전당</a></dd>
					<dd><a href="#">설명회</a></dd>
					<dd><a href="#">시간표</a></dd>
					<dd><a href="#">강사진</a></dd>
				</dl>
				<dl>
					<dt class="dep-tit">학원소개</dt>
					<dd><a href="#">학원소개</a></dd>
					<dd><a href="#">학원시설</a></dd>
					<dd><a href="#">공지사항</a></dd>
					<dd><a href="#">오시는길</a></dd>
					<dd><a href="#">인재채용</a></dd>
				</dl>
				<dl>
					<dt class="dep-tit">회원관리</dt>
					<dd><a href="#">로그인</a></dd>
					<dd><a href="#">회원가입</a></dd>
				</dl>
				<% else '단과반 footer %>
				<dl>
					<dt class="dep-tit">단과반 소개</dt>
					<dd><a href="#">시간표</a></dd>
					<dd><a href="#">부엉이라이브러리</a></dd>
					<dd><a href="#">실전모의고사</a></dd>
					<dd><a href="#">만점구조시스템</a></dd>
				</dl>
				<dl>
					<dt class="dep-tit">단과반 콘텐츠</dt>
					<dd><a href="#">설명회</a></dd>
					<dd><a href="#">컨설팅</a></dd>
					<dd><a href="#">입시 R&amp;D</a></dd>
					<dd><a href="#">부엉이포스트</a></dd>
				</dl>
				<dl>
					<dt class="dep-tit">학원소개</dt>
					<dd><a href="#">학원소개</a></dd>
					<dd><a href="#">학원시설</a></dd>
					<dd><a href="#">공지사항</a></dd>
					<dd><a href="#">오시는길</a></dd>
					<dd><a href="#">강사/직원채용</a></dd>
				</dl>
				<dl>
					<dt class="dep-tit">회원관리</dt>
					<dd><a href="#">로그인</a></dd>
					<dd><a href="#">회원가입</a></dd>
				</dl>
				<% end if %>
			</div>

			<div class="news-letter">
				<h4 class="dep-tit">&nbsp;</h4>
				<!-- <label class="input-search">
					<input type="text" class="input-text" placeholder="Your Email Address">
					<input type="submit" class="btn btn-xs btn-darkgray" value="ok">
				</label> -->

				<div class="copyright">
					<ul>
						<li>주소: 서울시 강남구 삼성로 434 5층(대치동 쥬비스타워)</li>
						<li>(주)하이컨시온  대표이사: 오우석</li>
						<li>사업자등록번호: 429-88-00534</li>
						<li>학원설립, 운영 등록번호: 제 12226호</li>
						<li>신고기관명: 서울시 강남서초교육지원청</li>
						<li>COPYRIGHT (주)하이컨시온. All Rights Reserved.</li>
						<li><a href="mailto:sdu@sdu.com" class="txt-link">SDU@SDU.COM</a></li>
					</ul>
				</div>
			</div>
		</div>

		<button class="btn btn-xs btn-top" onclick="fnScrollObj('#header')">Top</button>
	</div>
	<!--// E : footer -->
</div>
<!--// E : wrap -->
</body>
</html>