<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/chart.css">

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <div class="board-layout">
        <h2 class="page-tit border-tit">부엉이 포스트</h2>

        <div class="board-tab">
            <div class="tab-list">
                <a href="javascript:void(0);" class="selected">월례고사</a>
                <a href="javascript:void(0);">서바이벌</a>
                <a href="javascript:void(0);">수능직전 FINAL</a>
            </div>

            <!-- S : 월례고사 -->
            <div class="tab-content tab-on">
                <!-- S : 탭 영역 -->
                <div class="grade-tab float-area">
                    <div class="fl">
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
                    </div>
                </div>
                <!--// E : 탭 영역 -->

                <!-- S : 분석 영역 -->
                <div class="grade-box">
                    <a href="#" class="btn btn-print btn-rightgray">인쇄하기</a>

                    <h3>
                        <span>이태희</span>님의 시대인재 N 재종<br>
                        월례고사 <span>7월</span> 수능 모의평가 성적 분석
                    </h3>
                    <ul>
                        <li>점수<strong>96점</strong></li>
                        <li>등급<strong>1등급</strong></li>
                        <li>예상 백분위<strong>99</strong></li>
                    </ul>
                    <div>

                        <span>1등급컷 84점</span>
                        <span>2등급컷 76점</span>
                    </div>
                </div>
                <!--// E : 분석 영역 -->

                <!-- S : 월별 추이 -->
                <div class="legend-wrap">
                    <h4 class="table-tit">월별 추이</h4>
                    <ul class="legend">
                        <li class="gray">
                            시대인재 평균
                        </li>
                        <li class="blue">
                            본인 점수
                        </li>
                    </ul>
                </div>
                <div class="graph_wrap" id="graph1">
                    <div class="scroll_box">
                        <div class="graph_area">
                            <ul class="score_bg">
                                <li>
                                    <span class="s_num">100</span>
                                </li>
                                <li>
                                    <span class="s_num">80</span>
                                </li>
                                <li>
                                    <span class="s_num">60</span>
                                </li>
                                <li>
                                    <span class="s_num">40</span>
                                </li>
                                <li>
                                    <span class="s_num">20</span>
                                </li>
                            </ul>
                            <ul class="score_bar"></ul>
                        </div>
                    </div>
                </div>
                <!--// E : 월별 추이 -->

                <!-- S : 전 회차 본인 점수 전체 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">
                        전 회차 본인 점수 전체 분석
                        <small>*응시이력이 없는 회차의 경우 하이픈(-)으로 노출됩니다.</small>
                    </h4>
                    <div class="scroll-table">
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th>응시회차</th>
                                        <th>3월(2018-03-30)</th>
                                        <th>4월(2018-04-27)</th>
                                        <th>5월(2018-05-25)</th>
                                        <th>6월(2018-06-29)</th>
                                        <th>7월(2018-07-31)</th>
                                        <th>8월(2018-08-23)</th>
                                        <th>9월(2018-09-28)</th>
                                        <th>10월(2018-10-29)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="color-red">
                                        <th>본인 원점수</th>
                                        <td>96점</td>
                                        <td>88점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>96점</td>
                                        <td>92점</td>
                                        <td>96점</td>
                                        <td>97점</td>
                                    </tr>
                                    <tr>
                                        <th>시대 N 최고점</th>
                                        <td>100점</td>
                                        <td>96점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                    </tr>
                                    <tr>
                                        <th>시대 N 30% 평균</th>
                                        <td>94.9점</td>
                                        <td>87.5점</td>
                                        <td>88.6점</td>
                                        <td>94.8점</td>
                                        <td>91.4점</td>
                                        <td>93.8점</td>
                                        <td>89.3점</td>
                                        <td>92.8점</td>
                                    </tr>
                                    <tr>
                                        <th>시대 N 평균</th>
                                        <td>84.4점</td>
                                        <td>78.5점</td>
                                        <td>80.7점</td>
                                        <td>88점</td>
                                        <td>82.2점</td>
                                        <td>85.7점</td>
                                        <td>80.7점</td>
                                        <td>84.4점</td>
                                    </tr>
                                    <tr class="color-red">
                                        <th>등급</th>
                                        <td>1등급</td>
                                        <td>1등급</td>
                                        <td>1등급</td>
                                        <td>1등급</td>
                                        <td>1등급</td>
                                        <td>1등급</td>
                                        <td>1등급</td>
                                        <td>1등급</td>
                                    </tr>
                                    <tr class="color-red">
                                        <th>예상 백분위</th>
                                        <td>98</td>
                                        <td>97</td>
                                        <td>99</td>
                                        <td>99</td>
                                        <td>99</td>
                                        <td>98</td>
                                        <td>99</td>
                                        <td>99</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--// E : 전 회차 본인 점수 전체 분석 -->

                <!-- S : 전체 응시자 오답률 BEST 5 -->
                <div class="board-table">
                    <h4 class="table-tit"><span>7월</span> 전체 응시자 오답률 BEST 5</h4>
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
                            <tr>
                                <th>1위</th>
                                <td>30</td>
                                <td>92%</td>
                                <td>미분법</td>
                                <td class="">O</td>
                            </tr>
                            <tr>
                                <th>2위</th>
                                <td>29</td>
                                <td>77%</td>
                                <td>공간벡터와 공간도형의 방정식</td>
                                <td class="color-red">X</td>
                            </tr>
                            <tr>
                                <th>3위</th>
                                <td>28</td>
                                <td>64%</td>
                                <td>순열과 조합</td>
                                <td class="">O</td>
                            </tr>
                            <tr>
                                <th>4위</th>
                                <td>21</td>
                                <td>49%</td>
                                <td>적분법</td>
                                <td class="">O</td>
                            </tr>
                            <tr>
                                <th>5위</th>
                                <td>18</td>
                                <td>29%</td>
                                <td>공간도형</td>
                                <td class="">O</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 전체 응시자 오답률 BEST 5 -->

                <!-- S : 전체 문항 상세분석 -->
                <div class="board-table">
                    <h4 class="table-tit">
                        <span>7월</span> 전체 문항 상세분석
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
                        <tr>
                            <th>1</th>
                            <td>지수함수와 로그함수</td>
                            <td>100%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>-</td>
                            <td>100%</td>
                            <td>100%</td>
                            <td>99%</td>
                        </tr>

                        <tr>
                            <th>2</th>
                            <td>삼각함수</td>
                            <td>99%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>④</td>
                            <td>100%</td>
                            <td>98%</td>
                            <td>98%</td>
                        </tr>

                        <tr>
                            <th>3</th>
                            <td>공간도형</td>
                            <td>95%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>④</td>
                            <td>99%</td>
                            <td>93%</td>
                            <td>91%</td>
                        </tr>

                        <tr>
                            <th>4</th>
                            <td>확률</td>
                            <td>100%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>⑤</td>
                            <td>100%</td>
                            <td>100%</td>
                            <td>99%</td>
                        </tr>

                        <tr>
                            <th>5</th>
                            <td>미분법</td>
                            <td>99%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>-</td>
                            <td>100%</td>
                            <td>100%</td>
                            <td>97%</td>
                        </tr>

                        <tr>
                            <th>6</th>
                            <td>공간벡터와 공간도형의 방정식</td>
                            <td>98%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>④</td>
                            <td>99%</td>
                            <td>97%</td>
                            <td>94%</td>
                        </tr>

                        <tr>
                            <th>7</th>
                            <td>평면벡터</td>
                            <td>84%</td>
                            <td>D</td>
                            <td class="">○</td>
                            <td>④</td>
                            <td>93%</td>
                            <td>81%</td>
                            <td>64%</td>
                        </tr>

                        <tr>
                            <th>8</th>
                            <td>순열과 조합</td>
                            <td>92%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>③</td>
                            <td>97%</td>
                            <td>91%</td>
                            <td>81%</td>
                        </tr>

                        <tr>
                            <th>9</th>
                            <td>통계</td>
                            <td>98%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>③</td>
                            <td>100%</td>
                            <td>98%</td>
                            <td>95%</td>
                        </tr>

                        <tr>
                            <th>10</th>
                            <td>평면벡터</td>
                            <td>98%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>②</td>
                            <td>99%</td>
                            <td>98%</td>
                            <td>93%</td>
                        </tr>

                        <tr>
                            <th>11</th>
                            <td>적분법</td>
                            <td>95%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>④</td>
                            <td>97%</td>
                            <td>94%</td>
                            <td>88%</td>
                        </tr>

                        <tr>
                            <th>12</th>
                            <td>지수함수와 로그함수</td>
                            <td>95%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>③</td>
                            <td>99%</td>
                            <td>95%</td>
                            <td>86%</td>
                        </tr>

                        <tr>
                            <th>13</th>
                            <td>삼각함수</td>
                            <td>96%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>⑤</td>
                            <td>99%</td>
                            <td>95%</td>
                            <td>88%</td>
                        </tr>

                        <tr>
                            <th>14</th>
                            <td>삼각함수</td>
                            <td>88%</td>
                            <td>D</td>
                            <td class="">○</td>
                            <td>②</td>
                            <td>96%</td>
                            <td>85%</td>
                            <td>70%</td>
                        </tr>

                        <tr>
                            <th>15</th>
                            <td>통계</td>
                            <td>98%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>②</td>
                            <td>100%</td>
                            <td>97%</td>
                            <td>94%</td>
                        </tr>

                        <tr>
                            <th>16</th>
                            <td>적분법</td>
                            <td>98%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>④</td>
                            <td>100%</td>
                            <td>98%</td>
                            <td>94%</td>
                        </tr>

                        <tr>
                            <th>17</th>
                            <td>통계</td>
                            <td>98%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>①</td>
                            <td>100%</td>
                            <td>99%</td>
                            <td>93%</td>
                        </tr>

                        <tr>
                            <th>18</th>
                            <td>공간도형</td>
                            <td>71%</td>
                            <td>D</td>
                            <td class="">○</td>
                            <td>③</td>
                            <td>89%</td>
                            <td>63%</td>
                            <td>31%</td>
                        </tr>

                        <tr>
                            <th>19</th>
                            <td>확률</td>
                            <td>96%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>⑤</td>
                            <td>99%</td>
                            <td>97%</td>
                            <td>86%</td>
                        </tr>

                        <tr>
                            <th>20</th>
                            <td>미분법</td>
                            <td>79%</td>
                            <td>D</td>
                            <td class="">○</td>
                            <td>③</td>
                            <td>94%</td>
                            <td>74%</td>
                            <td>44%</td>
                        </tr>

                        <tr>
                            <th>21</th>
                            <td>적분법</td>
                            <td>51%</td>
                            <td>C</td>
                            <td class="">○</td>
                            <td>④</td>
                            <td>72%</td>
                            <td>33%</td>
                            <td>21%</td>
                        </tr>

                        <tr>
                            <th>22</th>
                            <td>지수함수와 로그함수</td>
                            <td>100%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>-</td>
                            <td>100%</td>
                            <td>99%</td>
                            <td>99%</td>
                        </tr>

                        <tr>
                            <th>23</th>
                            <td>통계</td>
                            <td>93%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>③</td>
                            <td>98%</td>
                            <td>94%</td>
                            <td>77%</td>
                        </tr>

                        <tr>
                            <th>24</th>
                            <td>순열과 조합</td>
                            <td>95%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>84</td>
                            <td>99%</td>
                            <td>92%</td>
                            <td>90%</td>
                        </tr>

                        <tr>
                            <th>25</th>
                            <td>평면곡선</td>
                            <td>98%</td>
                            <td>E</td>
                            <td class="">○</td>
                            <td>②</td>
                            <td>99%</td>
                            <td>98%</td>
                            <td>95%</td>
                        </tr>

                        <tr>
                            <th>26</th>
                            <td>평면벡터</td>
                            <td>77%</td>
                            <td>D</td>
                            <td class="">○</td>
                            <td>8</td>
                            <td>91%</td>
                            <td>73%</td>
                            <td>46%</td>
                        </tr>

                        <tr>
                            <th>27</th>
                            <td>평면곡선</td>
                            <td>78%</td>
                            <td>D</td>
                            <td class="">○</td>
                            <td>②</td>
                            <td>90%</td>
                            <td>77%</td>
                            <td>47%</td>
                        </tr>

                        <tr>
                            <th>28</th>
                            <td>순열과 조합</td>
                            <td>36%</td>
                            <td>B</td>
                            <td class="">○</td>
                            <td>46</td>
                            <td>52%</td>
                            <td>26%</td>
                            <td>9%</td>
                        </tr>

                        <tr>
                            <th>29</th>
                            <td>공간벡터와 공간도형의 방정식</td>
                            <td>23%</td>
                            <td>B</td>
                            <td class="color-red">X</td>
                            <td>-</td>
                            <td>39%</td>
                            <td>8%</td>
                            <td>1%</td>
                        </tr>

                        <tr>
                            <th>30</th>
                            <td>미분법</td>
                            <td>8%</td>
                            <td>A</td>
                            <td class="">○</td>
                            <td>-</td>
                            <td>14%</td>
                            <td>2%</td>
                            <td>2%</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!--// E : 전체 문항 상세분석 -->

                <!-- S : 단원별 상세 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">
                        <span>7월</span> 단원별 상세 분석
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
                        <!-- 데이터 Set s -->
                        <tr>

                                <th rowspan="4" class="txt-left">미적분2</th>

                            <th class="txt-left">지수함수와 로그함수</th>
                            <td>8</td>
                            <td class="color-red">8</td>
                            <td>8</td>
                            <td>8</td>
                            <td>7.8</td>
                            <td>7.5</td>
                            <td> 1, 12, 22</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">삼각함수</th>
                            <td>9</td>
                            <td class="color-red">9</td>
                            <td>9</td>
                            <td>8.8</td>
                            <td>8.2</td>
                            <td>7.4</td>
                            <td> 2, 13, 14</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">미분법</th>
                            <td>11</td>
                            <td class="color-red">11</td>
                            <td>11</td>
                            <td>7.3</td>
                            <td>6</td>
                            <td>4.7</td>
                            <td> 5, 20, 30</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">적분법</th>
                            <td>11</td>
                            <td class="color-red">11</td>
                            <td>11</td>
                            <td>9.8</td>
                            <td>8.1</td>
                            <td>7.2</td>
                            <td> 11, 16, 21</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 합계 Set s -->
                        <tr class="total-line">
                            <th colspan="2" class="txt-left">합계</th>
                            <td>39</td>
                            <td class="color-red">39</td>
                            <td>39</td>
                            <td>33.9</td>
                            <td>30.1</td>
                            <td>26.8</td>
                            <td>-</td>
                        </tr>
                        <!-- 합계 Set e -->

                        <!-- 데이터 Set s -->
                        <tr>

                                <th rowspan="4" class="txt-left">기하와 벡터</th>

                            <th class="txt-left">평면곡선</th>
                            <td>7</td>
                            <td class="color-red">7</td>
                            <td>7</td>
                            <td>6.6</td>
                            <td>6</td>
                            <td>4.7</td>
                            <td> 25, 27</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">평면벡터</th>
                            <td>10</td>
                            <td class="color-red">10</td>
                            <td>9.7</td>
                            <td>9.4</td>
                            <td>8.3</td>
                            <td>6.5</td>
                            <td> 7, 10, 26</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">공간도형</th>
                            <td>6</td>
                            <td class="color-red">6</td>
                            <td>6</td>
                            <td>5.5</td>
                            <td>4.4</td>
                            <td>3.1</td>
                            <td> 3, 18</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">공간벡터와 공간도형의 방정식</th>
                            <td>7</td>
                            <td class="color-red">3</td>
                            <td>7</td>
                            <td>4.5</td>
                            <td>3.3</td>
                            <td>2.9</td>
                            <td> 6, 29</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 합계 Set s -->
                        <tr class="total-line">
                            <th colspan="2" class="txt-left">합계</th>
                            <td>30</td>
                            <td class="color-red">26</td>
                            <td>29.7</td>
                            <td>26</td>
                            <td>22</td>
                            <td>17.2</td>
                            <td>-</td>
                        </tr>
                        <!-- 합계 Set e -->

                        <!-- 데이터 Set s -->
                        <tr>

                                <th rowspan="3" class="txt-left">확률과 통계</th>

                            <th class="txt-left">순열과 조합</th>
                            <td>10</td>
                            <td class="color-red">10</td>
                            <td>10</td>
                            <td>7.9</td>
                            <td>6.5</td>
                            <td>5.5</td>
                            <td> 8, 24, 28</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">확률</th>
                            <td>7</td>
                            <td class="color-red">7</td>
                            <td>7</td>
                            <td>7</td>
                            <td>6.9</td>
                            <td>6.4</td>
                            <td> 4, 19</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 데이터 Set s -->
                        <tr>

                            <th class="txt-left">통계</th>
                            <td>14</td>
                            <td class="color-red">14</td>
                            <td>14</td>
                            <td>13.9</td>
                            <td>13.6</td>
                            <td>12.7</td>
                            <td> 9, 15, 17, 23</td>
                        </tr>
                        <!-- 데이터 Set s -->

                        <!-- 합계 Set s -->
                        <tr class="total-line">
                            <th colspan="2" class="txt-left">합계</th>
                            <td>31</td>
                            <td class="color-red">31</td>
                            <td>31</td>
                            <td>28.8</td>
                            <td>27</td>
                            <td>24.6</td>
                            <td>-</td>
                        </tr>
                        <!-- 합계 Set e -->
                    </tbody>
                </table>
                </div>
                <!--// E : 단원별 상세 분석 -->

                <!-- S : 난이도별 상세 분석 -->
                <div class="board-table">
                    <h4 class="table-tit"><span>7월</span> 난이도별 상세 분석</h4>
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
                        <tr class="">
                            <th>2/3점 문항</th>
                            <td>48</td>
                            <td class="color-red">48</td>
                            <td>47.7</td>
                            <td>47.3</td>
                            <td>45.8</td>
                            <td>43.2</td>
                            <td> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 22, 23, 24, 25</td>
                        </tr>

                        <tr class="">
                            <th>4점 일반문항</th>
                            <td>28</td>
                            <td class="color-red">28</td>
                            <td>28</td>
                            <td>26.6</td>
                            <td>23.7</td>
                            <td>19</td>
                            <td> 14, 15, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30</td>
                        </tr>

                        <tr class="">
                            <th>시대인재 준킬러문항</th>
                            <td>12</td>
                            <td class="color-red">12</td>
                            <td>12</td>
                            <td>9.8</td>
                            <td>7.9</td>
                            <td>5.5</td>
                            <td> 19, 20, 28</td>
                        </tr>

                        <tr class="">
                            <th>시대인재 킬러문항</th>
                            <td>12</td>
                            <td class="color-red">8</td>
                            <td>12</td>
                            <td>5</td>
                            <td>1.7</td>
                            <td>1</td>
                            <td> 21, 29, 30</td>
                        </tr>

                        <tr class="total-line">
                            <th>합계</th>
                            <td>100</td>
                            <td class="color-red">96</td>
                            <td>99.7</td>
                            <td>88.7</td>
                            <td>79.1</td>
                            <td>68.7</td>
                            <td>-</td>
                        </tr>
                </tbody>
            </table>
                </div>
                <!--// E : 난이도별 상세 분석 -->

                <!-- S : 테마별 누적 상세 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">테마별 누적 상세 분석</h4>
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
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2" rowspan="2">평가요소</th>
                                <th rowspan="2">배점</th>
                                <th class="color-red" rowspan="2">본인득점</th>
                                <th colspan="4">시대 N 평균 득점</th>
                            </tr>
                            <tr>
                                <th>1%</th>
                                <th>1등급</th>
                                <th>2등급</th>
                                <th>3등급 이하</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th rowspan="4" class="txt-left">미적분2</th>
                            <th class="txt-left">지수함수와 로그함수</th>
                            <td>57</td>
                            <td class="color-red">57</td>
                            <td>57</td>
                            <td>56.6</td>
                            <td>55.8</td>
                            <td>53.6</td>
                        </tr>

                        <tr>
                            <th class="txt-left">삼각함수</th>
                            <td>58</td>
                            <td class="color-red">58</td>
                            <td>58</td>
                            <td>56.3</td>
                            <td>53.4</td>
                            <td>46.1</td>
                        </tr>

                        <tr>
                            <th class="txt-left">미분법</th>
                            <td>108</td>
                            <td class="color-red">100</td>
                            <td>103.4</td>
                            <td>85</td>
                            <td>75.4</td>
                            <td>66.6</td>
                        </tr>

                        <tr>
                            <th class="txt-left">적분법</th>
                            <td>98</td>
                            <td class="color-red">90</td>
                            <td>94.1</td>
                            <td>79.2</td>
                            <td>66.1</td>
                            <td>56.9</td>
                        </tr>

                        <tr class="total-line">
                            <th colspan="2">합계</th>
                            <td>321</td>
                            <td class="color-red">305</td>
                            <td>312.5</td>
                            <td>277.1</td>
                            <td>250.7</td>
                            <td>223.2</td>
                        </tr>

                        <tr>

                            <th rowspan="4" class="txt-left">기하와 벡터</th>
                            <th class="txt-left">평면곡선</th>
                            <td>72</td>
                            <td class="color-red">72</td>
                            <td>72</td>
                            <td>69.3</td>
                            <td>64</td>
                            <td>55</td>
                        </tr>

                        <tr>
                            <th class="txt-left">평면벡터</th>
                            <td>62</td>
                            <td class="color-red">62</td>
                            <td>61.7</td>
                            <td>59.8</td>
                            <td>56.9</td>
                            <td>50.9</td>
                        </tr>

                        <tr>
                            <th class="txt-left">공간도형</th>
                            <td>57</td>
                            <td class="color-red">53</td>
                            <td>57</td>
                            <td>52</td>
                            <td>46.1</td>
                            <td>37.9</td>
                        </tr>

                        <tr>
                            <th class="txt-left">공간벡터와 공간도형의 방정식</th>
                            <td>50</td>
                            <td class="color-red">38</td>
                            <td>50</td>
                            <td>37.6</td>
                            <td>28.1</td>
                            <td>22.7</td>
                        </tr>

                        <tr class="total-line">
                            <th colspan="2">합계</th>
                            <td>241</td>
                            <td class="color-red">225</td>
                            <td>240.7</td>
                            <td>218.7</td>
                            <td>195.1</td>
                            <td>166.5</td>
                        </tr>

                        <tr>
                            <th rowspan="3" class="txt-left">확률과 통계</th>
                            <th class="txt-left">순열과 조합</th>
                            <td>86</td>
                            <td class="color-red">83</td>
                            <td>86</td>
                            <td>79.7</td>
                            <td>72.1</td>
                            <td>61.8</td>
                        </tr>

                        <tr>
                            <th class="txt-left">확률</th>
                            <td>71</td>
                            <td class="color-red">71</td>
                            <td>70.7</td>
                            <td>67.4</td>
                            <td>64.7</td>
                            <td>58.4</td>
                        </tr>

                        <tr>
                            <th class="txt-left">통계</th>
                            <td>81</td>
                            <td class="color-red">81</td>
                            <td>81</td>
                            <td>78.1</td>
                            <td>73.8</td>
                            <td>65.2</td>
                        </tr>

                        <tr class="total-line">
                            <th colspan="2">합계</th>
                            <td>238</td>
                            <td class="color-red">235</td>
                            <td>237.7</td>
                            <td>225.2</td>
                            <td>210.6</td>
                            <td>185.4</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 테마별 누적 상세 분석 -->

                <!-- S : 난이도별 상세 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">난이도별 상세 분석</h4>
                    <table>
                        <colgroup>
                            <col style="width:150px;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th rowspan="2">난이도</th>
                                <th rowspan="2">배점</th>
                                <th class="color-red" rowspan="2">본인득점</th>
                                <th colspan="4">시대 N 평균 득점</th>
                            </tr>
                            <tr>
                                <th>1%</th>
                                <th>1등급</th>
                                <th>2등급</th>
                                <th>3등급 이하</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr class="">
                            <th>2/3점 문항</th>
                            <td>384</td>
                            <td class="color-red">381</td>
                            <td>383.4</td>
                            <td>377.9</td>
                            <td>367.5</td>
                            <td>349.7</td>
                        </tr>

                        <tr class="">
                            <th>4점 일반문항</th>
                            <td>212</td>
                            <td class="color-red">208</td>
                            <td>211.6</td>
                            <td>203.2</td>
                            <td>191.1</td>
                            <td>163.8</td>
                        </tr>

                        <tr class="">
                            <th>시대인재 준킬러문항</th>
                            <td>108</td>
                            <td class="color-red">100</td>
                            <td>108</td>
                            <td>92.7</td>
                            <td>75</td>
                            <td>50.1</td>
                        </tr>

                        <tr class="">
                            <th>시대인재 킬러문항</th>
                            <td>96</td>
                            <td class="color-red">76</td>
                            <td>87.9</td>
                            <td>46.9</td>
                            <td>22.4</td>
                            <td>11.9</td>
                        </tr>

                        <tr class="total-line">
                            <th>합계</th>
                            <td>800</td>
                            <td class="color-red">765</td>
                            <td>790.9</td>
                            <td>720.7</td>
                            <td>656</td>
                            <td>575.5</td>
                        </tr>
                    </tbody>
                </table>
                <!--// E : 난이도별 상세 분석 -->
            </div>
            <!--// E : 월례고사 -->

            <!-- S : 서바이벌 -->
            <div class="tab-content">
                <!-- S : 탭 영역 -->
                <div class="grade-tab float-area">
                    <div class="fl">
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
                    </div>
                </div>
                <!--// E : 탭 영역 -->

                <!-- S : 분석 영역 -->
                <div class="grade-box">
                    <a href="#" class="btn btn-print btn-rightgray">인쇄하기</a>

                    <h3>
                        <span>이지현</span>님의 시대인재 N 재종<br>
                        서바이벌 <span>11회</span> 수능 모의평가 성적분석
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

                <div class="graph_wrap" id="graph1">
                    <ul class="legend">
                        <li class="gray">
                            시대인재 평균
                        </li>
                        <li class="blue">
                            본인 점수
                        </li>
                    </ul>

                    <div class="scroll_box on">
                        <div class="graph_area">
                            <ul class="score_bg">
                                <li>
                                    <span class="s_num">100</span>
                                </li>
                                <li>
                                    <span class="s_num">80</span>
                                </li>
                                <li>
                                    <span class="s_num">60</span>
                                </li>
                                <li>
                                    <span class="s_num">40</span>
                                </li>
                                <li>
                                    <span class="s_num">20</span>
                                </li>
                            </ul>
                            <ul class="score_bar">
                                <% For i=1 To 12 %>
                                <li>
                                    <span class="month"><%=i%>월</span>
                                    <span class="g_bar"></span>
                                    <div class="blue_bar">
                                        <div class="data">
                                            <span class="th">9회</span>
                                            <ul>
                                                <li>득점<span class="myscore">43점</span></li>
                                                <li>평균<span class="average">36점</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <% next %>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--// E : 월별 추이 -->

                <!-- S : 전 회차 본인 점수 전체 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">
                        전 회차 본인 점수 전체 분석
                        <small>*응시이력이 없는 회차의 경우 하이픈(-)으로 노출됩니다.</small>
                    </h4>
                    <div class="scroll-table">
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th>응시회차</th>
                                        <% For i=1 To 15 %>
                                        <th><%=i%>월(2018-03-30)</th>
                                        <% next %>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="color-red">
                                        <th>본인 원점수</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr>
                                        <th>시대 N 최고점</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr>
                                        <th>시대 N 30% 평균</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr>
                                        <th>시대 N 평균</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr class="color-red">
                                        <th>등급</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>등급</td>
                                        <% next %>
                                    </tr>
                                    <tr class="color-red">
                                        <th>예상 백분위</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%></td>
                                        <% next %>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--// E : 전 회차 본인 점수 전체 분석 -->

                <!-- S : 전체 응시자 오답률 BEST 5 -->
                <div class="board-table">
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
                <div class="board-table">
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
                <div class="board-table">
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
                <div class="board-table">
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
            <!--// E : 서바이벌 -->

            <!-- S : 수능직전FINAL -->
            <div class="tab-content">
                <!-- S : 탭 영역 -->
                <div class="grade-tab float-area">
                    <div class="fl">
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
                    </div>
                </div>
                <!--// E : 탭 영역 -->

                <!-- S : 분석 영역 -->
                <div class="grade-box">
                    <a href="#" class="btn btn-print btn-rightgray">인쇄하기</a>

                    <h3>
                        <span>이지현</span>님의 시대인재 N 재종<br>
                        수능직전 FINAL <span>11회</span> 수능 모의평가 성적분석
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

                <div class="graph_wrap" id="graph1">
                    <ul class="legend">
                        <li class="gray">
                            시대인재 평균
                        </li>
                        <li class="blue">
                            본인 점수
                        </li>
                    </ul>

                    <div class="scroll_box on">
                        <div class="graph_area">
                            <ul class="score_bg">
                                <li>
                                    <span class="s_num">100</span>
                                </li>
                                <li>
                                    <span class="s_num">80</span>
                                </li>
                                <li>
                                    <span class="s_num">60</span>
                                </li>
                                <li>
                                    <span class="s_num">40</span>
                                </li>
                                <li>
                                    <span class="s_num">20</span>
                                </li>
                            </ul>
                            <ul class="score_bar">
                                <% For i=1 To 12 %>
                                <li>
                                    <span class="month"><%=i%>월</span>
                                    <span class="g_bar"></span>
                                    <div class="blue_bar">
                                        <div class="data">
                                            <span class="th">9회</span>
                                            <ul>
                                                <li>득점<span class="myscore">43점</span></li>
                                                <li>평균<span class="average">36점</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <% next %>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--// E : 월별 추이 -->

                <!-- S : 전 회차 본인 점수 전체 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">
                        전 회차 본인 점수 전체 분석
                        <small>*응시이력이 없는 회차의 경우 하이픈(-)으로 노출됩니다.</small>
                    </h4>
                    <div class="scroll-table">
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th>응시회차</th>
                                        <% For i=1 To 15 %>
                                        <th><%=i%>월(2018-03-30)</th>
                                        <% next %>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="color-red">
                                        <th>본인 원점수</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr>
                                        <th>시대 N 최고점</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr>
                                        <th>시대 N 30% 평균</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr>
                                        <th>시대 N 평균</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>점</td>
                                        <% next %>
                                    </tr>
                                    <tr class="color-red">
                                        <th>등급</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%>등급</td>
                                        <% next %>
                                    </tr>
                                    <tr class="color-red">
                                        <th>예상 백분위</th>
                                        <% For i=1 To 15 %>
                                        <td><%=i%></td>
                                        <% next %>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--// E : 전 회차 본인 점수 전체 분석 -->

                <!-- S : 전체 응시자 오답률 BEST 5 -->
                <div class="board-table">
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
                <div class="board-table">
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
                <div class="board-table">
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
                <div class="board-table">
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

                <!-- S : 테마별 누적 상세 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">테마별 누적 상세 분석</h4>
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
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2" rowspan="2">평가요소</th>
                                <th rowspan="2">배점</th>
                                <th class="color-red" rowspan="2">본인득점</th>
                                <th colspan="4">시대 N 평균 득점</th>
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
                            </tr>
                            <tr>
                                <th class="txt-left">작문</th>
                                <td>11</td>
                                <td class="color-red">5</td>
                                <td>11</td>
                                <td>11.7</td>
                                <td>10</td>
                                <td>10</td>
                            </tr>
                            <tr class="total-line">
                                <th colspan="2" class="txt-left">합계</th>
                                <td>22</td>
                                <td class="color-red">10</td>
                                <td>22</td>
                                <td>23.4</td>
                                <td>20</td>
                                <td>20</td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 테마별 누적 상세 분석 -->

                <!-- S : 난이도별 상세 분석 -->
                <div class="board-table">
                    <h4 class="table-tit">난이도별 상세 분석</h4>
                    <table>
                        <colgroup>
                            <col style="width:150px;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th rowspan="2">난이도</th>
                                <th rowspan="2">배점</th>
                                <th class="color-red" rowspan="2">본인득점</th>
                                <th colspan="4">시대 N 평균 득점</th>
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
                            </tr>
                            <tr>
                                <th>3점문항</th>
                                <td>11</td>
                                <td class="color-red">5</td>
                                <td>11</td>
                                <td>11.7</td>
                                <td>10</td>
                                <td>10</td>
                            </tr>
                            <tr class="total-line">
                                <th>합계</th>
                                <td>22</td>
                                <td class="color-red">10</td>
                                <td>22</td>
                                <td>23.4</td>
                                <td>20</td>
                                <td>20</td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 난이도별 상세 분석 -->
            </div>
            <!--// E : 수능직전FINAL -->
        </div>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<script type="text/javascript">
    //그래프별로 데이터 값 배열로 담음//
    var monthArray = ['3','4','5','6','7','8','9','10']
    var myArray = [96,88,100,100,96,92,96,97];
    var nArray = [84,78,80,88,82,85,80,84];
    var onMonth = 4; //인덱스값으로
    var liLen  = monthArray.length;

    for(var i=0; i<monthArray.length+1; i++){
        $('#graph1 .score_bar').append(html);//아이디값 바꿔주기
        var html = '<li>'
        html += '<span class=\"month\"></span>'
        html +=   '<span class=\"g_bar\"></span>'
        html +=   '<div class=\"blue_bar\">'
        html +=     '<div class=\"data\">'
        html +=         '<span class=\"th\"></span>'
        html +=         '<ul>'
        html +=             '<li>'
        html +=                 '득점'
        html +=                 '<span class=\"myscore\"></span>'
        html +=             '</li>'
        html +=             '<li>'
        html +=                 'N 평균'
        html +=                 '<span class=\"average\"></span>'
        html +=             '</li>'
        html +=         '</ul>'
        html +=     '</div>'
        html +=   '</div>'
        html += '</li>'
    };


    $('#graph1 .score_bar > li').each(function(){//아이디값 바꿔주기
        var gBar = $(this).children('.g_bar');
        var bBar = $(this).children('.blue_bar');
        var idx =  $(this).index();
        var liWidth = $(this).width();

        gBar.css({
            'height' : nArray[idx]+'%'
        });

        bBar.css({
            'bottom' : myArray[idx]+'%'
        });

        if(liLen > 10){
            $('#graph1 .graph_area').css({
              'width' :  (liWidth*liLen)+35+'px'
            });
            $('#graph1 .scroll_box').addClass('on');
        };

        $(this).children('.month').text(monthArray[idx]+'월');
            bBar.children('.data').find('.th').text(monthArray[idx]+'월');
            bBar.children('.data').find('li:first').find('span').text(myArray[idx]+'점');
            bBar.children('.data').find('li:last').find('span').text(nArray[idx]+'점');
        });

    $('#graph1 .score_bar > li').eq(onMonth).addClass('on');
    var onLeft = ($('#graph1 .score_bar > li.on').offset().left)-417;
    var scrolling =  $('#graph1').parent('.scroll_box');

    scrolling.animate( { scrollLeft : onLeft}, 400 );
</script>

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->