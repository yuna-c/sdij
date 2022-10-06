<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <div class="content-layout">
        <h2 class="page-tit border-tit">
            시대인재 부엉이포스트
        </h2>

        <div class="board-tab">
            <div class="tab-list">
                <a href="javascript:void(0);" class="selected">월례고사</a>
                <a href="javascript:void(0);">서바이벌</a>
                <a href="javascript:void(0);">수능직전 FINAL</a>
            </div>

            <div class="tab-content tab-on">
                <!-- S : 탭 영역 -->
                <div class="grade-tab float-area">
                    <select class="select">
                        <option value="선택">선택</option>
                    </select>
                    <!--div class="fl">
                        <select class="select">
                            <option value="선택">선택</option>
                        </select>
                    </div>
                    <div class="fr">
                        <ul>
                            <li class="selected"><a href="javascript:void(0);">국어</a></li>
                            <% For i=1 To 11 %>
                            <li><a href="javascript:void(0);">영어</a></li>
                            <% next %>
                        </ul>
                    </div-->
                </div>
                <!--// E : 탭 영역 -->

                <!-- S : 분석 영역 -->
                <div class="grade-box">
                    <a href="#" class="btn btn-print btn-rightgray">인쇄하기</a>
                    <h3>
                        <span>이지현</span>님의 시대인재 N 재종<br>
                        월례고사 5월 수능 모의평가 성적 분석
                    </h3>
                    <ul>
                        <li>점수<strong>12점</strong></li>
                        <li>등급<strong>3이하</strong></li>
                        <li>예상 백분위<strong>0</strong></li>
                    </ul>
                    <div>
                        <span>1등급컷 91점</span>
                        <span>2등급컷 87점</span>
                    </div>
                </div>
                <!--// E : 분석 영역 -->

                <!-- S : 월별 추이 -->
                <h4 class="table-tit">월별 추이</h4>
                <div class="charts-box" id="grade-graph"></div>
                <!--// E : 월별 추이 -->

                <!-- S : 전 회차 본인 점수 전체 분석 -->
                <div class="board-list">
                    <h4 class="table-tit">
                        전 회차 본인 점수 전체 분석
                        <small>*응시이력이 없는 회차의 경우 하이픈(-)으로 노출됩니다.</small>
                    </h4>
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>응시회차</th>
                                <th>3월(2018-03-30)</th>
                                <th>4월(2018-04-27)</th>
                                <th>5월(2018-05-25)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="color-red">
                                <th>본인 원점수</th>
                                <td>93점</td>
                                <td>88점</td>
                                <td>12점</td>
                            </tr>
                            <tr>
                                <th>시대 N 최고점</th>
                                <td>100점</td>
                                <td>100점</td>
                                <td>100점</td>
                            </tr>
                            <tr>
                                <th>시대 N 30% 평균</th>
                                <td>96.5점</td>
                                <td>93.2점</td>
                                <td>95.9점</td>
                            </tr>
                            <tr>
                                <th>시대 N 평균</th>
                                <td>89.6점</td>
                                <td>85.7점</td>
                                <td>88.6점</td>
                            </tr>
                            <tr class="color-red">
                                <th>등급</th>
                                <td>2등급</td>
                                <td>2등급</td>
                                <td>3등급 이하</td>
                            </tr>
                            <tr class="color-red">
                                <th>예상 백분위</th>
                                <td>91</td>
                                <td>91</td>
                                <td>60 미만</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 전 회차 본인 점수 전체 분석 -->

                <!-- S : 전체 응시자 오답률 BEST 5 -->
                <div class="board-list">
                    <h4 class="table-tit"><span>5월</span> 전체 응시자 오답률 BEST 5</h4>
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>순위</th>
                                <th>문항번호</th>
                                <th>오답률</th>
                                <th>단원</th>
                                <th>나의 정오</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i=1 To 5 %>
                            <tr>
                                <th><%=i%>위</th>
                                <td>21</td>
                                <td>50%</td>
                                <td>사회</td>
                                <td class="color-red">X</td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 전체 응시자 오답률 BEST 5 -->

                <!-- S : 전체 문항 상세분석 -->
                <div class="board-list">
                    <h4 class="table-tit">
                        <span>5월</span> 전체 문항 상세분석
                        <small>*난이도는 A가 가장 어렵고 E가 가장 쉬운 문항을 의미합니다.</small>
                    </h4>
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th rowspan="2">문항번호</th>
                                <th rowspan="2">단원</th>
                                <th rowspan="2">정답률</th>
                                <th rowspan="2">난이도</th>
                                <th rowspan="2">채점결과</th>
                                <th rowspan="2">가장<br>빈번한 오답</th>
                                <th colspan="3">시대 N 등급별 정답률</th>
                            </tr>
                            <tr>
                                <th>1등급</th>
                                <th>2등급</th>
                                <th>2등급</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i=1 To 5 %>
                            <tr>
                                <th><%=i%></th>
                                <td>화법</td>
                                <td>50%</td>
                                <td>D</td>
                                <td>O</td><!-- 오답일 경우 class="color-red" 추가 -->
                                <td>5</td>
                                <td>90%</td>
                                <td>90%</td>
                                <td>90%</td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 전체 문항 상세분석 -->

                <!-- S : 단원별 상세 분석 -->
                <div class="board-list">
                    <h4 class="table-tit">
                        <span>5월</span> 단원별 상세 분석
                        <small>*난이도는 A가 가장 어렵고 E가 가장 쉬운 문항을 의미합니다.</small>
                    </h4>
                    <table>
                        <colgroup>
                            <col style="width:110px;">
                            <col style="width:100px;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:130px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2" rowspan="2">평가요소</th>
                                <th rowspan="2">배점</th>
                                <th class="color-red" rowspan="2">본인득점</th>
                                <th colspan="4">시대 N 평균 득점</th>
                                <th rowspan="2">문항번호</th>
                            </tr>
                            <tr>
                                <th>1%</th>
                                <th>1등급</th>
                                <th>2등급</th>
                                <th>3등급 이하</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i=1 To 3 %>
                            <tr>
                                <th rowspan="2" class="txt-left">화법/작문</td><!-- 상세과목 개수에 따라 colspan="과목개수" -->
                                <th class="txt-left">화법</th>
                                <td>11</td>
                                <td class="color-red">5</td>
                                <td>11</td>
                                <td>11.7</td>
                                <td>10</td>
                                <td>10</td>
                                <td>1, 2, 3, 4, 5</td>
                            </tr>
                            <tr>
                                <th class="txt-left">작문</th>
                                <td>11</td>
                                <td class="color-red">5</td>
                                <td>11</td>
                                <td>11.7</td>
                                <td>10</td>
                                <td>10</td>
                                <td>1, 2, 3, 4, 5</td>
                            </tr>
                            <tr class="total-line">
                                <th colspan="2" class="txt-left">합계</th>
                                <td>22</td>
                                <td class="color-red">10</td>
                                <td>22</td>
                                <td>23.4</td>
                                <td>20</td>
                                <td>20</td>
                                <td>-</td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 단원별 상세 분석 -->

                <!-- S : 난이도별 상세 분석 -->
                <div class="board-list">
                    <h4 class="table-tit"><span>5월</span> 난이도별 상세 분석</h4>
                    <table>
                        <colgroup>
                            <col style="width:150px;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:150px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th rowspan="2">난이도</th>
                                <th rowspan="2">배점</th>
                                <th class="color-red" rowspan="2">본인득점</th>
                                <th colspan="4">시대 N 평균 득점</th>
                                <th rowspan="2">문항번호</th>
                            </tr>
                            <tr>
                                <th>1%</th>
                                <th>1등급</th>
                                <th>2등급</th>
                                <th>3등급 이하</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% For i=1 To 3 %>
                            <tr>
                                <th>2점문항</t>
                                <td>11</td>
                                <td class="color-red">5</td>
                                <td>11</td>
                                <td>11.7</td>
                                <td>10</td>
                                <td>10</td>
                                <td>1, 2, 3, 4, 5</td>
                            </tr>
                            <tr>
                                <th>3점문항</th>
                                <td>11</td>
                                <td class="color-red">5</td>
                                <td>11</td>
                                <td>11.7</td>
                                <td>10</td>
                                <td>10</td>
                                <td>1, 2, 3, 4, 5</td>
                            </tr>
                            <tr class="total-line">
                                <th>합계</th>
                                <td>22</td>
                                <td class="color-red">10</td>
                                <td>22</td>
                                <td>23.4</td>
                                <td>20</td>
                                <td>20</td>
                                <td>-</td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 난이도별 상세 분석 -->
            </div>
        </div>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<script type="text/javascript">
