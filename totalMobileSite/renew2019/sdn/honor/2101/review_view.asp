<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->


<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/honor.css?ver=<%=now()%>">
<style type="text/css">
	.list-toggle dd .txt-box *{ font-family:'Noto Sans KR','Sans-serif','맑은 고딕', '돋움','Dotum','Apple SD Gothic Neo' !important; font-size:16px !important; color:#000 !important; }
	@media print {#pdfviewer {display:none;}}
</style>


<!-- S : 컨텐츠 영역 -->
<div class="layout-container review-container">
    <div class="content-layout">
        <h2 class="page-tit border-tit">
			<a href="./review_list.asp">시대인재N 3기 명예의 전당</a>
		</h2>

        <!-- S : 명예의 전당 영상 영역 -->
        <div class="board-video">
            <div class="profile-content">
				<% If false Then '프로필이미지 없을 경우 %>
					<img src="//via.placeholder.com/58x58/626262/626262/" alt="프로필 이미지">
				<% Else '프로필이미지 있을 경우 %>
                    <div class="data-img">
						<!-- <img src="//dfile.sdij.com/sdij/board/interview/[크기변환]정연재2_1.JPG" alt="프로필 이미지"> -->
						<img src="//via.placeholder.com/58x58/626262/626262/" alt="프로필 이미지">
					</div>
				<% End If %>
                <div class="data-name">
					정연재 학생
					<span>국/수/탐/탐 전과목 만점자 <br>(영어 1등급 /한국사 1등급)</span>
                </div>
				<div class="data-content"></div>
			</div>
		
			<!-- S : 간략 리뷰 없을 시 해당 영역 미 노출 -->
            <div class="txt-content"></div>
			<!--// E : 간략 리뷰 없을 시 해당 영역 미 노출 -->

        </div>
        <!--// E : 명예의 전당 영상 영역 -->

		<!-- S : 2021 명예의 전당 리뉴얼 -->
		<% If False Then 'PDF 뷰어 %>
		<div class="pdf-area mb50">
			<iframe name="pdfviewer" id="pdfviewer" src="https://dm.sdij.com/sdn/honor/viewer/web/viewer.html?file=//dfile.sdij.com/sdij/board/interview/magazine_2021.pdf" height="5235px"></iframe>
		</div>
		<% Else '기존 텍스트 %>
			<!-- S : 명예의 전당 학습법 -->
			<div class="board-toggle board-tab">
			<h4 class="board-tit mb30">시대인재N 재수종합반을 선택한 이유</h4>
			<dl class="list-toggle mb70">
				<dt class="selected"><a href="javascript:void(0);">학원 선택이유</a></dt><!-- 첫번째 내용 class="selected" -->
				<dd class="on">
					<div class="txt-box"><!-- 첫번째 내용 class="on" -->
						<p><span>1시간 거리 통학을 해야 하는데도 시대인재를 선택했는데, 온라인상에서 자습실 사진도 보고 하다보니 자습 환경이 정말로 잘 갖춰졌다고 생각하게 되었고 시대인재 컨텐츠가 굉장히 좋다는 소리를 많이 들어서 시대인재로 결정을 하게 되었습니다.</span></p>
						<p><span>다른 학원 같은 경우에는 자습실과 수업을 듣는 곳이 분리가 안 되어 있어서 책 놓을 자리도 부족하고 자습하는 환경이 잘 안 갖춰져 있는 것 같았는데, 시대인재는 일단 자습실이 수업 듣는 곳과 분리 되어있고 떠드는 친구들도 없고 자습에 집중하기도 좋아서 환경이 잘 갖추어져 있다고 생각합니다.</span></p>
						<p><span>그리고 서바이벌이 유명해서 현역 때도 서바이벌을 구해서 푸는 친구들이 많았습니다. 한번 풀어 봤을 때 퀄리티가 좋다고 생각했고 리바이벌도 역대 서바이벌에서 좋은 문항들을 뽑아 놓은 문제집인데 그런 것도 풀어 보고 싶기도 해서 시대인재를 선택하게 되었습니다.<br></span></p>
					</div>
				</dd>
				<dt><a href="javascript:void(0);">학원 선택이유</a></dt><!-- 첫번째 내용 class="selected" -->
				<dd>
					<div class="txt-box"><!-- 첫번째 내용 class="on" -->
						<p><span>1시간 거리 통학을 해야 하는데도 시대인재를 선택했는데, 온라인상에서 자습실 사진도 보고 하다보니 자습 환경이 정말로 잘 갖춰졌다고 생각하게 되었고 시대인재 컨텐츠가 굉장히 좋다는 소리를 많이 들어서 시대인재로 결정을 하게 되었습니다.</span></p>
						<p><span>다른 학원 같은 경우에는 자습실과 수업을 듣는 곳이 분리가 안 되어 있어서 책 놓을 자리도 부족하고 자습하는 환경이 잘 안 갖춰져 있는 것 같았는데, 시대인재는 일단 자습실이 수업 듣는 곳과 분리 되어있고 떠드는 친구들도 없고 자습에 집중하기도 좋아서 환경이 잘 갖추어져 있다고 생각합니다.</span></p>
						<p><span>그리고 서바이벌이 유명해서 현역 때도 서바이벌을 구해서 푸는 친구들이 많았습니다. 한번 풀어 봤을 때 퀄리티가 좋다고 생각했고 리바이벌도 역대 서바이벌에서 좋은 문항들을 뽑아 놓은 문제집인데 그런 것도 풀어 보고 싶기도 해서 시대인재를 선택하게 되었습니다.<br></span></p>
					</div>
				</dd>
			</dl>
        </div>

		<div class="board-toggle board-tab">
			<h4 class="board-tit mb30">학습 노하우</h4>
			<dl class="list-toggle mb70">
				
				<dt class="selected"><a href="javascript:void(0);">학습계획</a></dt><!-- 첫번째 내용 class="selected" -->
				<dd class="on">
					<div class="txt-box"><!-- 첫번째 내용 class="on" -->
						<p><span style="font-size: 13.3333px\;">처음에는 계획을 안 세우는 편이었는데 할 일이 점점 많아지다 보니까 리스트를 정리해야 될 필요성을 느끼게 되었습니다. 그래서 리스트를 정리해서 하루에 무엇을 할지 정하기 시작했고 그걸 계속 하다 보니까 중구난방으로 공부하고 있었다는 걸 느껴서 정리를 해서 루틴을 만들었습니다.</span></p>
						<p><span style="font-size: 13.3333px\;">하루에 무슨 과목을 몇 시간씩 할지 무엇을 할지 정해서 플래너를 썼습니다. 모든 과목을 하루에 조금씩이라도 해야지 감이 계속 유지가 되기 때문에 그걸 생각하며 계획을 짰습니다.</span></p>
					</div>
				</dd>
				
				<dt><a href="javascript:void(0);">국어</a></dt><!-- 첫번째 내용 class="selected" -->
				<dd>
					<div class="txt-box"><!-- 첫번째 내용 class="on" -->
						<p><span style="font-size: 13.3333px\;">국어는 제가 어렸을 때부터 책을 많이 보는 편이어서 기본적인 독해력이 좀 있었고 읽는 속도가 빨라서 시험 시간이 좀 많이 남는 편이었습니다.</span></p><p><span style="font-size: 13.3333px\;">작년 수능 국어가 1컷이 84일 정도로 어려웠는데 그때 제가 기억하기로 시간이 20분 정도 남았습니다. 그런데 다 풀고 계속 검토했는데도 세 문제 정도 틀렸습니다.</span></p>
						<p><span style="font-size: 13.3333px\;">시간의 문제가 아니라 정확도의 문제가 되니까 압박감이 생겼는데 여기서 거시독해나 구조독해에 대해서 공부를 하니까 도움이 많이 돼서 지문 장악하는 데 굉장히 좋았던 것 같습니다. 그 이후에는 성적이 계속 올라와서 이번에 100점을 맞게 되었습니다. 매주 나오는 간쓸개를 풀며 공부했고 실전연습에 많이 집중했습니다.</span></p>
					</div>
				</dd>
				
				<dt><a href="javascript:void(0);">수학</a></dt><!-- 첫번째 내용 class="selected" -->
				<dd>
					<div class="txt-box"><!-- 첫번째 내용 class="on" -->
						<p><span style="font-size: 13.3333px\;">수학은 문제집을 많이 풀었습니다. N제 같은 거를 시중에 있는 건 다 푼 거 같습니다. 그러면서 중간중간 개념서를 한 번씩 돌리고 그렇게 해서 실력이 좀 올랐습니다. 일명 ‘야매’로 풀지 않고 정석대로 푸는 걸 계속 연습하다 보니 사고과정이 단축되고 몸에도 익고 도움이 많이 된 것 같습니다.</span><br></p>
					</div>
				</dd>
				
				<dt><a href="javascript:void(0);">과학탐구</a></dt><!-- 첫번째 내용 class="selected" -->
				<dd>
					<div class="txt-box"><!-- 첫번째 내용 class="on" -->
						<p><span style="font-size: 13.3333px\;">화학 같은 경우에는 리바이벌로 문제를 많이 풀 수 있어서 좋았고 생명과학Ⅰ같은 경우에도 리바이벌이 도움이 많이 됐습니다. 생명과학의 경우에 유전 문제에 대해서 스킬이 필요한데 최수준 선생님이 스킬 같은 걸 잘 설명을 해주셔서 도움이 많이 되었습니다. 서바이벌의 가장 큰 장점은 실전연습이 되는 부분인 것 같습니다. 일주일에 한 번씩 정기적으로 시험을 풀다 보니까 OMR 마킹하는 연습도 하고 시간관리 하는 법을 몸으로 익힐 수 있었습니다.</span><br></p>
					</div>
				</dd>
				
			</dl>
        </div>
		<!--// E : 2021 명예의 전당 리뉴얼 -->
		<% End If %>
        <!--// E : 명예의 전당 학습법  -->

    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<div class="info-box">
	시대인재 N재수종합반의 PC사이트에서<br>
	더 많은 입시정보를 제공합니다.<br>

	<a href="#" class="txt-link mt10">PC Ver.으로 보기</a>
</div>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){

});

</script>