<%
'-----------------------------------------------------------------------
' 업 무 명 : 오르새 학원 > 오시는 길
' 모듈기능 : 
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
<!--#include virtual="/totalMobileSite/orsaysdij/common/include/incMeta.asp"--> 
<link rel="stylesheet" href="/totalMobileSite/orsaysdij/common/css/map.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/orsaysdij/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container map-container">

	<div class="content-layout">
		<h2 class="page-tit border-none">오시는 길</h2>
		
		<!-- S : 오시는 길-->
		<div class="txt-box mb30">
			<a href="https://map.naver.com/v5/directions/-/14149407.557345774,4490973.809785128,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%84%B1%EB%82%A8%EC%8B%9C%20%EB%B6%84%EB%8B%B9%EA%B5%AC%20%EC%A0%95%EC%9E%90%EC%9D%BC%EB%A1%9C%20234,,/-/car?c=14148922.6599111,4491057.4127848,15,0,0,0,dh" target="_black">
				<div class="img-box">	
					<img src="//img.orsaysdij.com/common/mo/map/100.png" alt="오시는길 지도이미지">
				</div>	
			</a>
		</div>

		<div class="list-tit">
			<dl>
				<dt>도로명 주소</dt>
				<dd>경기도 성남시 분당구 정자일로 234 태남프라자 4층 오르새학원</dd>

				<dt>지번 주소</dt>
				<dd>경기 성남시 분당구 정자동 8-4 태남프라자 4층 오르새학원</dd>

				<dt>전화번호</dt>
				<dd>031-717-5123</dd>

				<dt>대중교통 이용시</dt>
				<dd>
					<ul class="list-dotted">
						<li>	
							<span>[수인분당]</span>	
							<span>[신분당]</span>
							정자역 5번 출구에서 491m
						</li>
					</ul>
				</dd>
			</dl>
		</div>
		<!--// E : 오시는 길-->
	</div>
</div>
<!--// E : 컨텐츠 영역 -->

<script type="text/javascript">
$(function(){});
</script>

<!-- #include virtual="/totalMobileSite/orsaysdij/common/include/incFooter.asp" -->