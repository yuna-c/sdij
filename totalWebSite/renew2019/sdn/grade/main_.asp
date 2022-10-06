<!--#include virtual="/elite/_common/systemSet/bof.asp"-->

<% ' 페이지 %>
<%
	tblMenuIdx = "00"
	' pageAuth = false
%>
<!--#include virtual="/elite/_common/include/pageAuth.asp"-->
<% ' //페이지 %>
<!--#include virtual="/elite/_common/includeUI/inc.head.asp"-->


<%
' 페이지별 처리



' 유의사항 및 상단 타이틀 데이터 가져오기
tblPreCautionCommonIdx		= 3


sqlStr = "Select titles From dbo.tblPreCautionCommon With(ReadunCommitted)" & vbCrLf
sqlStr = sqlStr & "Where openStatus = 'Y' And isDel = 'N' And tblPreCautionCommonIdx = "&tblPreCautionCommonIdx&"" & vbCrLf
'printQuery(sqlStr)
commonTitles = getOne(sqlStr)




' //페이지별 처리
%>



<!-- css 추가로 들어갈경우 -->
<link rel="stylesheet" href="main.css">
<style type="text/css">

</style>
<!-- //css 추가로 들어갈경우 -->

<!-- 스크립트 추가로 들어갈경우 -->
<script type="text/javascript">
// 유의사항
function getCaution(objIdx) {
	var xmlHttp = Ajax.getTransport();
	var url = "xhrCaution.asp?tblPreCautionCommonIdx="+objIdx;

	xmlHttp.open("GET", url, true);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xmlHttp.onreadystatechange = xmlCallback;
	xmlHttp.send(null);

	function xmlCallback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				data = xmlHttp.responseText;
				$("#id_caution").html(data);
			} else if (xmlHttp.status == 204) {
				alert("전달된 데이터가 없습니다.");
			} else if (xmlHttp.status == 404) {
				alert("URL을 확인하세요.");
			} else if (xmlHttp.status == 500) {
				alert("ERROR.");
			}
		}
	}
}

// Review
function getReview(page) {
	var xmlHttp = Ajax.getTransport();
	var url = "xhrReviewList.asp?aGotoPage="+page;

	xmlHttp.open("GET", url, true);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xmlHttp.onreadystatechange = xmlCallback;
	xmlHttp.send(null);

	function xmlCallback() {
		if (xmlHttp.readyState == 4) {
			//alert(xmlHttp.responseText);
			//alert(xmlHttp.status);
			if (xmlHttp.status == 200) {
				data = xmlHttp.responseText;
				$("#xhrReview").html(data);
			} else if (xmlHttp.status == 204) {
				alert("전달된 데이터가 없습니다.");
			} else if (xmlHttp.status == 404) {
				alert("URL을 확인하세요.");
			} else if (xmlHttp.status == 500) {
				alert("ERROR.");
			}
		}
	}
}

// 이벤트등록
function goActionUrl() {
	var Frm = document.urlForm;

	if(jQuery("#name").val() == "") {
		alert("이름을 입력해주세요");
		return;
	}
	if(jQuery("#email").val() == "") {
		alert("이메일을 입력해주세요");
		return;
	}
	if(jQuery("#urlVal").val() == "") {
		alert("인증경로를 입력해주세요");
		return;
	}


	var xmlHttp = Ajax.getTransport();
	var serialize = getSerialize(Frm);
	var url = "urlProc.asp";
	/*
	Frm.action=url;
	Frm.submit();
	return;
	*/
	xmlHttp.open("POST", url, true);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xmlHttp.onreadystatechange = xmlCallback;
	xmlHttp.send(serialize);

	function xmlCallback() {
		if (xmlHttp.readyState == 4) {
			//alert(xmlHttp.responseText);
			if (xmlHttp.status == 200) {
				data = xmlHttp.responseText;
				/*
				var dataSp = data.split("|")

				// 데이터넣기
				var dataSpa = dataSp[0];
				var dataSpb = dataSp[1];

				alert(dataSpa);
				*/
				if (data == "OK")
				{
					alert("등록되었습니다");
					Frm.reset();
				} else {
					alert(data);
					return;
				}
			} else if (xmlHttp.status == 204) {
				alert("전달된 데이터가 없습니다.");
			} else if (xmlHttp.status == 404) {
				alert("URL을 확인하세요.");
			} else if (xmlHttp.status == 500) {
				alert("ERROR.");
			}
		}
	}
}
//-->
</script>
<!-- //스크립트 추가로 들어갈경우 -->
<script>
	$(document).ready(function(){

			$(window).scroll(function(){
				var sTop=$(window).scrollTop();
				var moveTop=sTop+150;
				$('#fixed-banner').stop().animate({
					top:moveTop
				},500)
			});

			// var spot = [];

			// $('.scroll').each(function(i){
			//  	spot.push($(this).offset().top)
			//  });

			// console.log(spot);


			// if(($('#fixed-banner ul li a').is('animated')==false)){
			//  $('#fixed-banner ul li a').on('click',function(){

			//  	var idx = $(this).parent().index();

			//  	$('body,html').animate({
			//  		'scrollTop':spot[idx]+221
			//  	},500)


			//  	console.log(idx);

			//  	return false;
			//  });
			// };

	});
