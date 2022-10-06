<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > LIVE강좌 리스트
' 모듈기능 : 보충강좌 서비스 > 강좌 > LIVE강좌 리스트
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
		<!-- S : 게시판 영역 -->
        <article class="container-prview content-layout">
            <div class="notice-content">
                <span class="sticker-gray">시대인재 공지</span>

                <a href="/renew2019/reclass/board/notice.asp" class="tit-link">공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용공지내용</a>
            </div>

            <!-- S : 안내 팝업 -->
            <article class="container-popup">
                <div class="content-layout">
                    <h4 class="tit-dep4">안녕하세요, 시대인재 입니다.</h4>
                    <div class="txt-area">
                        <p class="mt10">현재 수강 중인 수업에 대해 교재를 신청해 주세요.</p>
                    </div>
                    <div class="btn-area flex-area">
                        <a href="/totalWebSite/renew2019/reclass/delv/index.asp" class="btn btn-black">신청하기</a>
                    </div>
                </div>

                <div class="content-btn">
                    <a href="javascript:void(0);" onclick="popTodayClose(this);">오늘 하루 그만 보기</a>
                    <a href="javascript:void(0);" onclick="popClose(this);">닫기</a>
                </div>
            </article>

            <script type="text/javascript">
                function popClose(obj){
                    $this = $(obj);
                    $this.parents('.container-popup').hide();
                }

                function popTodayClose(obj){
                    $this = $(obj);
                    $this.parents('.container-popup').hide();
                }
            </script>
            <!--// E : 안내 팝업 -->
        </article>
        <!--// E : 게시판 영역 -->

		<!-- S : (구) 라이브 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="tit-area">
                <h2 class="tit-dep1">실시간 LIVE</h2>
                <!-- <a href="list_live.asp" class="tit-link tit-side">전체 라이브</a> -->

				<!-- S : OMR 추가 -->
				<% If true Then '시험 응시 전 %>
				<a href="javascript:void(0);" onclick="win_pop(); return false;" class="btn btn-M btn-black tit-side">시험응시</a>
				<% Else '시험 응시 완료 %>
				<a href="javascript:void(0);" class="btn btn-disabled btn-M tit-side">응시완료</a>
				<% End If %>
				<!--// E : OMR 추가 -->
            </div>

            <ul class="list-live list-live2">
                <% for i = 1 to 2 %>
                <li><a href="javascript:void(0)" class="on">
                    <span class="sticker-red">LIVE <span class="time">12:00 ~ 14:00</span></span>

                    <span class="tit">엄영대T 지구과학Ⅰ</span>
                </a></li>
                <% next %>
            </ul>
        </article>
        <!--// E : (구) 라이브 강좌 리스트 -->

        <!-- S : (신) 라이브 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="table-type2 mb2">
                <table>
                    <thead>
                        <tr>
                            <th><span>월</span></th>
                            <th><span>화</span></th>
                            <th class="today"><span>수</span></th>
                            <th><span>목</span></th>
                            <th><span>금</span></th>
                            <th><span>토</span></th>
                            <th><span>일</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 6 %>
                        <tr>
                            <td><a href="javascript:void(0);" onclick="alert('종료된 라이브 입니다.');">
                                <span class="sticker-black">END</span>
                                <span class="name">이승헌 선생님</span>
                                <span class="tit">이승헌T 한국지리</span>
                                <span class="time">12:00 ~ 14:00</span>
                                <span class="time">입장가능시간 : ~ 14:00</span>
                            </a></td>

                            <td>
                                &nbsp;
                            </td>

                            <% if i = 1 then '라이브 종료 되었을 경우 %>
                            <td class="today"><a href="javascript:void(0);" onclick="alert('종료된 라이브 입니다.');">
                                <span class="sticker-black">END</span>

                            <% elseif i = 2 then '라이브 진행중 일 경우 %>
                            <td class="today"><a href="javascript:void(0);" onclick="fnOpenModal('.modal-confirm');">
                                <span class="sticker-red">LIVE</span>

                            <% else %>
                            <td class="today"><a href="javascript:void(0);" onclick="alert('LIVE 방송 예정 입니다.');">
                                <span class="sticker-gray">NEXT</span>

                            <% end if %>

                                <span class="name">변춘수 선생님</span>
                                <span class="tit">변춘수T 생명과학1 A/B/C/E반</span>
                                <span class="time">12:00 ~ 14:00</span>
                                <span class="time">입장가능시간 : ~ 14:00</span>
                            </a></td>

                            <td><a href="javascript:void(0);" onclick="alert('LIVE 방송 예정 입니다.');">
                                <span class="sticker-gray">NEXT</span>
                                <span class="name">이승헌 선생님</span>
                                <span class="tit">이승헌T 한국지리</span>
                                <span class="time">12:00 ~ 14:00</span>
                                <span class="time">입장가능시간 : ~ 14:00</span>
                            </a></td>

                            <td><a href="javascript:void(0);" onclick="alert('LIVE 방송 예정 입니다.');">
                                <span class="sticker-gray">NEXT</span>
                                <span class="name">이승헌 선생님</span>
                                <span class="tit">이승헌T 한국지리</span>
                                <span class="time">12:00 ~ 14:00</span>
                                <span class="time">입장가능시간 : ~ 14:00</span>
                            </a></td>

                            <td><a href="javascript:void(0);" onclick="alert('LIVE 방송 예정 입니다.');">
                                <span class="sticker-gray">NEXT</span>
                                <span class="name">이승헌 선생님</span>
                                <span class="tit">이승헌T 한국지리</span>
                                <span class="time">12:00 ~ 14:00</span>
                                <span class="time">입장가능시간 : ~ 14:00</span>
                            </a></td>

                            <td><a href="javascript:void(0);" onclick="alert('LIVE 방송 예정 입니다.');">
                                <span class="sticker-gray">NEXT</span>
                                <span class="name">이승헌 선생님</span>
                                <span class="tit">이승헌T 한국지리</span>
                                <span class="time">12:00 ~ 14:00</span>
                                <span class="time">입장가능시간 : ~ 14:00</span>
                            </a></td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>
        </article>
        <!--// E : (신) 라이브 강좌 리스트 -->

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
                            <th>라이브 재생 안내</th>
                            <td class="txt-left">
                                <ul class="list-dash">
                                    <li>플레이 버튼 클릭 후 재생 됩니다.</li>
                                    <li>IE 10 하위 버전은 플레이어 지원이 되지 않습니다.(IE 11 이상, 크롬 지원 가능)</li>
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

    <!-- S : modal-wrap -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 강의수강 인증 팝업 -->
        <div class="modal-container modal-M modal-confirm">
            <div class="modal-header">
                <h3 class="modal-tit">강의수강 인증</h3>
                <a href="javascript:void(0);" class="btn-close">팝업창 닫기</a>
            </div>
        
            <div class="modal-content">
                <h4 class="tit-dep4">
                    본 강의를 정말로 시청할 ‘학생’ 만 입장 바랍니다.<br>
                    아래 서약서 동의 후 문자 인증 후 강의 수강이 가능 합니다.
                </h4>
                <div class="form-small">
                    <ul>
                        <li class="agree-area">
                            <p class="strong">서약서</p>
                            <div class="textarea">
                                <textarea readonly>
