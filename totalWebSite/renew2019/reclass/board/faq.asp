<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 게시판 > FAQ
' 모듈기능 : 보충강좌 서비스 > 게시판 > FAQ
' 파 일 명 : faq.asp
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
    <section id="container" class="index-container faq-container">
        <!-- S : FAQ -->
        <article class="container-list content-layout">
            <div class="tit-dep1">자주하는 질문 (FAQ)</div>

            <div class="tab-icon">
                <ul>
                    <li class="selected"><a href="javascript:void(0);">
                        <i class="ico-device-g"></i>
                        <span>
                            학습 기기
                            <small>(모바일 /태블릿 /PC)</small>
                        </span>
                    </a></li>

                    <li><a href="javascript:void(0);">
                        <i class="ico-video-g"></i>
                        <span>동영상 재생오류</span>
                    </a></li>

                    <li><a href="javascript:void(0);">
                        <i class="ico-mouse-g"></i>
                        <span>사이트 이용</span>
                    </a></li>
                </ul>
            </div>

            <!-- S : 학습 기기 -->
            <div class="tab-content tab-on">
                <h4 class="tit-dep4">스타플레이어 업데이트</h4>
                
                <div class="list-faq">
                    <ul>
                        <li><a href="faq_detail.asp?idx=1"><span>안드로이드 업데이트 방법 입니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=2"><span>ios 업데이트 방법 입니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=3"><span>Mac Os 자동 설치가 안되요</span></a></li>
                    </ul>
                </div>

                <h4 class="tit-dep4">스타플레이어 설치 오류</h4>

                <div class="list-faq">
                    <ul>
                        <li><a href="faq_detail.asp?idx=4"><span>스타플레이어를 설치 해도 계속 다시 하라고 해요 (ios)</span></a></li>
                        <li><a href="faq_detail.asp?idx=5"><span>스타플레이어를 설치 해도 계속 다시 하라고 해요 (PC)</span></a></li>
                    </ul>
                </div>
            </div>
            <!--// E : 학습 기기 -->

            <!-- S : 동영상 재생오류 -->
            <div class="tab-content">
                <h4 class="tit-dep4">LIVE강의</h4>
                
                <div class="list-faq">
                    <ul>
                        <li><a href="faq_detail.asp?idx=6"><span>no internet connection detected 라는 문구가 뜹니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=7"><span>Unsupported media type라는 문구가 뜹니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=8"><span>“라이브가 종료되었습니다.” 라는 문구가 뜹니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=9"><span>“라이브 진행시간이 아닙니다.”라는 문구가 뜹니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=10"><span>수업 당일인데도 LIVE 강의 페이지에 수강 강좌가 보이지 않습니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=11"><span>4G로 수강 시 끊어짐이 있습니다.</span></a></li>
                    </ul>
                </div>

                <h4 class="tit-dep4">복습 /추가강의</h4>
                
                <div class="list-faq">
                    <ul>
                        <li><a href="faq_detail.asp?idx=12"><span>아이패드로 수강시 파일 없음 이라는 오류가 뜹니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=13"><span>LIVE 수업을 수강했으나 복습 /추가강의 PLAY 버튼을 누르면 라이브 수강이력이 없다고 뜹니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=14"><span>신청하지 않은 다른 수업이 나옵니다.</span></a></li>
                        <li><a href="faq_detail.asp?idx=15"><span>복습 /추가강의 PLAY 버튼을 누르면 수강기간이 아닙니다 라고 뜹니다.</span></a></li>
                    </ul>
                </div>
            </div>
            <!--// E : 동영상 재생오류 -->

            <!-- S : 사이트 이용 -->
            <div class="tab-content">
                <h4 class="tit-dep4">로그인</h4>
                
                <div class="list-faq">
                    <ul>
                        <li><a href="faq_detail.asp?idx=16">인증 시 핸드폰 번호 변경이 필요 합니다.</a></li>
                    </ul>
                </div>
            </div>
            <!--// E : 사이트 이용 -->
        </article>
        <!--// E : FAQ -->
    </section>
    <!--// E : container -->

<script type="text/javascript">
    $(function(){

    });
</script>
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->