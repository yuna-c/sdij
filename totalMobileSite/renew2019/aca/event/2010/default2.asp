<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 단과 > 2020 시대인재 추석특강 > 현장수업
' 모듈기능 : 시대인재 단과 > 2020 시대인재 추석특강 > 현장수업
' 파 일 명 : default.asp
' 작성일자 : 
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="css/default2.css?ver=<%=now()%>">

<!-- S : container -->
<div class="layout-container event-container">
	
	<input type="hidden" name="memId" value="<%=COOK_ID%>">

	<div class="event-header">
		<div class="content-layout">
			<h2 class="page-tit">
				<span class="bg-black">2021</span><br>
				시대인재 <br>
				전국 모의고사

				<small class="ff-serif">
					대치동에서 걸어왔던 길 속 수많은<br>
					감사인사와 결과를 맺어준 모의고사,<br>
					이제 전국의 모든 수험생들과 함께 합니다. 
				</small>	
			</h2>
		</div>
	</div>

	<div class="event-cont01">
		<div class="content-layout">
			<h3 class="tit">
				<img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont01_tit.png" alt="대치동 그리고 수능 커리큘럼의 패러다임을 바꾼 유일한 모의고사, Survival">
			</h3>

			<div class="img-area">
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont01_img1.png" alt="2014 ~ 2019 시대인재 서바이벌"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont01_img2.png" alt="2014 ~ 2019 시대인재 서바이벌"></p>
			</div>
		</div>
	</div>

	<div class="event-cont02">
		<div class="content-layout">
			<div class="img-area">
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont01_img3.png" alt="지나치게 발상적인 문항이 아닌 과학적 오류가 없는 무결한 문항"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont01_img4.png" alt="무의미한 문항의 나열이 아닌 평가원과 동일한 연역적 사고 과정"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont01_img5.png" alt="1회성 타임어택용이 아닌 2번, 3번 풀어도 교훈적인 문항"></p>
			</div>
		</div>
	</div>

	<div class="event-cont03">
		<div class="content-layout">
			<h3 class="tit">
				<img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont02_tit.png" alt="수능 만점, 서울대 의예과 합격 등 다수의 양적, 질적 입시실적을 만들었습니다.">
			</h3>
			<div class="img-area">
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont02_img1.png" alt="2019, 2020학년도 시대인재 입시 실적"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont02_img2.png" alt="2019, 2020학년도 시대인재 입시 실적"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont02_img3.png" alt="2019, 2020학년도 시대인재 입시 실적"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont02_img4.png" alt="2019, 2020학년도 시대인재 입시 실적"></p>
			</div>
		</div>
	</div>

	<div class="event-cont04">
		<div class="content-layout">
			<h3 class="tit">
				<img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont03_tit.png" alt="비교 불가 최상의 수능 서바이벌 모의고사">
			</h3>
			<div class="img-area">
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont03_img1.png" alt="수능과 동일한 퀄리티 Survival"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont03_img2.png" alt="전국모의고사로 전과목 실시, 온 /오프라인 동시 실시 실시간 응시화면 LIVE 송출"></p>
				<p><img src="http://img.sdij.com/sd2019/mobile/aca/event/2010/cont03_img3.png" alt="시대인재 재원생과의 경쟁 과목별 등급 컷 제공"></p>
			</div>
			<div class="board-btn mt40">
				<a href="orderGate2.asp" class="btn btn-black">시대인재 전국 모의고사 신청하기</a>
				<!--
				<a href="javascript:IfAppSend()" class="btn btn-lg2 btn-black">시대인재 전국 모의고사 신청하기</a>
				-->
			</div>
		</div>
	</div>

</div>
<!--// E : container -->


<script type="text/javascript">
$(function(){

});
</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->