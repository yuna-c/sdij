<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->


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
                <div class="board-box app-box float-area">
                    <!-- S : 무시험전형(우선) -->
                    <div class="fl mb40">
                        <h3 class="board-tit">무시험전형</h3>

                        <div class="mid-tit">우선선발</div>
                        <dl class="list-tit">
                            <dt><b>기준</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>2019학년도 수능 성적</li>
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
                                    <li>1/16 (수) PM 10:30 –마감시까지 </li>
                                </ul>
                            </dd>
                        </dl>

                        <div class="board-btn txt-center" style="margin-top:53px">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm2('0','1','2');">
                        </div>
                    </div>
                    <!--// E : 무시험전형(우선) -->

                    <!-- S : 무시험전형(선착순) -->
                    <div class="fr mb40">
                        <h3 class="board-tit">무시험전형</h3>

                        <div class="mid-tit">선착순</div>
                        <dl class="list-tit">
                            <dt><b>기준</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>2019학년도 수능 성적</li>
                                </ul>
                            </dd>

                            <dt><b>지원조건</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>국수(가)영 합 5등급 이내<br>또는 국수(가)과(1) 합 6등급 이내</li>
                                </ul>
                            </dd>

                            <dt><b>접수기간</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>1/16 (수) PM 10:30 –선착순 마감시까지 </li>
                                </ul>
                            </dd>
                        </dl>
                        <div class="board-btn txt-center">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm2('0','3','2');">
                        </div>
                    </div>
                    <!--// E : 무시험전형(선착순) -->

                    <!-- S : 무시험전형(성적순) -->
                    <div class="fl mb40">
                        <h3 class="board-tit">무시험전형</h3>

                        <div class="mid-tit">성적순</div>
                        <dl class="list-tit">
                            <dt><b>기준조건</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>2019학년도 수능 성적</li>
                                </ul>
                            </dd>

                            <dt><b>지원조건</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>국수(가)영 합 6등급 이내<br>또는 국수(가)과(1) 합 7등급 이내</li>
                                </ul>
                            </dd>

                            <dt><b>접수기간</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                   <li class="mb10">
                                        1차 &nbsp;&nbsp;1/16 (수) PM 10:30 -1/23 (수) PM 2:00 <br/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        (합격자 1/24(목) PM 2:00 부터 개별 통지)
                                    </li>
                                   <li>
                                        2차 &nbsp;&nbsp;1/24 (목) AM 9:00 –2/1 (목) PM 2:00<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        (합격자 2/2(월) PM 7:00 부터 개별 통지)
                                    </li>
                                </ul>
                            </dd>
                        </dl>

                        <div class="board-btn txt-center">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm2('0','2','2');">
                        </div>
                    </div>
                    <!--// E : 무시험전형(성적순) -->

                    <!-- S : 특별서류전형 -->
                    <div class="fr mb40">
                        <h3 class="board-tit border pb30">특별 서류전형</h3>
                        <dl class="list-tit">
                            <dt><b>지원대상</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>
                                        과학고 / 영재고 / 국제고 및 <br />
                                        우수지정고 졸업(예정)자
                                        <em>
                                            * 우수지정고 - 공주사대부고 / 공주한일고 / 광양제철고 / 김천고 / 대구경신고 / 민사고 / 부산해운대고 / 북일고 / 상산고 / 안산동산고 / 용인외대부고 / 인천하늘고 / 포항제철고 / 하나고 / 현대청운고
                                        </em>
                                    </li>
                                </ul>
                            </dd>

                            <dt><b>제출서류(기준조건 없음</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li style="font-size:13px">학교생활기록부 (필수) + 2019 수능 성적표 (응시자에 한)</li>
                                </ul>
                            </dd>

                            <dt><b>접수기간</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>
                                        1/16 (수) PM 10:30 –2/8 (금) PM 7:00<br>
                                        (합격자 발표 심사 이후 개별 통지)
                                    </li>
                                </ul>
                            </dd>
                        </dl>

                        <div class="board-btn txt-center" style="margin-top:104px;">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('2','2');">
                        </div>
                    </div>
                    <!--// E : 특별서류전형 -->

                    <!-- S : 유시험전형 -->
                    <div class="full clear">
                        <h3 class="board-tit border pb30">
                            유시험전형
                        </h3>

                        <div class="float-area">
                            <dl class="list-tit fl" style="width:50%">
                                <dt><b>전형일시</b></dt>
                                <dd>
                                    <ul class="list-dotted">
                                        <li>2/8 (금) PM 3:00</li>
                                    </ul>
                                </dd>

                                <dt><b>전형과목</b></dt>
                                <dd>
                                    <ul class="list-dotted">
                                        <li>1교시 국어 20문항 (40분)</li>
                                        <li>2교시 수학 (가) 20문항 (60분)</li>
                                    </ul>
                                </dd>
                            </dl>

                            <dl class="list-tit fr" style="width:50%">
                                <dt><b>접수기간</b></dt>
                                <dd>
                                    <ul class="list-dotted">
                                        <li>
                                            1/16 (수) PM 10:30 –2/7 (목) PM 5:00 <br>
                                            (합격자 2/11 (월) PM 2:00 부터 개별 통지)
                                        </li>
                                    </ul>
                                </dd>

                                <dt><b>제출서류(필수)</b></dt>
                                <dd>
                                    <ul class="list-dotted">
                                        <li>2019 수능 성적표 또는 학교생활기록부</li>
                                    </ul>
                                </dd>

                                <dt><b>응시료</b></dt>
                                <dd>
                                    <ul class="list-dotted">
                                        <li>
                                            20,000원 (온라인 결제)
                                        </li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>

                        <div class="board-btn txt-center">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('1','2');">
                        </div>
                    </div>
                    <!--// E : 유시험전형 -->
                </div>
            </div>
            <!--// E : 자연계 모집요강  -->

            <!-- S : 인문계 응시원서접수 -->
            <div class="tab-content">
                <div class="board-box app-box float-area">
                    <!-- S : 무시험전형(우선) -->
                    <div class="fl mb40">
                        <h3 class="board-tit">무시험전형</h3>

                        <div class="mid-tit">우선선발</div>
                        <dl class="list-tit">
                            <dt><b>기준</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>2019학년도 수능 성적</li>
                                </ul>
                            </dd>

                            <dt><b>지원조건</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>국수(나)영사(1) 합 5등급 이내</li>
                                </ul>
                            </dd>

                            <dt><b>접수기간</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>1/16 (수) PM 10:30 –마감시까지 </li>
                                </ul>
                            </dd>
                        </dl>

                        <div class="board-btn txt-center" style="margin-top:147px">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm2('0','1','2');">
                        </div>
                    </div>
                    <!--// E : 무시험전형(우선) -->

                    <!-- S : 무시험전형(성적순) -->
                    <div class="fr mb40">
                        <h3 class="board-tit">무시험전형</h3>

                        <div class="mid-tit">성적순</div>
                        <dl class="list-tit">
                            <dt><b>기준</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>2019학년도 수능 성적</li>
                                </ul>
                            </dd>

                            <dt><b>지원조건</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>
                                        국수(나)영 합 5등급 이내 <br />
                                        또는 국수(나)사(1) 합 5등급 이내
                                    </li>
                                </ul>
                            </dd>

                            <dt><b>접수기간</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li class="mb10">
                                        1차 &nbsp;&nbsp;1/16 (수) PM 10:30 -1/23 (수) PM 2:00 <br/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        (합격자 1/24(목) PM 2:00 부터 개별 통지)
                                    </li>
                                   <li>
                                        2차 &nbsp;&nbsp;1/24 (목) AM 9:00 –2/1 (목) PM 2:00<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        (합격자 2/2(월) PM 7:00 부터 개별 통지)
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <div class="board-btn txt-center">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm2('0','3','2');">
                        </div>
                    </div>
                    <!--// E : 무시험전형(성적순) -->

                    <!-- S : 유시험 전형 -->
                    <div class="fl mb40">
                        <h3 class="board-tit border pb30">유시험전형</h3>
                        <dl class="list-tit">
                            <dt><b>일시</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>2/8 (금) PM 3:00</li>
                                </ul>
                            </dd>

                            <dt><b>전형 과목</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>1교시 국어 20문항 (40분)</li>
                                    <li>2교시 수학 (나) 20문항 (60분)</li>
                                </ul>
                            </dd>

                            <dt><b>접수기간</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                   <li>
                                       1/16 (수) PM 10:30 –2/7 (목) PM 5:00 <br/>
                                       (합격자 2/11 (월) PM 2:00 부터 개별 통지)
                                   </li>
                                </ul>
                            </dd>

                            <dt><b>제출서류 (필수)</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                   <li>
                                      2019 수능 성적표 또는 학교생활기록부
                                   </li>
                                </ul>
                            </dd>

                            <dt><b>응시료</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                   <li>
                                       20,000원 (온라인 결제)
                                   </li>
                                </ul>
                            </dd>
                        </dl>

                        <div class="board-btn txt-center">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm2('0','2','2');">
                        </div>
                    </div>
                    <!--// E : 유시험 전형 -->

                    <!-- S : 특별서류전형 -->
                    <div class="fr mb40">
                        <h3 class="board-tit border pb30">특별 서류전형</h3>
                        <dl class="list-tit">
                            <dt><b>지원 대상</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>
                                        외고 /국제고 및 우수지정고 졸업(예정)자
                                        <em>* 우수지정고 - 공주사대부고 / 공주한일고 / 광양제철고 / 김천고 / 대구경신고 / 민사고 / 부산해운대고 / 북일고 / 상산고 / 안산동산고 / 용인외대부고 / 인천하늘고 / 포항제철고 / 하나고 / 현대청운고</em>
                                    </li>
                                </ul>
                            </dd>

                            <dt><b>제출서류(기준조건 없음)</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li style="font-size:13px">
                                        학교생활기록부 (필수) + 2019 수능 성적표 (응시자에 한)
                                        <em style="font-size:12px;">* 시대인재 자체 내신산출 및 변환점수 선발</em>
                                    </li>
                                </ul>
                            </dd>

                            <dt><b>접수기간</b></dt>
                            <dd>
                                <ul class="list-dotted">
                                    <li>
                                        1/16 (수) PM 10:30 –2/8 (금) PM 7:00 <br/>
                                        (합격자 발표 심사 이후 개별 통지)
                                    </li>
                                </ul>
                            </dd>
                        </dl>

                        <div class="board-btn txt-center" style="margin-top: 153px;">
                            <input type="button" class="btn btn-lg btn-black" value="접수하기" onclick="IfAppForm('2','2');">
                        </div>
                    </div>
                    <!--// E : 특별서류전형 -->
                </div>
            </div>
            <!--// E : 인문계 모집요강  -->
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