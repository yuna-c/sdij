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
                <span>이지현</span>님의 시대인재 서바이벌<br>
                <span>7회</span> 수능 모의평가 성적분석
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
</div>
<!--// E : 컨텐츠 영역 -->
<script type="text/javascript">
    //그래프별로 데이터 값 배열로 담음//
    var monthArray = ['3','4','5','6','7','8','9','10','11','12','1']
    var myArray = [5,20,40,60,80,100,75,45,25,50,100];
    var nArray = [48,95,89,56,40,100,90,95,60,90,90];
    var onMonth = 0; //인덱스값으로
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