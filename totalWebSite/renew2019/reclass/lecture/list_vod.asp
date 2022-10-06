<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > 복습 /추가강의 리스트
' 모듈기능 : 보충강좌 서비스 > 강좌 > 복습 /추가강의 리스트
' 파 일 명 : list.asp
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
    <!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incHeader.asp"-->
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="index-container live-container">
        <!-- S : 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="tit-dep1 mt1">복습 /추가 강의</div>

            <div class="tab-type1 tab-subject">
                <a href="javascript:void(0)" class="selected">국어</a>
                <a href="javascript:void(0)">수학</a>
                <a href="javascript:void(0)">영어</a>
                <a href="javascript:void(0)">사회탐구</a>
                <a href="javascript:void(0)">과학탐구</a>
                <a href="javascript:void(0)">수리 논술</a>
                <a href="javascript:void(0)">한국사</a>
                <a href="javascript:void(0)">생명논술</a>
                <a href="javascript:void(0)">물리논술</a>
                <a href="javascript:void(0)">화학논술</a>
            </div>
            
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:15%;">
                        <col style="width:15%;">
                        <col style="width:auto;">
                        <col style="width:15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>과목</th>
                            <th>선생님</th>
                            <th>강좌명</th>
                            <th>수강 기간</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 10 '첫 페이지 열줄 노출 %>
                        <tr>
                            <td class="txt-center">기하와 벡터</td>
                            <td class="txt-center">박종민 선생님</td>
                            <td><a href="/totalWebSite/renew2019/reclass/lecture/detail.asp" class="tit-link">리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2 리바이벌 미적분2</a></td>
                            <td class="txt-center">7일</td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>

            <div class="list-btn mt1">
                <a href="javascript:void(0);" class="btn btn-more">더 보기</a>
            </div>
        </article>
        <!--// E : 강좌 리스트 -->

        <!-- S : 플레이어 유의사항 -->
        <article class="container-info content-layout">
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
        </article>
        <!--// E : 플레이어 유의사항 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->