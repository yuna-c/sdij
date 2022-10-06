<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 게시판 > FAQ 상세
' 모듈기능 : 보충강좌 서비스 > 게시판 > FAQ 상세
' 파 일 명 : faq_detail.asp
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
'idx = fncRequest("idx")
idx = Request.QueryString("idx")


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
            <h1 class="tit-dep1">자주하는 질문 (FAQ)</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <!-- S : FAQ -->
        <article class="container-view content-layout">
            
            <div class="table-type1 table-view1">
                <table>
                    <colgroup>
                        <col style="width:4.666666667rem;">
                        <col style="width:auto;">
                    </colgroup>

                    <% if idx = 1 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">학습 기기 &gt; 스타플레이어 업데이트</div>
                            <div class="tit">안드로이드 업데이트 방법 입니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    아래 링크로 들어가시면 바로 구글 플레이스토어 내 star player+ 로 연결됩니다.<br>
                                    <a href="https://play.google.com/store/apps/details?id=kr.co.axissoft.starplayerplus" class="txt-link" target="_blank">https://play.google.com/store/apps/details?id=kr.co.axissoft.starplayerplus</a><br><br>

                                    [스타플레이어 버전 정보] 1.9.10<br>
                                    [필요한 Android 버전] 4.4 이상
                                </div>
                            </td>
                        </tr>
                    </tbody>
                    <% elseif idx = 2 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">학습 기기 &gt; 스타플레이어 업데이트</div>
                            <div class="tit">ios 업데이트 방법 입니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    아래 링크로 들어가시면 바로 앱스토어 내 starplayer+로 연결됩니다.<br>
                                    <a href="https://apps.apple.com/kr/app/starplayer/id1474597276" class="txt-link" target="_blank">https://apps.apple.com/kr/app/starplayer/id1474597276</a><br><br>

                                    [스타플레이어 버전 정보] 1.9.82<br>
                                    [iOS지원 범위] iOS V 11.x 이상 (탈옥된 단말기 버전 상관없이 지원 불가)<br><br>

                                    맥북의 경우 PC로 인식되어 자동설치 됩니다.<br>
                                    자동설치 되지 않는 경우 이용환경 3번 FAQ 참고 부탁드립니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 3 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">학습 기기 &gt; 스타플레이어 업데이트</div>
                            <div class="tit">Mac Os 자동 설치가 안되요.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    맥북의 경우 PC로 인식되어 자동설치 됩니다.<br>
                                    자동설치 되지 않는 경우 아래의 방법 참고 부탁드립니다.<br><br>

                                    - <a href="https://cabstarplayer.myskcdn.com/starplayer/StarPlayerAgent_1.0.4.16.pkg" class="txt-link" target="_blank">https://cabstarplayer.myskcdn.com/starplayer/StarPlayerAgent_1.0.4.16.pkg</a><br>
                                    - 최신 버전의 OSX 에서는 gatekeeper 에 의해 설치가 되지 않는 경우 아래와 같이 설치해 주세요.<br>
                                    - finder → 다운로드 받은 폴더 로 이동 → 아래와 같이 파일 선택 후 투핑거터치 후 → 다음으로 열기 → 설치 프로그램.app (기본) 으로 설치
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 4 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">학습 기기 &gt; 스타플레이어 설치오류</div>
                            <div class="tit">스타플레이어를 설치 해도 계속 다시 하라고 해요 (ios)</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    인터넷 브라우저 사파리(Safari)를 통해 리클래스에 접속하신 경우<br>
                                    주소창 좌측 ‘한한’ 버튼을 눌러 모바일 사이트 요청 누르기<br><br>

                                    모바일 사이트 요청을 누른 이후에도 동일한 문제가 발생하는 경우<br>
                                    앱스토어에서 구글 크롬을 다운받아 주시고 크롬으로 리클래스에 접속하여 강의 수강 부탁드립니다.<br>
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 5 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">학습 기기 &gt; 스타플레이어 설치오류</div>
                            <div class="tit">스타플레이어를 설치 해도 계속 다시 하라고 해요 (PC)</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    PC에서도 설치 파일 다운로드 후 설치를 진행해줘야 합니다.<br>
                                    다운로드 받은 폴더에서 스타플레이어 설치 파일을 찾아 더블클릭 후 설치해 주세요.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 6 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; LIVE강의</div>
                            <div class="tit">no internet connection detected 라는 문구가 뜹니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    스트리밍 수업 시작 전 입장하거나 개인 인터넷 환경에 따라 오류가 발생할 수 있습니다.<br>
                                    수업 시작 10분 전 재접속 부탁드리며 동일한 현상 발생시 010-2958-4268(문자 전용)으로 문자 부탁드립니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 7 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; LIVE강의</div>
                            <div class="tit">Unsupported media type라는 문구가 뜹니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    문제 화면을 캡쳐하여 010-2958-4268(문자 전용)으로 연락주시면 빠른 해결 가능합니다.<br>
                                    예시) 홍길동5678(아이디), 최수준T 생명 1 토 9시 수업(강좌명) 재생이 안됩니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 8 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; LIVE강의</div>
                            <div class="tit">“라이브가 종료되었습니다.” 라는 문구가 뜹니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    스트리밍 수업이 이미 종료된 후에는 강의실에 입장할 수 없습니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 9 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; LIVE강의</div>
                            <div class="tit">“라이브 진행시간이 아닙니다.”라는 문구가 뜹니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    스트리밍 수업 시작 시간 보다 일찍 입장하실 해당 문구가 보일 수 있습니다.<br>
                                    입장 시간 확인 후 입장 시간에 맞게 입장 부탁드립니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 10 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; LIVE강의</div>
                            <div class="tit">수업 당일인데도 LIVE 강의 페이지에 수강 강좌가 보이지 않습니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    문제 화면 캡쳐하여 010-2958-4268(문자 전용)으로 연락주시면 빠른 해결 가능합니다.<br>
                                    예시) 홍길동5678(아이디), 최수준T 생명 1 토 9시 수업(강좌명) 라이브 강좌가 보이지 않습니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 11 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; LIVE강의</div>
                            <div class="tit">4G로 수강 시 끊어짐이 있습니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    LTE 무제한이라고 하더라고 일정 사용량 이상이 되면 속도가 저하 되기 대문에 버퍼링 등 발생할 수 있습니다.<br>
                                    안정적인 와이파이 환경이나 PC 수강을 추천 드립니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 12 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; 복습 /추가강의</div>
                            <div class="tit">아이패드로 수강시 파일 없음 이라는 오류가 뜹니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    리클래스 사이트로 로그인 하지 않고 바로 스타플레이어로 진입하시면 해당 문제가 발생할 수 있습니다.<br>
                                    <a href="http://aca.reclass.study" class="txt-link">리클래스 사이트 (http://aca.reclass.study)</a>로 로그인 후 강의 수강 부탁드립니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 13 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; 복습 /추가강의</div>
                            <div class="tit">LIVE 수업을 수강했으나 복습 /추가강의 PLAY 버튼을 누르면 라이브 수강이력이 없다고 뜹니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    복습 /추가강의는 스트리밍 수업을 10분 이상 시청하셔야 시청이 가능합니다. <br><br>

                                    10분 이상 스트리밍 수업을 수강 하셨음에도 해당 문제가 발생하는 경우에는 플레이어 종료 시 오류가 발생한 건으로, <br>
                                    리클래스 내 1:1 게시판으로 연락주시면 수강기록 조회 후 신속히 문제해결 도와드리겠습니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 14 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; 복습 /추가강의</div>
                            <div class="tit">신청하지 않은 다른 수업이 나옵니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    문제 화면 캡쳐하여 리클래스 내 1:1 게시판으로 연락주시면 빠른 해결 가능합니다. <br>
                                    예시) 홍길동5678(아이디), 최수준T 생명 1 토 9시 수업(강좌명)이 아닌 다른 강좌가 보입니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 15 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">동영상 재생 오류 &gt; 복습 /추가강의</div>
                            <div class="tit">복습 /추가강의 PLAY 버튼을 누르면 수강기간이 아닙니다 라고 뜹니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    강의명 하단에 수강기간과 수강가능 시간이 표시 되어 있습니다. 해당 기간이 종료 되거나 수강 가능 시간을 모두 채운 경우 수강이 불가능 합니다.<br><br>

                                    위 내용에 해당되지 않는 경우에도 동일한 오류가 발생했다면,<br>
                                    리클래스 내 1:1 게시판으로 연락주시면 수강기록 조회 후 신속히 문제해결 도와드리겠습니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% elseif idx = 16 then %>
                    <thead>
                        <th colspan="2" class="tit-area">
                            <div class="tit color-gray">사이트 &gt; 로그인</div>
                            <div class="tit">인증 시 핸드폰 번호 변경이 필요 합니다.</div>
                        </th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <div class="txt-area">
                                    리클래스 내 1:1 게시판으로 아이디 /수업명 /변경하고자 하는 핸드폰 번호를 남겨 주시면 신속히 해결 도와 드리겠습니다.
                                </div>
                            </td>
                        </tr>
                    </tbody>

                    <% end if %>
                </table>
            </div>           

            <div class="mt1 txt-right">
                <a href="faq.asp" class="btn btn-black btn-M">목록</a>
            </div>
        </article>
        <!--// E : FAQ -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

<script type="text/javascript">
$(function() {

});
</script>