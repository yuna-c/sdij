<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 브랜드 정의 영역 -->
    <div class="tit-layout float-area">
        <% if true then '재종반 %>
        <div class="tit-box fl">
            Master Key To Success
        </div>
        <div class="txt-box fr">
            <p>시대인재는<br>학생들의 시간가치와 결과가치를 이해하여</p>
            <p>수많은 시간 정직한 공부를 하더라도<br>일부 학생들만 성공하는 냉혹한 입시 현실을 거슬러</p>
            <p>한차원 다른 강의와 컨텐츠의 창조적 재배열을 통한<br>Shortcut의 실현으로</p>
            <p>운의 영역을 초극하여 학생 자신의 Hidden Score를 실현하는<br>만점구조시스템을 구현합니다</p>
        </div>
        <% else '단과반 %>
        <div class="tit-box fl">
            Contents &amp; New Paradigm<br>
            Consulting<br>
            Care &amp; Review
        </div>
        <div class="txt-box fr">
            <p>고3 재학생들이<br>수능당일 평소보다 수학 과학이 1-2등급씩 떨어져<br>불확실한 재수를 해야했던 현실을 바꾸어</p>
            <p>시대인지 컨텐츠와 함께 지금은</p>
            <p>반 10등 학생이 전교권 학생과의 과목별 수능성적 차이가 거의 없는 흔한 사례들과 어울러<br>오히려 고3 재학생들이 재수생 이상의 최상의 실적을 배출하며</p>
            <p>좋은 강의일지라도 직면할 수 밖에 없는 불확실한 결과가치를 넘어서</p>
            <p>강좌선택에 따른 기회가치의 최적화를 구현합니다.</p>
        </div>
        <% end if %>
    </div>
    <!--// E : 브랜드 정의 영역 -->

    <!-- S : 메인 메뉴 리스트 -->
    <div class="content-layout">
        <div class="gallery-list">
            <ul class="float-area">
                <% if true then '재종반 %>
                <li>
                    <a href="#">
                        <span class="menu-txt">커리큘럼</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <% else '단과반 %>
                <li>
                    <a href="#">
                        <span class="menu-txt">시간표</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <% end if %>
                <li>
                    <a href="#">
                        <span class="menu-txt">부엉이 라이브러리</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">실전모의고사</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li class="list-banner">
                    <a href="#"><img src="<%=URL_IMG%>/banner/main_banner.png" alt="Meet Our Optimum Contents System 시대인재의 만점 구조 시스템"></a>
                </li>
                <% if true then '재종반 %>
                <li>
                    <a href="#">
                        <span class="menu-txt">모집요강</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">응시원서접수</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <% else '단과반 %>
                <li>
                    <a href="#">
                        <span class="menu-txt">설명회</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">컨설팅</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <% end if %>
                <li>
                    <a href="#">
                        <span class="menu-txt">입시 R&amp;D</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">1:1 질의응답</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">부엉이포스트</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">급식 메뉴</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">명예의 전당</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!--// E : 메인 메뉴 리스트 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"--> 