<!-- S : wrap -->
<div id="wrap">
    <!-- S : header -->
    <header id="header">
        <div class="header-bg"></div>

        <a href="javascript:void(0);" onclick="fnOpenGnb(this);" class="btn-ico btn-menu"><span>메뉴 열기</span></a>
        
        <div class="nav">
            <div class="wide-layout">
                <a href="//www.sdij.com/aca/" target="_blank">시대인재</a>
                <a href="//www.sdij.com/sdn/" target="_blank">N재수종합</a>
                <a href="/">DIGITAL CLASS</a>
                <a href="//www.sdijbooks.com/" target="_blank">BOOKS</a>
            </div>
        </div>

        <div class="gnb">
            <div class="wide-layout">
                <h1 class="logo"><a href="/totalWebSite/sdijx/index.asp"><i class="ico-logo">시대인재</i></a></h1>

                <a href="/totalWebSite/sdijx/lecture/index.asp" class="btn-ico btn-search"><i class="ico-search">검색 바로가기</i></a>

                <div class="gnb-layout">
                    <ul class="gnb-menu">
                        <li>
                            <a href="javascript:void(0);" class="gnb-1depth"><span>컨텐츠</span></a>

                            <div class="gnb-2depth">
                                <span class="color-gray">컨텐츠</span>

                                <a href="#">전체</a>
                                <a href="#">Revival</a>
                                <a href="#">Suvival</a>
                                <a href="#">ATG</a>
                                <a href="#">Shotcut</a>
                            </div>
                        </li>

                        <li>
                            <a href="javascript:void(0);" class="gnb-1depth"><span>선생님 커리큘럼</span></a>

                            <div class="gnb-2depth">
                                <span class="color-gray">선생님 커리큘럼</span>

                                <a href="/totalWebSite/sdijx/teachers/index.asp">전체</a>
                                <a href="/totalWebSite/sdijx/teachers/index.asp">국어</a>
                                <a href="/totalWebSite/sdijx/teachers/index.asp">수학</a>
                                <a href="/totalWebSite/sdijx/teachers/index.asp">영어</a>
                                <a href="/totalWebSite/sdijx/teachers/index.asp">과탐</a>
                                <a href="/totalWebSite/sdijx/teachers/index.asp">사탐</a>
                                <a href="/totalWebSite/sdijx/teachers/index.asp">한국사</a>
                            </div>
                        </li>

                        <li>
                            <a href="javascript:void(0);" class="gnb-1depth"><span>디지털공부공간</span></a>

                            <div class="gnb-2depth">
                                <span class="color-gray">디지털공부공간</span>

                                <a href="#">학습환경</a>
                                <a href="#">학습관리(App)</a>
                            </div>
                        </li>

                        <li>
                            <a href="javascript:void(0);" class="gnb-1depth"><span>입시R&amp;D</span></a>
                            <div class="gnb-2depth">
                                <span class="color-gray">입시R&amp;D</span>

                                <a href="//www.sdij.com/sdn/briefing/default.asp" target="_blank">입시설명회</a>
                                <a href="//www.sdij.com/sdn/board/exam_list.asp" target="_blank">입시컨설팅</a>
                            </div>
                        </li>

                        <li>
                            <a href="#" class="gnb-1depth"><span>수강신청</span></a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" class="gnb-1depth"><span>고객센터</span></a>
                            <div class="gnb-2depth">
                                <span class="color-gray">고객센터</span>

                                <a href="/totalWebSite/sdijx/help/faqList.asp">자주묻는질문</a>
                                <a href="/totalWebSite/sdijx/help/qnaList.asp">1:1문의</a>
                                <a href="/totalWebSite/sdijx/help/noticeList.asp">공지사항</a>
                            </div>
                        </li>
                    </ul>

                    <div class="gnb-util btn-area">
                        <a href="/totalWebSite/sdijx/lecture/index.asp" class="btn-ico btn-search"><i class="ico-search">검색 바로가기</i></a>
                        
                    <% If false then '로그인 전 %>
                        <a href="/totalWebSite/sdijx/member/login.asp" class="btn btn-black">로그인</a>
                    <% else '로그인 후 %>
                        <a href="/totalWebSite/sdijx/member/login.asp" class="btn">로그인</a>
                        <a href="/totalWebSite/sdijx/mypage/index.asp" class="btn btn-black">마이페이지</a>
                        <!-- <a href="/sdijx/member/logout.asp" class="btn btn-logout">로그아웃</a> -->
                    <% end if %>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--// E : header -->