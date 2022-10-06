<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 온라인 테스트 > 상세
' 모듈기능 : 온라인 테스트 상세
' 파 일 명 : detail.asp
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
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1 mb0">온라인 테스트</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="index-container">
        <!-- S : 강좌 정보 -->
        <article class="container-view content-layout">
            <h3 class="tit-dep4">강좌명</h3>

            <ul class="list-tit float-area">
                <li>
                    <span class="tit">강사명</span>
                    <span class="txt">홍길동 선생님</span>
                </li>
                <li>
                    <span class="tit">과목명</span>
                    <span class="txt">수학(가)</span>
                </li>
            </ul>
        </article>
        <!--// E : 강좌 정보 -->

        <!-- S : 모의고사 리스트 -->
        <article class="container-list content-layout mt1">
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:4.666666667rem;">
                        <col style="width:4.666666667rem;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>시험명</th>
                            <th>응시일</th>
                            <th>응시하기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 5%>
                        <tr>
                            <td>서바이벌 모의고사 1회차</td>
                            <td class="txt-center">2020-01-01</td>
                            <td class="txt-center">
                            <% if i = 1 then '응시 내역이 있을 경우 %>
                                <span class="btn btn-gray btn-M">응시완료</span>
                            <% else %>
                                <a href="gate.asp" class="btn btn-black btn-M">응시하기</a>
                            <% end if %>
                            </td>
                        </tr>
                        <% next %>
                        <tr>
                            <td class="no-data" colspan="3">등록된 시험이 없습니다.</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- S : 안내사항 -->
            <h4 class="tit-dep4 mt2">안내사항</h4>
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:25%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>플레이어 수동설치</th>
                            <td class="txt-left">
                                <ul class="list-dash">
                                    <li>플레이어가 자동 다운로드 되지 않을 경우 프로그램 수동설치를 진행해 주세요</li>
                                    <li>IE : <a href="http://cab.starplayer.skcdn.com/starplayer/starplayer-1.5.21.52.exe" target="_blank" class="txt-link">http://cab.starplayer.skcdn.com/starplayer/starplayer-1.5.21.52.exe</a></li>
                                    <li>IE 외 크롬 브라우저 등 : <a href="http://cab.starplayer.skcdn.com/starplayer/starplayer_agent_1.2.6.71.exe" target="_blank" class="txt-link">http://cab.starplayer.skcdn.com/starplayer/starplayer_agent_1.2.6.71.exe</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>Mac Os 플레이어<br>설치 안내</th>
                            <td class="txt-left">
                                <ul class="list-dash">
                                    <li>플레이어가 자동 다운로드 되지 않을 경우 프로그램 수동설치를 진행해 주세요</li>
                                    <li><a href="https://cabstarplayer.myskcdn.com/starplayer/StarPlayerAgent_1.0.4.16.pkg" target="_blank" class="txt-link">https://cabstarplayer.myskcdn.com/starplayer/StarPlayerAgent_1.0.4.16.pkg</a></li>
                                    <li>최신 버전의 OSX 에서는 gatekeeper 에 의해 설치가 되지 않는 경우 아래와 같이 설치해 주세요.<br>finder → 다운로드 받은 폴더 로 이동 → 아래와 같이 파일 선택 후 투핑거터치 후 → 다음으로 열기 → 설치 프로그램.app (기본) 으로 설치</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--// E : 안내사항 -->
        </article>
        <!--// E : 모의고사 리스트 -->
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->