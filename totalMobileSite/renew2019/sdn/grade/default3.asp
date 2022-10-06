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
            부엉이포스트
        </h2>

        <div class="board-tab">

                <div class="txt-center mb30">
                    <select class="select select-short">
                        <option value="시험명">시험명</option>
                    </select>
                    <select class="select select-short ml10">
                        <option value="회차 or 월 선택">회차 or 월 선택</option>
                    </select>
                </div>

                <!--
                    과목은 3개씩 / 3개이상이면 div가 새로 생겨야됨
                    맨 아래에만 tab-iist 클래스 유지
                -->
                <div class="tab-list mb0 noline">
                    <a href="javascript:void(0);" class="selected">국어</a>
                    <a href="javascript:void(0);">영어</a>
                    <a href="javascript:void(0);">수학가형</a>
                </div>
                <div class="tab-list">
                    <a href="javascript:void(0);">과목</a>
                    <a href="javascript:void(0);">과목</a>
                    <a href="javascript:void(0);">과목</a>
                </div>

               <!-- S : 분석 영역 -->
                <div class="grade-box">
                    <h3>
                        <span>###</span>님의 시대인재<br/>
                     시험명 #회 수능 모의평가 성적분석
                    </h3>
                    <ul>
                        <li>점수<strong>92점</strong></li>
                        <li>등급<strong>1이하</strong></li>
                        <li>예상 백분위<strong>98</strong></li>
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
                <div class="graph_wrap" id="graph2">
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
                <div class="board-table mb40">
                    <h4 class="table-tit">
                        전 회차 본인 점수 전체 분석
                        <em>*응시이력이 없는 회차의 경우 하이픈(-)으로 노출됩니다.</em>
                    </h4>
                    <div class="scroll-table">
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th scope="col">응시회차</th>
                                        <th scope="col">
                                            1회
                                        </th>

                                        <th scope="col">
                                            2회
                                        </th>

                                        <th scope="col">
                                            3회
                                        </th>

                                        <th scope="col">
                                            4회
                                        </th>

                                        <th scope="col">
                                            5회
                                        </th>

                                        <th scope="col">
                                            6회
                                        </th>

                                        <th scope="col">
                                            7회
                                        </th>

                                        <th scope="col">
                                            8회
                                        </th>

                                        <th scope="col">
                                            9회
                                        </th>

                                        <th scope="col">
                                            10회
                                        </th>

                                        <th scope="col">
                                            11회
                                        </th>

                                        <th scope="col">
                                            12회
                                        </th>

                                        <th scope="col">
                                            13회
                                        </th>

                                        <th scope="col">
                                            14회
                                        </th>

                                        <th scope="col">
                                            15회
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="color-red">
                                        <th>본인 원점수</th>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>94점</td>
                                        <td>96점</td>
                                        <td>90점</td>
                                        <td>84점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>96점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>92점</td>
                                        <td>92점</td>
                                    </tr>
                                    <tr>
                                        <th>시대 N 최고점</th>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                        <td>100점</td>
                                    </tr>
                                    <tr>
                                        <th>시대 N 30% 평균</th>
                                        <td>92.9점</td>
                                        <td>92.2점</td>
                                        <td>87.5점</td>
                                        <td>91.3점</td>
                                        <td>90.2점</td>
                                        <td>85.7점</td>
                                        <td>88.8점</td>
                                        <td>94.8점</td>
                                        <td>90.2점</td>
                                        <td>87.8점</td>
                                        <td>92.1점</td>
                                        <td>90.4점</td>
                                        <td>92점</td>
                                        <td>87.5점</td>
                                        <td>89.5점</td>
                                    </tr>
                                    <tr>
                                        <th>시대 N 평균</th>
                                        <td>83.1점</td>
                                        <td>81.6점</td>
                                        <td>78점</td>
                                        <td>79.8점</td>
                                        <td>80.5점</td>
                                        <td>73.5점</td>
                                        <td>76.2점</td>
                                        <td>85점</td>
                                        <td>78.5점</td>
                                        <td>76.4점</td>
                                        <td>80.7점</td>
                                        <td>78.5점</td>
                                        <td>83.8점</td>
                                        <td>76.5점</td>
                                        <td>79.9점</td>
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
                                        <td>99</td>
                                        <td>99</td>
                                        <td>100</td>
                                        <td>98</td>
                                        <td>99</td>
                                        <td>99</td>
                                        <td>96</td>
                                        <td>99</td>
                                        <td>100</td>
                                        <td>99</td>
                                        <td>100</td>
                                        <td>100</td>
                                        <td>100</td>
                                        <td>98</td>
                                        <td>97</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--// E : 전 회차 본인 점수 전체 분석 -->

                <!-- S : 전체 응시자 오답률 BEST 5 -->
                <div class="board-table mb40">
                    <h4 class="table-tit"><span>14회</span> 전체 응시자 오답률 BEST 5</h4>
                    <table>
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:20%;">
                            <col style="width:20%;">
                            <col style="width:20%;">
                            <col style="width:20%;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">순위</th>
                                <th scope="col">문항번호</th>
                                <th scope="col">오답률</th>
                                <th scope="col">단원</th>
                                <th scope="col">나의 정오</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1위</td>
                                <td>30</td>
                                <td>99%</td>
                                <td>미분법</td>
                                <td class="color-red">X</td>
                            </tr>

                            <tr>
                                <td>2위</td>
                                <td>26</td>
                                <td>88%</td>
                                <td>삼각함수</td>
                                <td class="">O</td>
                            </tr>

                            <tr>
                                <td>3위</td>
                                <td>29</td>
                                <td>77%</td>
                                <td>공간벡터와 공간도형의 방정식</td>
                                <td class="">O</td>
                            </tr>

                            <tr>
                                <td>4위</td>
                                <td>21</td>
                                <td>66%</td>
                                <td>적분법</td>
                                <td class="">O</td>
                            </tr>

                            <tr>
                                <td>5위</td>
                                <td>28</td>
                                <td>57%</td>
                                <td>확률</td>
                                <td class="">O</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--// E : 전체 응시자 오답률 BEST 5 -->

                <!-- S : 전체 문항 상세분석 -->
                <div class="board-table mb40">
                    <h4 class="table-tit">
                        <span>14회</span>  전체 문항 상세분석
                        <em>*난이도는 A가 가장 어렵고 E가 가장 쉬운 문항을 의미합니다.</em>
                    </h4>
                    <div data-box="nowrap">
                        <div data-table="type6">
                            <table>
                                <colgroup>
                                    <col style="width:80px;">
                                    <col style="width:160px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:75px;">
                                    <col style="width:75px;">
                                    <col style="width:75px;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col" rowspan="2">문항<br>번호</th>
                                        <th scope="col" rowspan="2">단원</th>
                                        <th scope="col" rowspan="2">정답률</th>
                                        <th scope="col" rowspan="2">난이도</th>
                                        <th scope="col" rowspan="2">채점결과</th>
                                        <th scope="col" rowspan="2">가장 빈번한<br>오답</th>
                                        <th scope="col" colspan="3">시대인재 등급별 정답률</th>
                                    </tr>
                                    <tr>
                                        <th scope="col">1등급</th>
                                        <th scope="col">2등급</th>
                                        <th scope="col">3등급이하</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>평면곡선</td>
                                        <td>99%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>②</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>97%</td>
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>지수함수와 로그함수</td>
                                        <td>98%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>④</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>96%</td>
                                    </tr>

                                    <tr>
                                        <td>3</td>
                                        <td>적분법</td>
                                        <td>95%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>③</td>
                                        <td>98%</td>
                                        <td>96%</td>
                                        <td>91%</td>
                                    </tr>

                                    <tr>
                                        <td>4</td>
                                        <td>확률</td>
                                        <td>100%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>-</td>
                                        <td>100%</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                    </tr>

                                    <tr>
                                        <td>5</td>
                                        <td>평면벡터</td>
                                        <td>98%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>③</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>96%</td>
                                    </tr>

                                    <tr>
                                        <td>6</td>
                                        <td>순열과 조합</td>
                                        <td>97%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>①</td>
                                        <td>100%</td>
                                        <td>97%</td>
                                        <td>93%</td>
                                    </tr>

                                    <tr>
                                        <td>7</td>
                                        <td>확률</td>
                                        <td>99%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>②</td>
                                        <td>100%</td>
                                        <td>100%</td>
                                        <td>98%</td>
                                    </tr>

                                    <tr>
                                        <td>8</td>
                                        <td>평면벡터</td>
                                        <td>98%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>②</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>96%</td>
                                    </tr>

                                    <tr>
                                        <td>9</td>
                                        <td>통계</td>
                                        <td>98%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>②</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>96%</td>
                                    </tr>

                                    <tr>
                                        <td>10</td>
                                        <td>지수함수와 로그함수</td>
                                        <td>96%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>①</td>
                                        <td>99%</td>
                                        <td>99%</td>
                                        <td>91%</td>
                                    </tr>

                                    <tr>
                                        <td>11</td>
                                        <td>평면벡터</td>
                                        <td>97%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>②</td>
                                        <td>99%</td>
                                        <td>99%</td>
                                        <td>94%</td>
                                    </tr>

                                    <tr>
                                        <td>12</td>
                                        <td>통계</td>
                                        <td>99%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>④</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>97%</td>
                                    </tr>

                                    <tr>
                                        <td>13</td>
                                        <td>평면벡터</td>
                                        <td>84%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>①</td>
                                        <td>97%</td>
                                        <td>91%</td>
                                        <td>67%</td>
                                    </tr>

                                    <tr>
                                        <td>14</td>
                                        <td>순열과 조합</td>
                                        <td>97%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>①</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>92%</td>
                                    </tr>

                                    <tr>
                                        <td>15</td>
                                        <td>삼각함수</td>
                                        <td>84%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>①</td>
                                        <td>97%</td>
                                        <td>91%</td>
                                        <td>68%</td>
                                    </tr>

                                    <tr>
                                        <td>16</td>
                                        <td>미분법</td>
                                        <td>82%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>⑤</td>
                                        <td>99%</td>
                                        <td>89%</td>
                                        <td>62%</td>
                                    </tr>

                                    <tr>
                                        <td>17</td>
                                        <td>통계</td>
                                        <td>89%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>②</td>
                                        <td>98%</td>
                                        <td>91%</td>
                                        <td>79%</td>
                                    </tr>

                                    <tr class="total-line">
                                        <td>18</td>
                                        <td>미분법</td>
                                        <td>75%</td>
                                        <td>D</td>
                                        <td class="color-red">X</td>
                                        <td>①</td>
                                        <td>96%</td>
                                        <td>83%</td>
                                        <td>52%</td>
                                    </tr>

                                    <tr>
                                        <td>19</td>
                                        <td>평면벡터</td>
                                        <td>79%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>④</td>
                                        <td>95%</td>
                                        <td>80%</td>
                                        <td>66%</td>
                                    </tr>

                                    <tr>
                                        <td>20</td>
                                        <td>확률</td>
                                        <td>85%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>②</td>
                                        <td>99%</td>
                                        <td>95%</td>
                                        <td>65%</td>
                                    </tr>

                                    <tr>
                                        <td>21</td>
                                        <td>적분법</td>
                                        <td>34%</td>
                                        <td>B</td>
                                        <td>○</td>
                                        <td>④</td>
                                        <td>60%</td>
                                        <td>29%</td>
                                        <td>17%</td>
                                    </tr>

                                    <tr>
                                        <td>22</td>
                                        <td>지수함수와 로그함수</td>
                                        <td>99%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>-</td>
                                        <td>100%</td>
                                        <td>100%</td>
                                        <td>98%</td>
                                    </tr>

                                    <tr>
                                        <td>23</td>
                                        <td>평면벡터</td>
                                        <td>99%</td>
                                        <td>E</td>
                                        <td>○</td>
                                        <td>-</td>
                                        <td>100%</td>
                                        <td>99%</td>
                                        <td>99%</td>
                                    </tr>

                                    <tr>
                                        <td>24</td>
                                        <td>적분법</td>
                                        <td>80%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>0</td>
                                        <td>97%</td>
                                        <td>88%</td>
                                        <td>59%</td>
                                    </tr>

                                    <tr>
                                        <td>25</td>
                                        <td>평면곡선</td>
                                        <td>89%</td>
                                        <td>D</td>
                                        <td>○</td>
                                        <td>36</td>
                                        <td>99%</td>
                                        <td>95%</td>
                                        <td>75%</td>
                                    </tr>

                                    <tr>
                                        <td>26</td>
                                        <td>삼각함수</td>
                                        <td>12%</td>
                                        <td>B</td>
                                        <td>○</td>
                                        <td>20</td>
                                        <td>26%</td>
                                        <td>10%</td>
                                        <td>2%</td>
                                    </tr>

                                    <tr>
                                        <td>27</td>
                                        <td>평면곡선</td>
                                        <td>62%</td>
                                        <td>C</td>
                                        <td>○</td>
                                        <td>-</td>
                                        <td>92%</td>
                                        <td>68%</td>
                                        <td>33%</td>
                                    </tr>

                                    <tr>
                                        <td>28</td>
                                        <td>확률</td>
                                        <td>43%</td>
                                        <td>C</td>
                                        <td>○</td>
                                        <td>68</td>
                                        <td>74%</td>
                                        <td>44%</td>
                                        <td>16%</td>
                                    </tr>

                                    <tr>
                                        <td>29</td>
                                        <td>공간벡터와 공간도형의<br/>방정식</td>
                                        <td>23%</td>
                                        <td>B</td>
                                        <td>○</td>
                                        <td>-</td>
                                        <td>55%</td>
                                        <td>15%</td>
                                        <td>4%</td>
                                    </tr>

                                    <tr class="total-line">
                                        <td>30</td>
                                        <td>미분법</td>
                                        <td>1%</td>
                                        <td>A</td>
                                        <td class="color-red">X</td>
                                        <td>-</td>
                                        <td>2%</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--// E : 전체 문항 상세분석 -->

                <!-- S : 단원별 상세 분석 -->
                <div class="board-table mb40">
                    <h4 class="table-tit">
                        <span>14회</span> 단원별 상세 분석
                        <em>*난이도는 A가 가장 어렵고 E가 가장 쉬운 문항을 의미합니다.</em>
                    </h4>
                    <div data-box="nowrap">
                        <div data-table="type6">
                            <table>
                                <colgroup>
                                    <col style="width:110px;">
                                    <col style="width:110px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:130px;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th colspan="2" rowspan="2">평가요소</th>
                                        <th rowspan="2">배점</th>
                                        <th class="color-red" rowspan="2">본인득점</th>
                                        <th colspan="4">시대인재 평균 득점</th>
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
                                        <th rowspan="4">미적분2</th>
                                        <th>지수함수와 로그함수</th>
                                        <td>8</td>
                                        <td class="color-red">8</td>
                                        <td>8</td>
                                        <td>8</td>
                                        <td>8</td>
                                        <td>7.6</td>
                                        <td class="q_num">
                                             2, 10, 22
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>
                                        <th>삼각함수</th>
                                        <td>8</td>
                                        <td class="color-red">8</td>
                                        <td>8</td>
                                        <td>4.9</td>
                                        <td>4</td>
                                        <td>2.8</td>
                                        <td class="q_num">
                                             15, 26
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>
                                        <th>미분법</th>
                                        <td>12</td>
                                        <td class="color-red">4</td>
                                        <td>9.6</td>
                                        <td>7.9</td>
                                        <td>6.9</td>
                                        <td>4.6</td>
                                        <td class="q_num">
                                             16, 18, 30
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>
                                        <th>적분법</th>
                                        <td>9</td>
                                        <td class="color-red">9</td>
                                        <td>9</td>
                                        <td>7.3</td>
                                        <td>5.8</td>
                                        <td>4.3</td>
                                        <td class="q_num">
                                             3, 21, 24
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 합계 Set s -->
                                    <tr class="total-line">
                                        <th colspan="2">합계</th>
                                        <td>37</td>
                                        <td class="color-red">29</td>
                                        <td>34.6</td>
                                        <td>28.1</td>
                                        <td>24.7</td>
                                        <td>19.3</td>
                                        <td>-</td>
                                    </tr>
                                    <!-- 합계 Set e -->

                                    <!-- 데이터 Set s -->
                                    <tr>
                                        <th rowspan="4">기하와 벡터</th>
                                        <th>평면곡선</th>
                                        <td>9</td>
                                        <td class="color-red">9</td>
                                        <td>9</td>
                                        <td>8.7</td>
                                        <td>7.6</td>
                                        <td>5.5</td>
                                        <td class="q_num">
                                             1, 25, 27
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>

                                        <th>평면벡터</th>
                                        <td>19</td>
                                        <td class="color-red">19</td>
                                        <td>19</td>
                                        <td>18.7</td>
                                        <td>17.8</td>
                                        <td>16.2</td>
                                        <td class="q_num">
                                             5, 8, 11, 13, 19, 23
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>

                                        <th>공간도형</th>
                                        <td>-</td>
                                        <td class="color-red">-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td class="q_num">
                                            -
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>

                                        <th>공간벡터와 공간도형의 방정식</th>
                                        <td>4</td>
                                        <td class="color-red">4</td>
                                        <td>4</td>
                                        <td>2.2</td>
                                        <td>0.6</td>
                                        <td>0.2</td>
                                        <td class="q_num">
                                             29
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 합계 Set s -->
                                    <tr class="total-line">
                                        <th colspan="2">합계</th>
                                        <td>32</td>
                                        <td class="color-red">32</td>
                                        <td>32</td>
                                        <td>29.6</td>
                                        <td>26</td>
                                        <td>21.9</td>
                                        <td>-</td>
                                    </tr>
                                    <!-- 합계 Set e -->

                                    <!-- 데이터 Set s -->
                                    <tr>
                                        <th rowspan="3">확률과 통계</th>
                                        <th>순열과 조합</th>
                                        <td>7</td>
                                        <td class="color-red">7</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>6.9</td>
                                        <td>6.5</td>
                                        <td class="q_num">
                                             6, 14
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>
                                        <th>확률</th>
                                        <td>14</td>
                                        <td class="color-red">14</td>
                                        <td>13.2</td>
                                        <td>12.9</td>
                                        <td>11.5</td>
                                        <td>9.2</td>
                                        <td class="q_num">
                                             4, 7, 20, 28
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 데이터 Set s -->
                                    <tr>
                                        <th>통계</th>
                                        <td>10</td>
                                        <td class="color-red">10</td>
                                        <td>10</td>
                                        <td>9.9</td>
                                        <td>9.6</td>
                                        <td>8.9</td>
                                        <td class="q_num">
                                             9, 12, 17
                                        </td>
                                    </tr>
                                    <!-- 데이터 Set s -->

                                    <!-- 합계 Set s -->
                                    <tr class="total-line">
                                        <th colspan="2">합계</th>
                                        <td>31</td>
                                        <td class="color-red">31</td>
                                        <td>30.2</td>
                                        <td>29.8</td>
                                        <td>28</td>
                                        <td>24.6</td>
                                        <td>-</td>
                                    </tr>
                                    <!-- 합계 Set e -->
                                </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!--// E : 단원별 상세 분석 -->

            <!-- S : 난이도별 상세 분석 -->
                <div class="board-table mb40">
                    <h4 class="table-tit"><span>14회</span> 난이도별 상세 분석</h4>
                    <div data-box="nowrap">
                        <div data-table="type6">
                            <table>
                                <colgroup>
                                    <col style="width:130px;">
                                    <col style="width:75px;">
                                    <col style="width:75px;">
                                    <col style="width:75px;">
                                    <col style="width:75px;">
                                    <col style="width:75px;">
                                    <col style="width:75px;">
                                    <col style="width:160px;">
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
                                        <th scope="col">1%</th>
                                        <th scope="col">1등급</th>
                                        <th scope="col">2등급</th>
                                        <th scope="col">3등급이하</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>2/3점 문항</th>
                                        <td>48</td>
                                        <td class="color-red">48</td>
                                        <td>48</td>
                                        <td>47.6</td>
                                        <td>46.8</td>
                                        <td>43.4</td>
                                        <td class="q_num">
                                             1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13
                                            <span class="q_pop down_link" onclick="showPop()">…</span>
                                            <div class="down_pop">
                                                <button type="button" class="close">닫기</button>
                                                <p class="down_title">문항번호</p>
                                                 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 22, 23, 24, 25
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>4점 일반문항</th>
                                        <td>32</td>
                                        <td class="color-red">28</td>
                                        <td>32</td>
                                        <td>28.1</td>
                                        <td>24.5</td>
                                        <td>18.2</td>
                                        <td class="q_num">
                                             14, 15, 16, 17, 18, 19, 20, 21, 26, 27
                                            <span class="q_pop down_link" onclick="showPop()">…</span>
                                            <div class="down_pop">
                                                <button type="button" class="close">닫기</button>
                                                <p class="down_title">문항번호</p>
                                                 14, 15, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>시대인재 준킬러문항</th>
                                        <td>8</td>
                                        <td class="color-red">8</td>
                                        <td>7.2</td>
                                        <td>6.9</td>
                                        <td>5.5</td>
                                        <td>3.3</td>
                                        <td class="q_num">
                                             20, 28
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>시대인재 킬러문항</th>
                                        <td>12</td>
                                        <td class="color-red">8</td>
                                        <td>9.6</td>
                                        <td>4.7</td>
                                        <td>1.8</td>
                                        <td>0.9</td>
                                        <td class="q_num">
                                             21, 29, 30
                                        </td>
                                    </tr>
                                    <tr class="total-line">
                                        <th>합계</th>
                                        <td>100</td>
                                        <td class="color-red">92</td>
                                        <td>96.8</td>
                                        <td>87.3</td>
                                        <td>78.6</td>
                                        <td>65.8</td>
                                        <td class="q_num">
                                            -
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--// E : 난이도별 상세 분석 -->

                 <!-- S : 테마별 누적 상세 분석 -->
                <div class="board-table mb40">
                    <h4 class="table-tit">테마별 누적 상세 분석</h4>
                    <div data-box="nowrap">
                        <div data-table="type6">
                            <table>
                                <colgroup>
                                    <col style="width:100px;">
                                    <col style="width:110px;">
                                    <col style="width:85px;">
                                    <col style="width:85px;">
                                    <col style="width:85px;">
                                    <col style="width:85px;">
                                    <col style="width:85px;">
                                    <col style="width:85px;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th colspan="2" rowspan="2">평가요소</th>
                                        <th rowspan="2">배점</th>
                                        <th class="color-red" rowspan="2">본인득점</th>
                                        <th colspan="4">시대인재 평균 득점</th>
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
                                        <th rowspan="4">미적분2</th>
                                        <th>지수함수와<br> 로그함수</th>
                                        <td>96</td>
                                        <td class="color-red">96</td>
                                        <td>96</td>
                                        <td>94.5</td>
                                        <td>92.1</td>
                                        <td>87.4</td>
                                    </tr>

                                    <tr>
                                        <th>삼각함수</th>
                                        <td>134</td>
                                        <td class="color-red">134</td>
                                        <td>133.6</td>
                                        <td>127.3</td>
                                        <td>118.5</td>
                                        <td>101.4</td>
                                    </tr>

                                    <tr>
                                        <th>미분법</th>
                                        <td>194</td>
                                        <td class="color-red">167</td>
                                        <td>184</td>
                                        <td>148.9</td>
                                        <td>130.1</td>
                                        <td>108.9</td>
                                    </tr>

                                    <tr>
                                        <th>적분법</th>
                                        <td>159</td>
                                        <td class="color-red">159</td>
                                        <td>154.9</td>
                                        <td>124</td>
                                        <td>105.6</td>
                                        <td>88.8</td>
                                    </tr>

                                    <tr class="total-line">
                                        <th colspan="2">합계</th>
                                        <td>583</td>
                                        <td class="color-red">556</td>
                                        <td>568.5</td>
                                        <td>494.7</td>
                                        <td>446.3</td>
                                        <td>386.5</td>
                                    </tr>

                                    <tr>

                                        <th rowspan="4">기하와 벡터</th>
                                        <th>평면곡선</th>
                                        <td>120</td>
                                        <td class="color-red">120</td>
                                        <td>119.8</td>
                                        <td>110.8</td>
                                        <td>99.2</td>
                                        <td>82.2</td>
                                    </tr>

                                    <tr>
                                        <th>평면벡터</th>
                                        <td>126</td>
                                        <td class="color-red">126</td>
                                        <td>126</td>
                                        <td>122.7</td>
                                        <td>116.3</td>
                                        <td>104.1</td>
                                    </tr>

                                    <tr>
                                        <th>공간도형</th>
                                        <td>77</td>
                                        <td class="color-red">71</td>
                                        <td>76.6</td>
                                        <td>69.5</td>
                                        <td>63.9</td>
                                        <td>54</td>
                                    </tr>

                                    <tr>
                                        <th>공간벡터와 <br>공간도형의<br>방정식</th>
                                        <td>127</td>
                                        <td class="color-red">123</td>
                                        <td>126.6</td>
                                        <td>104.5</td>
                                        <td>84</td>
                                        <td>67.2</td>
                                    </tr>

                                    <tr class="total-line">
                                        <th colspan="2">합계</th>
                                        <td>450</td>
                                        <td class="color-red">440</td>
                                        <td>449</td>
                                        <td>407.5</td>
                                        <td>363.4</td>
                                        <td>307.5</td>
                                    </tr>

                                    <tr>
                                        <th rowspan="3">확률과 통계</th>
                                        <th>순열과 조합</th>
                                       <td>139</td>
                                        <td class="color-red">139</td>
                                        <td>138.7</td>
                                        <td>135.9</td>
                                        <td>129.5</td>
                                        <td>116.7</td>

                                    </tr>

                                    <tr>
                                        <th>확률</th>
                                        <td>188</td>
                                        <td class="color-red">169</td>
                                        <td>186.8</td>
                                        <td>170.1</td>
                                        <td>148.9</td>
                                        <td>119.2</td>
                                    </tr>

                                    <tr>
                                        <th>통계</th>
                                        <td>138</td>
                                        <td class="color-red">138</td>
                                        <td>137.5</td>
                                        <td>135</td>
                                        <td>129.5</td>
                                        <td>110.8</td>
                                    </tr>

                                    <tr class="total-line">
                                        <th colspan="2">합계</th>
                                        <td>465</td>
                                        <td class="color-red">446</td>
                                        <td>463</td>
                                        <td>441</td>
                                        <td>407.9</td>
                                        <td>346.7</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--// E : 테마별 누적 상세 분석 -->

                <!-- S : 난이도별 상세 분석 -->
                <div class="board-table mb40">
                    <h4 class="table-tit">난이도별 상세 분석</h4>
                    <div data-box="nowrap">
                        <div data-table="type6">
                            <table>
                                <colgroup>
                                    <col style="width:150px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                    <col style="width:80px;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th rowspan="2">난이도</th>
                                        <th rowspan="2">배점</th>
                                        <th class="color-red" rowspan="2">본인득점</th>
                                        <th colspan="4">시대인재 평균 득점</th>
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
                                        <th>2/3점 문항</th>
                                        <td>720</td>
                                        <td class="color-red">712</td>
                                        <td>719</td>
                                        <td>710.8</td>
                                        <td>693.3</td>
                                        <td>656.3</td>
                                    </tr>

                                    <tr>
                                        <th>4점 일반문항</th>
                                        <td>476</td>
                                        <td class="color-red">468</td>
                                        <td>475.6</td>
                                        <td>453.1</td>
                                        <td>415.7</td>
                                        <td>324.3</td>
                                    </tr>

                                    <tr>
                                        <th>시대인재 준킬러문항</th>
                                        <td>124</td>
                                        <td class="color-red">104</td>
                                        <td>122.8</td>
                                        <td>102.1</td>
                                        <td>76.5</td>
                                        <td>46.2</td>
                                    </tr>

                                    <tr>
                                        <th>시대인재 킬러문항</th>
                                        <td>180</td>
                                        <td class="color-red">160</td>
                                        <td>165.2</td>
                                        <td>78.7</td>
                                        <td>34.7</td>
                                        <td>15.7</td>
                                    </tr>

                                    <tr class="total-line">
                                        <th>합계</th>
                                        <td>1500</td>
                                        <td class="color-red">1444</td>
                                        <td>1482.6</td>
                                        <td>1344.7</td>
                                        <td>1220.2</td>
                                        <td>1042.5</td>
                                    </tr>
                                </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!--// E : 난이도별 상세 분석 -->




        </div>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<script type="text/javascript">
    //그래프별로 데이터 값 배열로 담음//
    var monthArray = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15']
    var myArray = [100,100,100,94,96,90,84,100,100,96,100,100,100,92,92];
    var nArray = [83,81,78,79,80,73,76,85,78,76,80,78,83,76,79];
    var onMonth = 13; //인덱스값으로
    var liLen  = monthArray.length;

    for(var i=0; i<monthArray.length; i++){
        $('#graph2 .score_bar').append(html);//아이디값 바꿔주기
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


    $('#graph2 .score_bar > li').each(function(){//아이디값 바꿔주기
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

        if(liLen > 4){
            $('#graph2 .graph_area').css({
              'width' :  (liWidth*liLen)+35+'px'
            });
            $('#graph2 .scroll_box').addClass('on');
        };

        $(this).children('.month').text(monthArray[idx]+'회');
            bBar.children('.data').find('.th').text(monthArray[idx]+'회');
            bBar.children('.data').find('li:first').find('span').text(myArray[idx]+'점');
            bBar.children('.data').find('li:last').find('span').text(nArray[idx]+'점');
        });

    $('#graph2 .score_bar > li').eq(onMonth).addClass('on');
    var onLeft = ($('#graph2 .score_bar > li.on').offset().left)-100;
    var scrolling =  $('#graph2').children('.scroll_box');

    scrolling.animate( { scrollLeft : onLeft}, 400 );

</script>

 <script type="text/javascript">
    $(document).ready(function(){
        var tabList = $('.tab-list a')
        tabList.on('click',function(){
            tabList.removeClass('selected');
            $(this).addClass('selected');
        })
    })
</script>





<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->