<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/renewApplyList.css"> 

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">응시원서접수</h2>

    <!-- S : 응시원서접수 -->
    <div class="board-layout">
        <!-- S : 응시원서접수 안내 -->
        <div class="form-list">
            <table>
                <colgroup>
                    <col style="width:70px;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>공지</th>
                        <td>시대인재 N 입학원서는 온라인 접수 또는 방문접수만 가능 (우편접수 불가)</td>
                    </tr>
                    <tr>
                        <th>방문접수</th>
                        <td>서울 강남구 대치동 611 (강남대학교 카이로스 빌딩 2층)</td>
                    </tr>
                    <tr>
                        <th>전화문의</th>
                        <td>02-538-2321</td>
                    </tr>
                </tbody>
            </table>
        </div>
         <!--// E : 응시원서접수 안내 -->

        <!-- S : board-btn -->
        <div class="board-btn txt-center mt20 mb50">
            <input type="button" onclick="db_pop('pop_01'); return false;" class="btn btn-lg" value="접수내역 조회">
            <input type="button" onclick="db_pop('pop_02'); return false;" class="btn btn-lg" value="합격자 조회">
        </div>
        <!--// E : board-btn -->

        <div class="board-tab">
            <div class="tab-list">
                <a href="javascript:void(0);" class="selected">자연계</a>
                <a href="javascript:void(0);">인문계</a>
            </div>

            <!-- S : 자연계 응시원서접수 -->
            <div class="tab-content tab-on">
                <div class="board-box exam-box table-area mb40">
					<!-- S : 무시험전형(우선선발) -->
					<div>
					  <h3 class="board-tit">무시험전형</h3>
					  <div class="mid-tit">우선선발</div>

					  <div class="list-txt">
						<dl>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>국수(가)영과(1) 합 5등급 이내</li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>5/21(금) ~ 마감시까지</li>
							</ul>
						  </dd>
						</dl>
					  </div>

					  <div class="board-btn txt-center">

						<input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('0','1','0','0');">

					  </div>
					</div>
					<!--// E : 무시험전형(우선) -->

					<div class="cell"></div>

					<!-- S : 무시험전형(선착선발) -->
					<div>
					  <h3 class="board-tit">무시험전형</h3>
					  <div class="mid-tit">선착선발</div>

					  <div class="list-txt">
						<dl>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>
								국수(가)영 합 4등급이내
							  </li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>5/21(금) ~ 선착순 마감시까지</li>
							</ul>
						  </dd>
						</dl>
					  </div>

					  <div class="board-btn txt-center">

						<input type="button" class="btn btn-lg btn-darkgray" value="마감" onclick="alert('마감 되었습니다.');">

					  </div>
					</div>
					<!--// E : 무시험전형(선착선발) -->
				</div>

				 <div class="board-box exam-box table-area mb40">
					<!-- S : 무시험전형(성적선발) -->
					<div>
					  <h3 class="board-tit">무시험전형</h3>
					  <div class="mid-tit">성적선발</div>

					  <div class="list-txt">
						<dl>
						  <!-- <dt><b>성적선발</b></dt> -->
						  <dd>
							*시대인재 자체변환점수 기준
						  </dd>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>
								국수(가)영 합 5등급 이내<br>
								또는 국수(가)과(1) 합 6등급 이내
							  </li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						   <dd>
							*시대인재 자체변환점수 기준
						  </dd>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>
								국수(가)영 합 5등급 이내<br>
								또는 국수(가)과(1) 합 6등급 이내
							  </li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						  <dd>
							<ul class="list-dotted">
							   <li>
								마감
							   </li>
							   <li>
								1차 5/21 (금) ~ 5/27 (목) PM 5:00<br>
								(합격자 5/28(금) PM 5:00 이후 개별 통지)
							   </li>
							   <li>
								2차 5/27 (목) PM 5:00 ~ 6/3 (목) PM 5:00<br>
								(합격자 6/4(금) PM 5:00 이후 개별 통지)
							   </li>
							   <li>
								3차 6/3 (목) PM 5:00 ~ 6/8 (화) PM 5:00<br>
								(합격자 6/9(수) PM 5:00 이후 개별 통지)
							   </li>
							   <li>
								대기접수 가능 (성적순으로 개별연락)<br>&nbsp;
							   </li>
							</ul>
						  </dd>
						</dl>
					  </div>

					  <div class="board-btn txt-center">

						<input type="button" class="btn btn-lg btn-black" value="대기접수" onclick="IfAppForm('0','2','1','0');">

					  </div>
					</div>
					<!--// E : 무시험전형(성적선발) -->

					<div class="cell"></div>

					<!-- S : 특별 서류전형 -->
					<div>
					    <h3 class="board-tit">특별 서류전형</h3>

						<div class="list-txt">
							<dl>
								<dt><b>지원대상</b></dt>
								<dd>
									<ul class="list-dotted">
										<li>
											과고 /영재고 졸업자<br>
											또는 의치한 /서연고 재학생</br>
										(재학증 또는 합격증(필수) + 수능성적표(응시자에 한함))
										</li>
										<li>
										  <b>우수지정고 졸업 (예정)자</b><br>
										  또는 학생부 교과 (국수영과) 1.5등급 이내<br>
										  (학생부Ⅱ(필수) + 수능성적표(필수))
										  <em>
											*우수지정고 - 공주사대부고 / 공주한일고 / 광양제철고 / 김천고 / 대구경신고 / 민사고 / 부산해운대고 / 북일고 /상산고 / 안산동산고 / 용인외대부고 / 인천하늘고 / 포항제철고 / 하나고 / 현대청운고  
										  </em>
										</li>
									</ul>
								</dd>

								<dt><b>제출서류 (기준조건 없음)</b></dt>
								<dd>
								  <ul class="list-dotted">
									<li>
									  학생부Ⅱ 또는 재학(합격)증 (필수)<br>
									  +2021 수능 성적표 (응시자에 한)
									</li>
								  </ul>
								</dd>

								<dt><b>접수기간</b></dt>
								<dd>
								  <ul class="list-dotted">
									<li>
									  5/21(금) ~ 선착순 마감시까지<br>
									  <!-- (접수 후 개별연락 /필요시 면접 진행) -->
									</li>
									<!--
								   <li>
									대기접수 가능 (성적순으로 개별연락)<br>&nbsp;
								   </li>
								   -->
								  </ul>
								</dd>
							</dl>
						</div>

						<div class="board-btn txt-center">
						  <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('2','0','0','0');">
						</div>
					</div>
					<!--// E : 특별 서류전형 -->
				</div>

				<div class="board-box mb40">
				  <!-- S : 무시험 편입 전형(성적선발) -->
				  <div class="full-area">
					<h3 class="board-tit">무시험 편입 전형</h3>
					<div class="mid-tit">성적선발</div>

					<div class="list-txt float-area">
					  <dl class="fl">
						<dt><b>기준</b></dt>
						<dd>
						  <ul class="list-dotted">
							<li>2022학년도 6평 성적</li>
						  </ul>
						</dd>

						<dt><b>지원조건</b></dt>
						<dd>
						  <ul class="list-dotted">
							<li>
							  국수영과(1) 합 6등급 이내
							</li>
						  </ul>
						</dd>
					  </dl>

					  <dl class="fr">
						<dt><b>접수기간</b></dt>
						<dd>
						  <ul class="list-dotted">
							<li>
							  6/30 (수) ~ 7/11 (일) PM 5:00
							</li>

						  </ul>
						</dd>
					  </dl>
					</div>

					<div class="board-btn txt-center">

					  <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('0','2','0','1');">

					</div>
				  </div>
				  <!--// E : 무시험 편입 전형(성적선발) -->
				</div>
            </div>
            <!--// E : 자연계 모집요강  -->

             <!-- S : 자연계 응시원서접수 -->
            <div class="tab-content">
                <div class="board-box exam-box table-area mb40">
					<!-- S : 무시험전형(우선선발) -->
					<div>
					  <h3 class="board-tit">무시험전형</h3>
					  <div class="mid-tit">우선선발</div>

					  <div class="list-txt">
						<dl>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>국수(가)영과(1) 합 5등급 이내</li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>5/21(금) ~ 마감시까지</li>
							</ul>
						  </dd>
						</dl>
					  </div>

					  <div class="board-btn txt-center">

						<input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('0','1','0','0');">

					  </div>
					</div>
					<!--// E : 무시험전형(우선) -->

					<div class="cell"></div>

					<!-- S : 무시험전형(선착선발) -->
					<div>
					  <h3 class="board-tit">무시험전형</h3>
					  <div class="mid-tit">선착선발</div>

					  <div class="list-txt">
						<dl>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>
								국수(가)영 합 4등급이내
							  </li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>5/21(금) ~ 선착순 마감시까지</li>
							</ul>
						  </dd>
						</dl>
					  </div>

					  <div class="board-btn txt-center">

						<input type="button" class="btn btn-lg btn-darkgray" value="마감" onclick="alert('마감 되었습니다.');">

					  </div>
					</div>
					<!--// E : 무시험전형(선착선발) -->
				 </div>

				 <div class="board-box exam-box table-area mb40">
					<!-- S : 무시험전형(성적선발) -->
					<div>
					  <h3 class="board-tit">무시험전형</h3>
					  <div class="mid-tit">성적선발</div>

					  <div class="list-txt">
						<dl>
						  <!-- <dt><b>성적선발</b></dt> -->
						  <dd>
							*시대인재 자체변환점수 기준
						  </dd>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>
								국수(가)영 합 5등급 이내<br>
								또는 국수(가)과(1) 합 6등급 이내
							  </li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						   <dd>
							*시대인재 자체변환점수 기준
						  </dd>
						  <dt><b>기준</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li><b>2021학년도 수능 성적</b></li>
							</ul>
						  </dd>
						  <dt><b>지원조건</b></dt>
						  <dd>
							<ul class="list-dotted">
							  <li>
								국수(가)영 합 5등급 이내<br>
								또는 국수(가)과(1) 합 6등급 이내
							  </li>
							</ul>
						  </dd>
						  <dt><b>접수기간</b></dt>
						  <dd>
							<ul class="list-dotted">
							   <li>
								마감
							   </li>
							   <li>
								1차 5/21 (금) ~ 5/27 (목) PM 5:00<br>
								(합격자 5/28(금) PM 5:00 이후 개별 통지)
							   </li>
							   <li>
								2차 5/27 (목) PM 5:00 ~ 6/3 (목) PM 5:00<br>
								(합격자 6/4(금) PM 5:00 이후 개별 통지)
							   </li>
							   <li>
								3차 6/3 (목) PM 5:00 ~ 6/8 (화) PM 5:00<br>
								(합격자 6/9(수) PM 5:00 이후 개별 통지)
							   </li>
							   <li>
								대기접수 가능 (성적순으로 개별연락)<br>&nbsp;
							   </li>
							</ul>
						  </dd>
						</dl>
					  </div>

					  <div class="board-btn txt-center">

						<input type="button" class="btn btn-lg btn-black" value="대기접수" onclick="IfAppForm('0','2','1','0');">

					  </div>
					</div>
					<!--// E : 무시험전형(성적선발) -->

					<div class="cell"></div>

					<!-- S : 특별 서류전형 -->
					<div>
					    <h3 class="board-tit">특별 서류전형</h3>

						<div class="list-txt">
							<dl>
								<dt><b>지원대상</b></dt>
								<dd>
									<ul class="list-dotted">
										<li>
											과고 /영재고 졸업자<br>
											또는 의치한 /서연고 재학생</br>
										(재학증 또는 합격증(필수) + 수능성적표(응시자에 한함))
										</li>
										<li>
										  <b>우수지정고 졸업 (예정)자</b><br>
										  또는 학생부 교과 (국수영과) 1.5등급 이내<br>
										  (학생부Ⅱ(필수) + 수능성적표(필수))
										  <em>
											*우수지정고 - 공주사대부고 / 공주한일고 / 광양제철고 / 김천고 / 대구경신고 / 민사고 / 부산해운대고 / 북일고 /상산고 / 안산동산고 / 용인외대부고 / 인천하늘고 / 포항제철고 / 하나고 / 현대청운고  
										  </em>
										</li>
									</ul>
								</dd>

								<dt><b>제출서류 (기준조건 없음)</b></dt>
								<dd>
								  <ul class="list-dotted">
									<li>
									  학생부Ⅱ 또는 재학(합격)증 (필수)<br>
									  +2021 수능 성적표 (응시자에 한)
									</li>
								  </ul>
								</dd>

								<dt><b>접수기간</b></dt>
								<dd>
								  <ul class="list-dotted">
									<li>
									  5/21(금) ~ 선착순 마감시까지<br>
									  <!-- (접수 후 개별연락 /필요시 면접 진행) -->
									</li>
									<!--
								   <li>
									대기접수 가능 (성적순으로 개별연락)<br>&nbsp;
								   </li>
								   -->
								  </ul>
								</dd>
							</dl>
						</div>

						<div class="board-btn txt-center">
						  <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('2','0','0','0');">
						</div>
					</div>
					<!--// E : 특별 서류전형 -->
				</div>

				<div class="board-box mb40">
				  <!-- S : 무시험 편입 전형(성적선발) -->
				  <div class="full-area">
					<h3 class="board-tit">무시험 편입 전형</h3>
					<div class="mid-tit">성적선발</div>

					<div class="list-txt float-area">
					  <dl class="fl">
						<dt><b>기준</b></dt>
						<dd>
						  <ul class="list-dotted">
							<li>2022학년도 6평 성적</li>
						  </ul>
						</dd>

						<dt><b>지원조건</b></dt>
						<dd>
						  <ul class="list-dotted">
							<li>
							  국수영과(1) 합 6등급 이내
							</li>
						  </ul>
						</dd>
					  </dl>

					  <dl class="fr">
						<dt><b>접수기간</b></dt>
						<dd>
						  <ul class="list-dotted">
							<li>
							  6/30 (수) ~ 7/11 (일) PM 5:00
							</li>

						  </ul>
						</dd>
					  </dl>
					</div>

					<div class="board-btn txt-center">

					  <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('0','2','0','1');">

					</div>
				  </div>
				  <!--// E : 무시험 편입 전형(성적선발) -->
				</div>
            </div>
            <!--// E : 자연계 모집요강  -->

        </div>
    </div>
    <!--// E : 응시원서접수 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : dim-layer -->
<!--#include virtual="/totalWebSite/renew2019/common/include/incDimLayer.asp"-->
<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->


<script type="text/javascript">
    var db_pop = function(url){
        var popWidth =  "500"
        var popHeight =  "600"
        var winHeight = document.body.clientHeight; // 현재창의 높이
        var winWidth = document.body.clientWidth;   // 현재창의 너비
        var winX = window.screenLeft;   // 현재창의 x좌표
        var winY = window.screenTop;    // 현재창의 y좌표

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"",tOpt);

    };

</script>