var g_chart;

(function($){
    g_chart = new Highcharts.chart('grade-graph', {
        chart: { zoomType: null },
        title: { text: null },
        credits:{ enabled: false },
        exporting: { enabled: false },
        colors:
            ['#ccc', '#000'],
        xAxis: [{
            // 월
            categories: ['3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월', '1월', '2월'],
            labels: {
                style: {
                    color: '#111111',
                    fontSize: '15px'
                }
            }
        }],
        yAxis: [{
            title: { text: null },
            min: 0,
            max: 100,
            allowDecimals: false,
            opposite: false
        }],
            tooltip: {
            shared: true
        },
        series: [{
            // 시대인재 평균
            name: '시대인재 평균',
            type: 'column',
            yAxis: 0,
            data: [99, 12, 85, 89, 90, 99, 12, 85, 89, 90, 80, 80],
            tooltip: {
                valueSuffix: '점'
            }

        },{
            // 본인 점수
            name: '본인 점수',
            type: 'spline',
            yAxis: 0,
            data: [85, 89, 90, 80, 80, 99, 12, 85, 89, 90, 99, 12],
            tooltip: {
                valueSuffix: '점'
            }

        }],
            legend: {
            x:0,
            y:-85,
            align: 'right',
            verticalAlign: 'top',
            floating: true,
            itemStyle: {
                fontWeight: 'normal',
                fontSize: '15px'
            }
        }
    });
})(jQuery);
</script>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->