본 강의를 수강할 경우 수강 횟수가 차감 되며
블라블라블라블라 블라블라블라블라 블라블라블라블라
블라블라블라블라 블라블라블라블라 블라블라블라블라
블라블라블라블라 블라블라블라블라 블라블라블라블라
블라블라블라블라 블라블라블라블라 블라블라블라블라
블라블라블라블라 블라블라블라블라 블라블라블라블라
                                </textarea>
                            </div>
                            <label class="input-checkbox">
                                <input type="checkbox" name="" id="">
                                <span class="ico ico-checkbox"></span>
    
                                <span>위 내용에 동의합니다.</span>
                            </label>
                        </li>

                        <li class="type-col4">
                            <label class="input-text">
                                <input type="tel" id="mem_hp1" name="mem_hp1" maxlength="4" value="010" readonly>
                            </label>
    
                            <label class="input-text">
                                <input type="tel" id="mem_hp2" name="mem_hp2" maxlength="4" value="1234" readonly>
                            </label>
    
                            <label class="input-text">
                                <input type="tel" id="mem_hp3" name="mem_hp3" maxlength="4" value="5678" readonly>
                            </label>
    
                            <span><button type="button" class="btn" id="btn_getAuthNo" name="btn_getAuthNo">인증번호 받기</button></span>
                        </li>
                        <li class="type-col2">
                            <label class="input-text">
                                <input type="tel" id="authNumber" name="authNumber" maxlength="6" placeholder="인증번호">
                                <span class="time" id="authTimer">3:00</span>
                            </label>
    
                            <span><button type="button" class="btn" id="btn_checkAuthNo" name="btn_checkAuthNo">확인</button></span>
                        </li>
                    </ul>

                    <div class="table-btn mt1">
                        <input type="submit" class="btn btn-black" value="강의 수강 시작하기" onclick="fnCloseModal('.modal-confirm'); location.href='/totalWebSite/renew2019/reclass/player/flow/live_player.asp'">
                    </div>
                </div>
            </div>
        </div>
        <!--// E : 강의수강 인증 팝업 -->
    </div>
    <!--// E : modal-wrap -->

<script>
/* 윈도우 팝업*/
var win_pop = function(){
	var popWidth = 500;
	var popHeight = 1100;
	var winHeight = document.body.clientHeight;
	var winWidth = document.body.clientWidth; 
	var winX = window.screenLeft; 
	var winY = window.screenTop; 

	var popX = winX + 50;
	var popY = winY + 170;

	var tUrl = "/totalWebSite/renew2019/reclass/exam/default.asp"; 
	var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";
	window.open(tUrl,"",tOpt);
};
</script>

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->