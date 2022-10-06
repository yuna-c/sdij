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
<!--#include virtual="/totalWebSite/orsaysdij/common/include/incMeta.asp"--> 
<link rel="stylesheet" href="/totalWebSite/orsaysdij/common/css/map.css?ver=<%=now()%>">
<!--#include virtual="/totalWebSite/orsaysdij/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
		<!-- S : 컨텐츠 영역 -->
		<div class="layout-container map-container">
			<div class="page-loc float-area">
				<div class="fl">
					<a href="javascript:history.back();">&lt; Back</a>
				</div>
			</div>

			<!-- S : 오시는 길 --> 
			<div class="board-layout">
				<h2 class="page-tit">오시는 길</h2>

				<div class="img-box">
					<a href="javascript:void(0);" target="_black" alt="지도바로가기(새창)"></a>
					<img src="//img.orsaysdij.com/common/pc/map/100.png" alt="오시는길 지도이미지" usemap="#100-link">
					<map name="100-link" id="100-link">
						<area shape="rect" coords="647,181,697,216" href="https://map.naver.com/v5/search/%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%84%B1%EB%82%A8%EC%8B%9C%20%EB%B6%84%EB%8B%B9%EA%B5%AC%20%EC%A0%95%EC%9E%90%EC%9D%BC%EB%A1%9C%20234/address/14149407.557345774,4490973.809785128,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%84%B1%EB%82%A8%EC%8B%9C%20%EB%B6%84%EB%8B%B9%EA%B5%AC%20%EC%A0%95%EC%9E%90%EC%9D%BC%EB%A1%9C%20234,new?c=14149374.7882617,4490978.9242421,19,0,0,0,dh" alt="오시는 길">
					</map>
				</div>	

				<div class="board-btn txt-right">
                    <a href="javascript:void(0);" class="btn btn-print btn-rightgray" onclick="window.print();">인쇄하기</a>
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
			</div>
			<!--// E : 오시는 길 -->
		</div>
		<!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<script type="text/javascript">
$(function(){});
</script>

<!-- #include virtual="/totalWebSite/orsaysdij/common/include/incFooter.asp" -->