</script>


<% ' GNB 메뉴 %>
<!--#include virtual="/elite/_common/includeUI/inc.gnb.asp"-->
<% ' //GNB 메뉴 %>


<!-- contents-container -->
<div id="contents-container">


<div class="elite-event-wrap">

	<div id="fixed-banner">
		<ul>
			<li>
				<a href="#scroll1">왜필요</a>
			</li>
			<li>
				<a href="#scroll2">무엇이 특별</a>
			</li>
			<li>
				<a href="#scroll3">정말 믿어도 되나?</a>
			</li>
			<li class="big">
				<a href="#scroll4">한정혜택 마감임박</a>
			</li>
			<li>
				<a href="#scroll5">이벤트</a>
			</li>
		</ul>
	</div>




	<div class="bg_01">
		<div class="dotted-th">
			<%=commonTitles%><span></span>
		</div>
		<div class="tit_01">
			월간 엘리트<br/>
			<em>1 Year Package</em>
		</div>
		<div class="tit_02">
			학생들의 시선에 보이지 않는 것으로부터 보이는 가치를 만들어 낼 수 있는<br/>
			<div class="through-th">
				<span>가장 정제된 컨텐츠가 매달 도착합니다.</span>
			</div>
			<img src="/elite/images/event/2019/0101/bg_01.png" alt="엘리트모의고사">
			<a href="#scroll4">지금 신청하기</a>
		</div>
		<ul>
			<li>
				<div class="top scroll" id="scroll1">
					<span>왜 월간 엘리트 1 year package로 공부해야 할까?</span>
					수능은 물, 불 안가리는데 <br />
					언제까지 물 , 불 가리면서 공부할래?
				</div>
				<div class="con">
					<p>
						때를 기다리지 마세요.
						<span>19’ 수능에서 여실히 드러났 듯, 실전감각은 빨리 내 것이 될수록 좋습니다.</span>
						<em>
							‘실전 모의고사는 여름부터?’도 옛말. 이제는 사치일 뿐, <br/>
							“수능과 동일 시간, 동일 환경으로 문제 풀 수 있는 방학” 겨울도 여름도 놓치지 말고 1월부터 실전에 돌입하세요.
						</em>
					</p>
					<p>
						문제 가리지 마세요.
						<span>기출, EBS, 창작 / 변형 문제 다 필요합니다.</span>
						<em>
							여기저기서 헤매지 말고 수능 필수 문제들을 매달 꾸준히 다 풀어봐야합니다. <br/>
							1분 1초가 금쪽같은 시간인 수험기간에 문제풀이 시간이 부족하다면 <br/>
							어느 한 부분을 포기할 것이 아니라, 정제된 문제를 선별하는 시간을 줄이는 것이 답 입니다.
						</em>
					</p>
					<p>
						난이도 가리지 마세요.
						<span>평가원의 시선을 담은 고급문항도 충분히 풀어야합니다.</span>
						<em>
							겨울방학만 지나면 상위권들은 이미 ‘기출은 보기만 해도 답이 나올만큼 돌려봤다’ 말합니다. <br/>
							이후 남은 기간은 전문가들이 제작한 고급문항을 지속적으로 공급받고 풀어 나가야 합니다. <br/>
							문제의 퀄리티는 학생의 시선에서 보이지 않을 수 있지만, 눈에 보이는 결과의 차이는 반드시 완성됩니다.
						</em>
					</p>
				</div>
			</li>
			<li class="sec">
				<div class="top scroll" id="scroll2">
					<span>월간 엘리트 1 year package는 무엇이 특별할까?</span>
					2020’ 수능 대비 <br/>
					대규모 업그레이드 4가지
				</div>
				<div class="con">
					<ul>
						<li>
							<b>01. 출제진 강화</b>
							<em>
								과목별 출제 위원급 최상위 저자집단 + 30명 이상 연구, 개발진 + 2019년 전문 인력 추가 보강
							</em>
							<img src="/elite/images/event/2019/0101/special-img-01.png" alt="출제진강화이미지">
						</li>
						<li>
							<b>02. 최상위권 수험생 베타 테스트</b>
							<em>
								2019년 제작되는 모든 모의고사를 SKY 대학 합격생과 최상위권 실수험생을 대상 베타테스트 실행
								피드백 결과를 반영해 문항 수정 및 삭제, 수험생 대표 커뮤니티에 결과 100% 공개
							</em>
							<img src="/elite/images/event/2019/0101/special-img-02.png" alt="최상위권 수험생 베타 테스트이미지">
						</li>
						<li>
							<b>03. 약점공략 액기스 교재 강화</b>
							<em>
								현수능에서 가장 어려운 파트들은 집중적으로 추가 공부할 수 있도록 따라 붙는 교재 제공
							</em>
							<img src="/elite/images/event/2019/0101/special-img-03.png" alt="약점공략 액기스 교재 강화이미지" class="left">
						</li>
						<li>
							<b>04. 모의고사, 교재 제공 시기 전면 개편</b>
							<em>
								수능에 임박해 제대로 못풀어보고 넘어가는 문제가 없도록 필요한 시기에,
								꾸준히 학습할 수 있게 적당량을 제공
							</em>
							<img src="/elite/images/event/2019/0101/special-img-04.png" alt="약점공략 액기스 교재 강화이미지">
						</li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="bg_02 scroll" id="scroll3">
		<div class="tit_01">
			정말 믿어도 될까? <br/>
			<div class="through-th">
				<span>더 길게 설명하지 않을게요. 직접 풀어본 사람은 이미 알아요.</span>
			</div>
		</div>
		<div class="review-box">
				<!-- REIVEW -->
				<a name="tagReview"></a>
				<div>
					<div id="xhrReview"></div>
				</div>
				<!-- //REIVEW -->
		</div>
		<div class="download-list">
			<span>2020’ 수능에도 계속 될 적중을 기대해주세요.</span>
			<ul>
				<li>
					<span>2019학년도 수능 - 엘리트 모의고사 적중 REPORT <국어></span>
					<a href="#">다운로드</a>
				</li>
				<li>
					<span>2019학년도 수능 - 엘리트 모의고사 적중 REPORT <수학(가)></span>
					<a href="#">다운로드</a>
				</li>
				<li>
					<span>2019학년도 수능 - 엘리트 모의고사 적중 REPORT <수학(나)></span>
					<a href="#">다운로드</a>
				</li>
				<li>
					<span>~2018학년도 수능 - 엘리트 모의고사 역대 적중 REPORT</span>
					<a href="#">다운로드</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="bg_03 scroll" id="scroll4">
		<div class="tit_01">
			<span>2019</span>
			<span>Brand New</span>
		</div>
		<div class="yellow-t">
			월간 엘리트 1 Year Package
		</div>
		<ul class="apply-box">
			<li>
				<div class="text">
					<span>문과전용</span>
					국어 + 수학(나) + 영어 <br/>
					매달 정제된 컨텐츠가 집으로 도착
				</div>
				<a href="javascript: void(0);" onclick="goBasketSingle('PRD2019010900721-PRD2019010900721');">신청하기</a>
			</li>
			<li>
				<div class="text">
					<span>이과 전용</span>
						국어 + 수학(가) + 영어 <br/>
						매달 정제된 컨텐츠가 집으로 도착
				</div>
				<a href="javascript: void(0);" onclick="goBasketSingle('PRD2019010900722-PRD2019010900722');">신청하기</a>
			</li>
		</ul>
		<div class="tit_02">
			<span>지금 신청</span>
			<span>하면 런칭 기념 무료!</span>
		</div>
		<div class="line-box">
			<ul>
				<li>
					<span>혜택 01</span>
					<div class="circle">
							<div class="star">
								엘리트 Remaster <br />
								모의고사 풀 세트
								<em>9만원 상당*</em>
								<span>(문과/이과 중 1택 배송)</span>
							</div>
					</div>
				</li>
				<li class="sec">
					<span>혜택 02</span>
					<div class="circle">
							<div class="star">
								모트모트 플래너 <br/>
								/ 노트 풀 세트
								<em>수험생 필수품</em>
							</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="bg_04 scroll" id="scroll5">
		<div class="tit_01">
			이벤트
			<span>2019. 01. 25까지 참여가능</span>
		</div>
		<div class="tit_02">
			<span>엘리트 모의고사 연간 풀 패키지</span> 런칭 소식 알리면 선물 도착!
			<em>(많이 알릴 수록 더 좋은 선물이 옵니다.)</em>
		</div>
		<ul>
			<li>
				<span>1등</span>
				<em>
					카카오 프렌즈 <br/>
					말랑 얼굴 쿠션
				</em>
			</li>
			<li class="sec">
				<span>2~10등</span>
				<em>
					도미노 피자 + 콜라
				</em>
			</li>
			<li class="thir">
				<span>선착순 500명</span>
				<em>
					모트모트 31day <br/>
					텐미닛 플래너
				</em>
			</li>
		</ul>
		<div class="step-list">
			<span>참여 방법</span>
			<ul>
				<li>
					01. 엘리트 모의고사 연간 풀 패키지페이지를 찍고,
				</li>
				<li>
					02. 사진과 함께 SNS에 런칭 소식을 알리고,
				</li>
				<li>
					03. 올린 글의 URL을 아래에 남겨주면 끝!
				</li>
			</ul>
			<em>
				! <br/>
				페이스북, 인스타에 올릴 때는 <br/>
				#엘리트모의고사 #엘모 #2020수능 #공부인증 해시태그를 꼭 추가해야 당첨 <br/>
				블로그에 올릴 때는 제목에 [2020 수능 대비 엘리트 모의고사] 를 꼭 추가해야 당첨
			</em>
		</div>
	</div>
	<div class="bg_05">
		<div class="form-wrap">
				<form name="urlForm" id="urlForm" method="post">
					<table>
						<tbody>
							<tr>
								<th>닉네임</th>
								<td>
									<input type="text" name="name" id="name" class="text short" placeholder="이름을 입력해 주세요." />
								</td>
								<td rowspan="3">
									<a href="javascript:void(0);" onclick="goActionUrl();">등록하기</a>
								</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" name="email" id="email" class="text short" placeholder="이메일을 입력해 주세요." />
								</td>
							</tr>
							<tr>
								<th>인증 URL</th>
								<td>
										<input type="text" name="urlVal" id="urlVal" class="text long" placeholder="인증URL을 입력해 주세요." />
								</td>
							</tr>
						</tbody>
					</table>
				</form>
		</div>
	</div>
	<div class="bg_06">
		<div class="tit_01">구매&환불 유의사항</div>
		<div id="id_caution"></div>
	</div>
</div>




















</div>
<!--// contents-container -->



<script type="text/javascript">
<!--
// 유의사항
getCaution("<%=tblPreCautionCommonIdx%>");

// 리뷰
getReview('1');
//-->
</script>
<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 
<!--include virtual="/elite/_common/includeUI/inc.footer.asp"-->
