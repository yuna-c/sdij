<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <div class="board-layout">
        <h2 class="page-tit border-tit">급식</h2>

        <div class="board-tab">
            <div class="tab-list">
                <a href="javascript:void(0);" class="selected">시대인재 N 재수종합</a>
                <a href="javascript:void(0);">시대인재 N 신설시작반</a>
            </div>

            <!-- S : 재수종합 -->
            <div class="tab-content tab-on">
                <!-- S : 월 영역 -->
                <div class="food-tab float-area">
                    <div class="fl">
                        <select class="select">
                            <option value="1월">1월</option>
                            <option value="2월">2월</option>
                            <option value="3월">3월</option>
                            <option value="4월">4월</option>
                            <option value="5월">5월</option>
                            <option value="6월">6월</option>
                            <option value="7월">7월</option>
                            <option value="8월">8월</option>
                            <option value="9월">9월</option>
                            <option value="10월">10월</option>
                            <option value="11월">11월</option>
                            <option value="12월">12월</option>
                        </select>
                    </div>

                    <div class="slide-tab fr">
                        <div class="cycle-slideshow"
                            data-cycle-slides="> .slide"
                            data-cycle-fx="carousel"
                            data-cycle-timeout="0"
                            data-cycle-carousel-visible="5"
                            data-cycle-prev=".slide-tab .slide-btn .slide-prev"
                            data-cycle-next=".slide-tab .slide-btn .slide-next"
                        >
                            <% For i=1 To 31 %>
                            <a href="javascript:void(0);" class="slide <% If i=1 Then Response.Write "selected" %>"><%=i%>(수)</a>
                            <% next %>
                        </div>

                        <div class="slide-btn">
                            <a href="javascript:void(0);" class="slide-prev"><span class="ico ico-slide-prev">이전 날짜</span></a>
                            <a href="javascript:void(0);" class="slide-next"><span class="ico ico-slide-next">다음 날짜</span></a>
                        </div>
                    </div>
                </div>
                <!--// E : 월 영역 -->

                <!-- S : 급식메뉴 리스트 -->
                <div class="food-list">
                    <ul>
                        <li class="float-area">
                            <div class="data-img"><img src="http://via.placeholder.com/420x300" alt=" "></div>
                            <div class="data-menu">
                                <dl>
                                    <dt>점심 메뉴</dt>
                                    <dd>김치볶음밥&amp;계란후라이</dd>
                                    <dd>유부된장국</dd>
                                    <dd>청파래오징어까스&amp;타르타르소스</dd>
                                    <dd>매콤볼어묵조림</dd>
                                    <dd>깍두기</dd>
                                    <dd>요구르트</dd>
                                </dl>
                            </div>
                        </li>
                        <li class="float-area">
                            <div class="data-img"><img src="http://via.placeholder.com/420x300" alt=" "></div>
                            <div class="data-menu">
                                <dl>
                                    <dt>저녁 메뉴</dt>
                                    <dd>김치볶음밥&amp;계란후라이</dd>
                                    <dd>유부된장국</dd>
                                    <dd>청파래오징어까스&amp;타르타르소스</dd>
                                    <dd>매콤볼어묵조림</dd>
                                    <dd>깍두기</dd>
                                    <dd>요구르트</dd>
                                </dl>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--// E : 급식메뉴 리스트 -->
            </div>
            <!--// E : 재수종합 -->

            <!-- S : 신설시작반 -->
            <div class="tab-content">
                <!-- S : 월 영역 -->
                <div class="food-tab float-area">
                    <div class="fl">
                        <select class="select">
                            <option value="1월">1월</option>
                            <option value="2월">2월</option>
                            <option value="3월">3월</option>
                            <option value="4월">4월</option>
                            <option value="5월">5월</option>
                            <option value="6월">6월</option>
                            <option value="7월">7월</option>
                            <option value="8월">8월</option>
                            <option value="9월">9월</option>
                            <option value="10월">10월</option>
                            <option value="11월">11월</option>
                            <option value="12월">12월</option>
                        </select>
                    </div>

                    <div class="slide-tab fr">
                        <div class="cycle-slideshow"
                            data-cycle-slides="> .slide"
                            data-cycle-fx="carousel"
                            data-cycle-timeout="0"
                            data-cycle-carousel-visible="5"
                            data-cycle-prev=".slide-tab .slide-btn .slide-prev"
                            data-cycle-next=".slide-tab .slide-btn .slide-next"
                        >
                            <% For i=1 To 31 %>
                            <a href="javascript:void(0);" class="slide <% If i=1 Then Response.Write "selected" %>"><%=i%>(수)</a>
                            <% next %>
                        </div>

                        <div class="slide-btn">
                            <a href="javascript:void(0);" class="slide-prev"><span class="ico ico-slide-prev">이전 날짜</span></a>
                            <a href="javascript:void(0);" class="slide-next"><span class="ico ico-slide-next">다음 날짜</span></a>
                        </div>
                    </div>
                </div>
                <!--// E : 월 영역 -->

                <!-- S : 급식메뉴 리스트 -->
                <div class="food-list">
                    <ul>
                        <li class="float-area">
                            <div class="data-img"><img src="http://via.placeholder.com/420x300" alt=" "></div>
                            <div class="data-menu">
                                <dl>
                                    <dt>점심 메뉴</dt>
                                    <dd>김치볶음밥&amp;계란후라이</dd>
                                    <dd>유부된장국</dd>
                                    <dd>청파래오징어까스&amp;타르타르소스</dd>
                                    <dd>매콤볼어묵조림</dd>
                                    <dd>깍두기</dd>
                                    <dd>요구르트</dd>
                                </dl>
                            </div>
                        </li>
                        <li class="float-area">
                            <div class="data-img"><img src="http://via.placeholder.com/420x300" alt=" "></div>
                            <div class="data-menu">
                                <dl>
                                    <dt>저녁 메뉴</dt>
                                    <dd>김치볶음밥&amp;계란후라이</dd>
                                    <dd>유부된장국</dd>
                                    <dd>청파래오징어까스&amp;타르타르소스</dd>
                                    <dd>매콤볼어묵조림</dd>
                                    <dd>깍두기</dd>
                                    <dd>요구르트</dd>
                                </dl>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--// E : 급식메뉴 리스트 -->
            </div>
            <!--// E : 신설시작반 -->
        </div>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->