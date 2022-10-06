<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 마이페이지 > 나의쿠폰/캐시
' 모듈기능 : 시대인재 Digital > 마이페이지 > 나의쿠폰/캐시
' 파 일 명 : benefitList.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/benefit.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="benefit-container mt40">
        <!-- S : 컨텐츠 -->
        <div class="content-layout">
			<div class="tit-dep1">
				<span class="tit">나의쿠폰/캐시</span>
			</div>

			<!-- S : lab -->
			<!--#include file="incLnb.asp"-->
			<!--// E : lab -->

			<div class="tab-type">
				<ul>
					<li>
						<div class="txt-area">
							<p class="txt">보유캐시</p>
							<h4 class="tit-dep1">
								<span class="tit">10,000원</span>
							</h4>
						</div>

						<div class="info-area">
							<a href="javascript:void(0);">내역확인</a>
							<span><a href="javascript:void(0);" onclick="fnOpenModal('.modal-cash');">충전하기</a></span>
						</div> 
					</li>			
					<li>
						<div class="txt-area">
							<p class="txt">사용 가능 쿠폰</p>
							<h4 class="tit-dep1">
								<span class="tit tit-red">4장</span>
							</h4>
						</div>

						<div class="info-area">
							<a href="javascript:void(0);">쿠폰 확인하기</a>
							<span><a href="javascript:void(0);" onclick="fnOpenModal('.modal-coupon');">쿠폰 등록하기</a></span>
						</div>
					</li>	
				</ul>
			</div>

			<div class="tab-content tab-on">
				<h5 class="tit-dep4">캐시 충전/사용 내역</h5>

				<div class="sort-area sort-border">
					<!-- S : 날짜 검색 -->
					<div class="date-sort">
						<label class="input-date">
							<input type="text" readonly>
						</label>
						<span class="dash">~</span>
						<label class="input-date">
							<input type="text" readonly>
						</label>
					</div>

					<div class="form-toggle">
						<label class="toggle-radio">
							<input type="radio" id="dateType1" name="dateType">
							<span>1주일</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="dateType2" name="dateType">
							<span>1개월</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="dateType3" name="dateType">
							<span>3개월</span>
						</label>
						<label class="toggle-radio">
							<input type="radio" id="dateType4" name="dateType">
							<span>6개월</span>
						</label>
					</div>

					<div class="sort-side">
						<a href="javascript:void(0)" class="btn btn-black">검색</a>
					</div>
					<!--// E : 날짜 검색 -->
				</div>
	
				<div class="table-type1">
					<ul>
						<% For i = 1 To 10 '리스트 최대 10개 노출 이후 더보기 버튼 클릭 시 노출 %>
						<li>
							<div class="type-area">
								<% if i <= 3 then '충전 했을 경우 %>
								<i class="ico-circle-plus"></i>
								<% else '사용 했을 경우 %>
								<i class="ico-circle-minus"></i>
								<% end if %>
							</div>

							<div class="tit-area">
								<span class="tit">
									<% if i <= 3 then '충전 했을 경우 %>
                                    포인트 충전, 카드결제
									<% else '사용 했을 경우 %>
									교재, 결제 사용
									<% end if %>
                                </span>
							</div>
							<div class="price-area">
								<% if i <= 3 then '충전 했을 경우 %>
								+10,000
								<% else '사용 했을 경우 %>
								-10,000
								<% end if %>
							</div>
							<div class="date-area">
								2021/01/11
							</div>
						</li>
						<% Next %>
					</ul>
				</div>

				<div class="btn-area txt-center mt30">
					<a href="javascript:void(0);" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
				</div>

				<div class="no-data">
					<i class="ico-alert"></i>
					캐시 충전/사용 내역이 없습니다.
				</div>

			</div>
			
			<div class="tab-content">
				<!-- S : 사용 가능한 쿠폰 --> 
				<h5 class="tit-dep4">사용가능한 쿠폰</h5>

				<div class="benefit-area">
					<ul>
						<% For i = 1 To 10 '리스트 최대 5줄 노출 이후 더보기 버튼 클릭 시 노출 %>
						<li>
							<div class="txt-area">
								<span class="sticker-green strong">D-34</span>
								<p class="tit-dep4">
									배송비 무료 쿠폰
									<% if i <= 3 then '배송비 쿠폰일 경우 %>
									<i class="ico-delivery"></i>
									<% else '기프트 쿠폰일 경우 %>
									<i class="ico-present"></i>
									<% end if %>
								</p>
								<p class="txt">쿠폰 번호 : aaaaaaa123456789</p>
								<span class="txt">사용기한 ~2021/03/11</span>
							</div>
						</li>
						<% Next %>
					</ul>
				</div>

				<div class="btn-area txt-center mt30">
					<a href="javascript:void(0);" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
				</div>

				<div class="no-data">
					<i class="ico-alert"></i>
					발급된 쿠폰이 없습니다.
				</div>
				<!--// E : 사용 가능한 쿠폰 --> 
				
				<!-- S : 종료된 쿠폰 --> 
				<h5 class="tit-dep4">종료된 쿠폰</h5>

				<div class="benefit-area">
					<ul>
						<% For i = 1 To 10 '리스트 최대 5줄 노출 이후 더보기 버튼 클릭 시 노출 %>
						<li>
							<div class="txt-area">
								<span class="sticker-red strong">사용완료</span>
								<p class="tit-dep4">
									배송비 무료 쿠폰
									<% if i <= 3 then '배송비 쿠폰일 경우 %>
									<i class="ico-delivery"></i>
									<% else '기프트 쿠폰일 경우 %>
									<i class="ico-present"></i>
									<% end if %>
								</p>
								<span class="txt">사용기한 ~2021/03/11</span>
							</div>
						</li>
						<% Next %>
					</ul>
				</div>
				
				<div class="btn-area txt-center mt30">
					<a href="javascript:void(0);" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
				</div>

				<div class="no-data">
					<i class="ico-alert"></i>
					사용된 쿠폰이 없습니다.
				</div>
				<!--// E : 종료된 쿠폰 --> 
			</div>
        </div>
        <!--// E : 컨텐츠 -->

		<!-- S : modal -->
		<div class="modal-wrap">
			<div class="modal-bg"></div>

			<!-- S : 캐시 충전하기 -->
			<!--#include virtual="/totalWebSite/sdijx/mypage/incModalCash.asp"-->
			<!--// E : 캐시 충전하기 -->

			<!-- S : 쿠폰 등록하기 -->
			<!--#include virtual="/totalWebSite/sdijx/mypage/incModalCoupon.asp"-->
			<!--// E : 쿠폰 등록하기 -->

		</div>
		<!--// E : modal -->
    </section>
    <!--// E : container -->

<script>
	//datepicker
	$(function(){
		// input date value="오늘 날짜"
		fnTimeNow();
	});
</script>

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->




	
