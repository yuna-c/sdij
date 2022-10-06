<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 > 출제진
' 모듈기능 : 출제진 모집
' 파 일 명 : default.asp
' 작성일자 : 2019/01/22
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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

<style>
.prize-table td{ text-align:left !important; padding-left:10px; padding: 10px; }
.mt40{ margin-top:40px !important;}
.left-block{ width:17%; }
.deco{ border-bottom:1px solid }
.deco:hover{ color: blue;}
.normal-ls li{ list-style:disc; text-indent: 20px;}
.prize-tit{ font-weight:600; font-size:20px;}
/*가나다*/
.list-number.part{ counter-reset:part; list-style-type: none;}
.list-number.part > li{ color:#000; margin-bottom: 10px; }
.list-number.part > li:after{ counter-increment:part; content:counter(part)'. '; width:22px; display:inline-block; position:absolute; top:-1px; left:-2px; text-align:right; font-weight: 600; }
.list-number.part > li > ol > li{ line-height: 24px; padding-left: 0; position: relative; margin: 5px 0; color: #000;list-style: hangul;font-weight: 600; margin-left: 20px; }
.list-number.part > li > ol > li p { font-weight:400; }
.list-number.part > li > ol > li:after{ content:''; }
.list-number.part > li > ol > li span { width:22px; display:inline-block; position:absolute; top:0; left:-2px; font-family:'Noto Serif KR', 'Noto Serif', serif, 'Sans-serif', 'Noto Sans KR'; text-align:right;}

</style>
<!-- S : container -->
<div id="container">
<!-- S : 콘텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">문항공모</h2>

    <div class="board-layout">
        <!--S : board-view : 게시글 뷰 -->
        <div class="board-view">
            <table>
                <colgroup>
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th class="no-bg">
                            <h3 class="board-tit">2019년 11월 시대인재 문항공모</h3>
                            <div>
                                <span>상시모집</span>
                            </div>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="txt-box border-none txt-center">
                            <p class="b mb50 mt20">
                               시대인재 컨텐츠 문항공모를 진행합니다.
                            </p>

                            <p class="mb50">
                                2014년 첫 서바이벌을 시작으로<br/>
                                우수한 컨텐츠의 중요성을 세상에 알린 시대인재는<br/>
                                기존 수학, 과학 커리큘럼의 고정관념을 깨며<br/>
                                컨텐츠의 새로운 패러다임을 정의하였습니다.
                            </p>
                            <p class="mb50">
                                많은 지원 부탁드립니다.
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="board-table">


                <div class="txt-center table-tit">상금 및 지원 방법</div>
                <table class="prize-table">
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tr>
                        <th>지원 대상</th>
                        <td>제한 없음 (학생 /교사 /저자 /컨텐츠 개발팀 등)</td>
                    </tr>
                    <tr>
                        <th>시상</th>
                        <td>
                            <p><span class="left-block in-block">Survival</span> 	<span>/300만원</span></p>
                            <p><span class="left-block in-block">AtG</span>	<span>/200만원</span></p>
                            <p><span class="left-block in-block">Shortcut</span> 	<span>/100만원</span></p>
                            <p><span class="left-block in-block">Revival</span> 	<span>/50만원</span></p>
                            <p class="mt10" style="letter-spacing: -0.7px;">※ 상금은 문항 채택 비용과 별도로 추가 지급되며, 시대인재에서 정한 일정 기준에 충족될 시 지급됩니다.</p>
                        </td>
                    </tr>
                    <tr>
                        <th>접수 기간</th>
                        <td>2019년 11월 15일 ~ 2019년 11월 30일 (매월 실시)</td>
                    </tr>
                    <tr>
                        <th>답변 기간</th>
                        <td>
                            <p>2019년 12월 1일 ~ 2019년 12월 15일</p>
                            <p class="mt10">※ 채택 여부 결정 시 인증한 휴대폰 번호로 문자가 발송</p>
                            <p class="mt10">※ 답변 기간 내에 개별 공지가 되지 않을 경우, <a class="deco" href="mailto:question@sdij.com">question@sdij.com</a>으로 문의해주시기 바랍니다.</p>
                        </td>
                    </tr>
                    <tr>
                        <th>접수 방법</th>
                        <td>지원서 다운로드 후 신청 페이지에 접수</td>
                    </tr>
                    <tr>
                        <th>유의사항</th>
                        <td>
                            <ul class="normal-ls">
                                <li>제출한 모든 문항은 출제자의 고유 창작물로, 타인의 저작권을 침해하지 않는 문항이어야 합니다.</li>
                                <li>제출한 모든 문항은 다수에게 공개된 적이 없는 신규 문항이어야 합니다.</li>
                                <li>공모전에서 채택된 문항의 저작권은 모두 주)하이컨시에 귀속됩니다.</li>
                                <li>채택되지 않은 문항은 모두 폐기되고 저작권법에 반하는 다른 용도로 사용되지 않습니다.</li>
                                <li>채택 이후 저작권 문제 발생 시 모든 책임은 출제자에게 있으며, 채택이 취소될 수 있습니다.</li>
                                <li>여러 과목에 지원하실 경우 과목별 지원서를 각각 작성해주시기 바랍니다.</li>
                                <li>문항 공모에 지원해주신 분들은 문항 채택과 별도로 시대인재 컨텐츠팀으로 초빙될 수 있습니다.</li>
                            </ul>
                        </td>
                    </tr>
                </table>
                <p class="txt-right mt20 mb90">※ 문항 공모 관련 기타 질문 사항은 <a class="deco" href="mailto:question@sdij.com">question@sdij.com</a>으로 문의해주시기 바랍니다.</p>
            </div>
        <!--// E : board-view : 게시글 뷰 -->

        <!-- S : board-tab : 텝 게시글 -->
            <div class="board-tab">
                <div class="tab-list">
                    <a href="javascript:void(0);" class="selected">국어</a>
                    <a href="javascript:void(0);">수학</a>
                    <a href="javascript:void(0);">영어</a>
                    <a href="javascript:void(0);">과학탐구(Ⅰ &amp; Ⅱ)</a>
                    <a href="javascript:void(0);">사회탐구</a>
                </div>
                <!-- 1 -->
                <div class="tab-content tab-on">
                    <ul class="list-number part">
                        <li>
                            <strong>출제 범위 </strong>
                            <p>화법과 작문&amp;문법 /문학(현대시, 고전시가, 현대소설, 고전소설, 극) /독서(인문, 사회, 과학, 기술, 예술) 중 원하는 영역에서 문항을 자유롭게 출제해주시기 바랍니다.</p>
                        </li>
                        <li>
                            <strong>출제 가이드라인 </strong>
                            <p>공모 문항 수는 1회당 최대 3set로 제한합니다. 지문의 길이 등 출제에 있어 고려해야 할 요소들은 최근 평가원에서 출제한 국어의 트렌드를 기준으로 삼아주시기 바랍니다. 문항 출제에 활용한 모든 자료는 출처를 표기해주시기 바랍니다.</p>
                            <ol >
                                <li>
                                    <strong>화법과 작문&amp;문법</strong>
                                    <p>화법과 작문에서 2~4개의 문항과 문법에서 1~2개의 문항으로 구성된 1set를 제출해주시기 바랍니다. 화법과 작문&amp;문법은 2021학년도 수능 대비 교육과정을 준수하는 문항들을 출제해주시기 바랍니다.</p>
                                </li>
                                <li>
                                    <strong>문학</strong>
                                    <p>현대시, 고전시가, 현대소설, 고전소설, 극 중 원하는 영역(들)에서 3~5개 문항으로 구성된 1set를 제출해 주시기 바랍니다. 해당 set에는  &lt;보기&gt; 유형이 1문항 이상 있어야 하며, 어휘 문항은 심사에서 제외됩니다. </p>
                                </li>
                                <li>
                                    <strong>독서</strong>
                                    <p>인문, 사회, 과학, 기술, 예술 영역 중 원하는 영역(들)에서 4~6개 문항으로 구성된 1set를 제출해주시기 바랍니다. 해당 set에는 고난도 문항이 1문항 이상 있어야 하며, 어휘 문항은 심사에서 제외됩니다. </p>
                                </li>
                            </ol>
                        </li>
                        <li>
                            <strong>우수 문항 채택 상금</strong>
                            <ol>
                                <li>
                                    <strong>화법과 작문&amp;문법</strong>
                                    <p>우수 set로 채택될 경우, 1set당 30~100만원의 상금을 지급합니다.</p>
                                </li>
                                <li>
                                    <strong>문학</strong>
                                    <p>우수 set로 채택될 경우, 1set당 50~200만원의 상금을 지급합니다.</p>
                                </li>
                                <li>
                                    <strong>독서</strong>
                                    <p>우수 set로 채택될 경우, 1set당 50~200만원의 상금을 지급합니다.</p>
                                </li>
                            </ol>
                        </li>
                    </ul>
                </div>
                <!-- 2 -->
                <div class="tab-content">
                    <ul class="list-number part">
                        <li>
                            <strong>출제 범위</strong>
                            <p>15 개정 교육과정에 해당하는 킬러 문항, 비킬러 문항을 자유롭게 출제해주시기 바랍니다. 2021학년도 수능 수학 출제 범위는 수학Ⅰ(지수함수와 로그함수 /삼각함수 /수열), 수학Ⅱ(함수의 극한과 연속 /미분 /적분), 미적분(수열의 극한 /미분 /적분), 확률과 통계(경우의 수 /확률 /통계)입니다.</p>
                        </li>
                        <li>
                            <strong>출제 가이드라인</strong>
                            <p>공모 문항 수는 1회당 최대 6문항으로 제한합니다. 가형과 나형을 구분 짓지 말고 자유롭게 출제해주시기 바랍니다. 교육과정이 개정됨에 따라 기존의 주제들이 어떻게 변화할지 불분명합니다. 따라서 15 개정 교육과정에 해당하는 다양한 주제들이 녹아 있는 문항들을 만날 수 있기를 기대하는 바입니다.</p>
                            <ol >
                                <li>
                                    <strong>킬러 문항</strong>
                                    <p>화법과 작문에서 2~4개의 문항과 문법에서 1~2개의 문항으로 구성된 1set를 제출해주시기 바랍니다. 화법과 작문&amp;문법은 2021학년도 수능 대비 교육과정을 준수하는 문항들을 출제해주시기 바랍니다.</p>
                                </li>
                                <li>
                                    <strong>비킬러 문항</strong>
                                    <p>현대시, 고전시가, 현대소설, 고전소설, 극 중 원하는 영역(들)에서 3~5개 문항으로 구성된 1set를 제출해 주시기 바랍니다. 해당 set에는 &lt;보기&gt; 유형이 1문항 이상 있어야 하며, 어휘 문항은 심사에서 제외됩니다. </p>
                                </li>
                            </ol>
                        </li>
                        <li>
                            <strong>우수 문항 채택 상금</strong>
                            <ol>
                                <li>
                                    <strong>킬러 문항</strong>
                                    <p>우수 문항으로 채택될 경우, 1문항당 50~150만원의 상금을 지급합니다.</p>
                                </li>
                                <li>
                                    <strong>비킬러 문항</strong>
                                    <p>우수 문항으로 채택될 경우, 1문항당 10~50만원의 상금을 지급합니다.</p>
                                </li>
                            </ol>
                        </li>
                    </ul>
                </div>
                <!-- 3 -->
                <div class="tab-content">
                    <ul class="list-number part">
                        <li>
                            <strong>출제 범위</strong>
                            <p>주제, 제목, 빈칸, 순서, 삽입 문항 중 원하는 유형을 자유롭게 출제해주시기 바랍니다</p>
                        </li>
                        <li>
                            <strong>출제 가이드라인</strong>
                            <p> 공모 문항 수는 1회당 최대 6문항으로 제한합니다. 기존 EBS 연계 교재 지문을 제외한 신규 문항을 출제해주시기 바랍니다. 모든 문항의 원문 출처를 표기해야 합니다. 영어 지문은 어떤 저작물로 작업했는지에 대한 근거가 명확하게 있어야 저작자들 간 분쟁을 최소화시킬 수 있기 때문에 원문 출처를 상세히 명시해 주시기 바랍니다.</p>
                        </li>
                        <li>
                            <strong>우수 문항 채택 상금</strong>
                            <p>우수 문항으로 채택될 경우, 1문항당 10~20만원의 상금을 지급합니다.</p>
                        </li>
                    </ul>
                </div>
                <!-- 4 -->
                <div class="tab-content">
                    <ul class="list-number part">
                        <li>
                            <strong>출제 범위</strong>
                            <p>2021학년도 수능 과학탐구 영역은 물리학Ⅰ/Ⅱ, 화학Ⅰ/Ⅱ, 생명과학Ⅰ/Ⅱ, 지구과학Ⅰ/Ⅱ로 8과목이며, 15 개정 교육과정에 해당하는 킬러 문항, 비킬러&amp;자료해석형 문항을 자유롭게 출제해주시기 바랍니다.</p>
                        </li>
                        <li>
                            <strong>출제 가이드라인</strong>
                            <p>공모 문항 수는 1회당 최대 6문항으로 제한합니다.교육과정이 개정됨에 따라 많은 변화가 있는 과목도 존재하며, 큰 변화가 없는 과목도 존재합니다. 해당 과목의 개정 방향성을 잘 이해하여 다양한 주제가 녹아 있는 문항들을 만날 수 있기를 기대하는 바입니다.</p>
                            <ol >
                                <li>
                                    <strong>킬러 문항</strong>
                                    <p>변화하는 15 개정 교육과정에 충실하면서, 출제의도가 명확한 문항을 자유롭게 출제해주시면 됩니다.</p>
                                </li>
                                <li>
                                    <strong>비킬러 문항</strong>
                                    <p>변화하는 15 개정 교육과정에 충실하면서, 출제의도가 명확한 문항을 자유롭게 출제해주시면 됩니다.</p>
                                </li>
                            </ol>
                            <p>※ 과목에 따라 킬러와 비킬러&amp;자료해석형 간 구분이 모호한 경우가 존재한다는 점을 인지하고 있으므로, 각 과목마다의 특성을 적절히 고려하여 상금을 차등 지급할 예정입니다.</p>
                        </li>
                        <li >
                            <strong>우수 문항 채택 상금</strong>
                            <ol>
                                <li>
                                    <strong>킬러 문항</strong>
                                    <p>우수 문항으로 채택될 경우, 1문항당 30~70만원의 상금을 지급합니다.</p>
                                </li>
                                <li>
                                    <strong>비킬러 문항</strong>
                                    <p>우수 문항으로 채택될 경우, 1문항당 10~30만원의 상금을 지급합니다.</p>
                                </li>
                            </ol>
                        </li>
                    </ul>
                </div>
                <!-- 5 -->
                <div class="tab-content">
                    <ul class="list-number part">
                        <li>
                            <strong>출제 범위</strong>
                            <p>2021학년도 수능 사회탐구 영역은 생활과윤리, 윤리와사상, 한국지리, 세계지리, 동아시아사, 세계사, 정치와 법, 경제, 사회문화로 9과목이며, 15 개정 교육과정에 해당하는 등급변별문항을 자유롭게 출제해주시기 바랍니다.</p>
                        </li>
                        <li>
                            <strong>출제 가이드라인</strong>
                            <p>공모 문항 수는 1회당 최대 6문항으로 제한합니다. 교육과정이 개정됨에 따라 많은 변화가 있는 과목도 존재하고, 큰 변화가 없는 과목도 존재합니다. 해당 과목의 개정 방향성을 잘 이해하여 다양한 주제가 녹아 있는 문항들을 만날 수 있기를 기대하는 바입니다.</p>
                            <ol>
                                <li>
                                    <strong>등급변별문항</strong>
                                    <p>변화하는 15 개정 교육과정에 충실하면서, 출제의도가 명확한 문항을 자유롭게 출제해주시면 됩니다.</p>
                                </li>
                            </ol>
                            <p style="padding-left: 40px; text-indent: -20px;">※ 등급변별문항이란, 정답률 60% 이하 수준의 문항을 말합니다. 과목마다 등급변별문항의 성격이 다르게 나타나는 점을 인지하고 있으므로, 각 과목마다의 특성을 적절히 고려하여 상금을 차등 지급할 예정입니다.</p>
                        </li>
                        <li>
                            <strong>우수 문항 채택 상금</strong>
                            <ol>
                                <li>
                                    <strong>등급변별문항</strong>
                                    <p>우수 문항으로 채택될 경우, 1문항당 20~50만원의 상금을 지급합니다.</p>
                                </li>
                            </ol>
                        </li>
                    </ul>
                </div>
            </div>
            <!--//E : board-tab : 텝 게시글 -->
        </div>


        <div class="txt-center mt40">
            <a href="javascript:IfFileDownload2('903032','sdij_question_raising','sdij_question_raising.hwp');" class="btn btn-black btn-more-lg">접수양식 (HWP) 다운</a>
        </div>

</div>
<!--// E : 콘텐츠 영역 -->
<div>
<!-- E : container //-->

<script type="text/javascript">
var IfFileDownload2 = function(sFolderCd, sDownFileNm, sFileNm) {
    document.domain = "dev.sdij.com";

    var domain_url = "http://file.sdij.com";
    if (location.host == "dev.sdij.com") {
        domain_url = "http://dfile.sdij.com";
    }

    var tUrl = domain_url + "/file_download.asp?sFolderCd=" + sFolderCd;
        tUrl += "&sDownFileNm=" + sDownFileNm;
        tUrl += "&sFileNm=" + sFileNm;


    location.href = tUrl;

    document.getElementById('fileDown').src = tUrl;
    document.getElementById('fileDown').location.reload();

    window.open(tUrl, '_blank');

};
</script>


<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->
