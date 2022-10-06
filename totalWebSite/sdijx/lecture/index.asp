<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 강좌 메인
' 모듈기능 : 시대인재 Digital > 강좌 메인
' 파 일 명 : index.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/lecture.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="index-container mt40">
        <div class="wide-layout">
            <h2 class="tit-dep1">
                <span class="tit">강좌</span>
            </h2>

            <!-- S : 검색 영역 -->
            <div class="sort-area sort-border">
                <!-- S : 필터 -->
                <div class="filter-area">
                    <a href="javascript:void(0)" onclick="fnOpenPopover('.popover-grade', this);" class="btn btn-grade">
                        단계
                        <span class="num"></span>
                    </a>
                    <a href="javascript:void(0)" onclick="fnOpenPopover('.popover-curri', this);" class="btn btn-curri">
                        진행(월)
                        <span class="num"></span>
                    </a>
                    <a href="javascript:void(0)" onclick="fnOpenPopover('.popover-subject', this);" class="btn btn-subject">
                        과목
                        <span class="num"></span>
                    </a>
                </div>
                <!--// E : 필터 -->

                <div class="sort-side btn-area">
                    <!-- S : 검색 input -->
                    <label class="input-search">
                        <input type="text" id="" name="" placeholder="검색어를 입력해주세요.">
                    </label>
                    <!--// E : 검색 input -->

                    <!-- S : 리스트 정렬 -->
                    <label class="select select-sort">
                        <select>
                            <option hidden>정렬</option>
                            <option value="">최신순</option>
                        </select>
                    </label>
                    <!--// E : 리스트 정렬 -->
                </div>
            </div>
            <!--// E : 검색 영역 -->

            <!-- S : 배너 영역 -->
            <div class="banner-content">
                <div class="swiper-container swiper-slide-type1">
                    <!-- S : PC/MOBILE 이미지 별도 -->
                    <div class="swiper-wrapper">
                        <a href="#" class="swiper-slide"><img src="https://via.placeholder.com/2480x272/000000/" alt="강좌 배너1"></a>
                        <a href="#" class="swiper-slide"><img src="https://via.placeholder.com/2480x272/000000/?text=banner2" alt="강좌 배너2"></a>
                        <a href="#" class="swiper-slide"><img src="https://via.placeholder.com/2480x272/000000/?text=banner3" alt="강좌 배너3"></a>
                    </div>
                    <!--// E : PC/MOBILE 이미지 별도 -->

                    <div class="swiper-pager"></div>

                    <div class="swiper-btn">
                        <a href="javascript:void(0);" class="btn-prev"><i class="ico-prev">이전 슬라이드</i></a>
                        <a href="javascript:void(0);" class="btn-next"><i class="ico-next">다음 슬라이드</i></a>
                    </div>
                </div>
            </div>
            <!--// E : 배너 영역 -->

            <!-- S : 과목 배너 영역 -->
            <div class="subject-content">
                <h3 class="tit-dep4">과목</h3>

                <ul class="list-subject">
                    <li><a href="javascript:void(0);">
                        <span class="img-area"><img src="//img.sdij.com/sdijx/lecture/img_subject1.png" alt="국어 강좌 보러 가기"></span>
                        <span class="tit-area">
                            <em class="txt-line">국어</em>
                        </span>
                    </a></li>

                    <li><a href="javascript:void(0);">
                        <span class="img-area"><img src="//img.sdij.com/sdijx/lecture/img_subject2.png" alt="영어 강좌 보러 가기"></span>
                        <span class="tit-area">
                            <em class="txt-line">영어</em>
                        </span>
                    </a></li>

                    <li><a href="javascript:void(0);">
                        <span class="img-area"><img src="//img.sdij.com/sdijx/lecture/img_subject3.png" alt="수학(가) 강좌 보러 가기"></span>
                        <span class="tit-area">
                            <em class="txt-line">수학(가)</em>
                        </span>
                    </a></li>

                    <li><a href="javascript:void(0);">
                        <span class="img-area"><img src="//img.sdij.com/sdijx/lecture/img_subject4.png" alt="수학(나) 강좌 보러 가기"></span>
                        <span class="tit-area">
                            <em class="txt-line">수학(나)</em>
                        </span>
                    </a></li>

                    <li><a href="javascript:void(0);">
                        <span class="img-area"><img src="//img.sdij.com/sdijx/lecture/img_subject5.png" alt="지구과학 강좌 보러 가기"></span>
                        <span class="tit-area">
                            <em class="txt-line">지구과학</em>
                        </span>
                    </a></li>

                    <li><a href="javascript:void(0);">
                        <span class="img-area"><img src="//img.sdij.com/sdijx/lecture/img_subject6.png" alt="생명과학 강좌 보러 가기"></span>
                        <span class="tit-area">
                            <em class="txt-line">생명과학</em>
                        </span>
                    </a></li>
                </ul>
            </div>
            <!--// E : 과목 배너 영역 -->

            <!-- S : 새로운 강좌 -->
            <div class="lecture-content">
                <h4 class="tit-dep4">새로운 강좌</h4>

                <div class="list-card summary-card">
                    <ul>
                        <% for i = 1 to 3 '최대 강좌 3개 노출 %>
                        <% if i = 1 then '완강예정일 경우 %>
                        <li>
                            <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                            <a href="/totalWebSite/sdijx/lecture/view.asp">
                                <div class="hash-area">
                                    <span class="sticker-red">LIVE</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>완강예정일 2020/01/01</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>

                        <% else '완강일 경우 %>
                        <li>
                            <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                            <a href="/totalWebSite/sdijx/lecture/view.asp">
                                <div class="hash-area">
                                    <span class="sticker-yellow">완강</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>52강 완강</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>
                        <% end if %>
                        <% next %>
                    </ul>

                    <a href="#" class="btn-cir btn-L btn-more"><i class="ico-plus">전체 강좌 보러가기</i></a>
                </div>
            </div>
            <!--// E : 새로운 강좌 -->

            <!-- S : 최근 인기 강좌 -->
            <div class="lecture-content best-lecture-content">
                <h4 class="tit-dep4">최근 인기강좌</h4>

                <div class="list-card summary-card">
                    <ul>
                        <% for i = 1 to 6 '최대 강좌 6개 노출 %>
                        <% if i = 1 then '완강예정일 경우 %>
                        <li>
                            <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                            <a href="/sdijx/lecture/view.asp">
                                <div class="hash-area">
                                    <span class="sticker-red">LIVE</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>완강예정일 2020/01/01</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>

                        <% else '완강일 경우 %>
                        <li>
                            <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                            <a href="/totalWebSite/sdijx/lecture/view.asp">
                                <div class="hash-area">
                                    <span class="sticker-yellow">완강</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>52강 완강</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>
                        <% end if %>
                        <% next %>
                    </ul>

                    <a href="javascript:void(0)" class="btn-cir btn-L btn-more"><i class="ico-plus">전체 강좌 보러가기</i></a>
                </div>
            </div>
            <!--// E : 최근 인기 강좌 -->

            <!-- S : 검색 결과 -->
            <div class="search-content">
                <% if true then '검색어 검색 시 %>
                <h4 class="tit-dep5"><span class="tit">'수학 서바이벌'</span>에 대한 <span class="tit">353개</span>의 강좌</h4>
                <% else '필터 검색 시 %>
                <h4 class="tit-dep5"><span class="tit">353개</span>의 강좌</h4>
                <% end if %>

                <div class="list-card">
                    <ul>
                        <% for i = 1 to 12 '최대 강좌 12개 노출 이후 더보기 버튼 클릭 수 노출 %>
                        <% if i = 1 then '완강예정일 경우 %>
                        <li>
                            <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                            <a href="/totalWebSite/sdijx/lecture/view.asp">
                                <div class="hash-area">
                                    <span class="sticker-red">LIVE</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>완강예정일 2020/01/01</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>

                        <% else '완강일 경우 %>
                        <li>
                            <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                            <a href="/totalWebSite/sdijx/lecture/view.asp">
                                <div class="hash-area">
                                    <span class="sticker-yellow">완강</span>
                                    <span>토</span>
                                    <span>10:00 ~ 12:00</span>
                                </div>

                                <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                                <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                                <div class="info-area">
                                    <p>김은영 선생님</p>

                                    <p class="color-gray">
                                        <span>수강기간 23일</span>
                                        <span>52강 완강</span>
                                    </p>

                                    <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                                </div>
                            </a>
                        </li>
                        <% end if %>
                        <% next %>
                    </ul>
                </div>

                <div class="btn-area txt-center">
                    <a href="javascript:void(0)" class="btn-cir btn-L btn-more"><i class="ico-down">검색 결과 리스트 더보기</i></a>
                </div>
            </div>
            <!--// E : 검색 결과 -->
        </div>
    </section>
    <!--// E : container -->

    <!-- S : modal -->        
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 장바구니 확인 -->
        <div class="modal-container modal-S modal-cart">
            <div class="modal-content">
                <h3 class="modal-tit">
                    <i class="ico-cart"></i>

                    선택하신 상품이 <span class="txt-line">장바구니에 담겼습니다.</span><br>
                    장바구니로 이동하시겠습니까?
                </h3>
            </div>

            <div class="modal-btn">
                <a href="javascript:void(0)" onclick="fnCloseModal('.modal-cart')" class="btn btn-gray">닫기</a>
                <a href="javascript:void(0)" onclick="fnCloseModal('.modal-cart'); location.href='/totalWebSite/sdijx/pay/cart.asp'" class="btn btn-black">장바구니 확인</a>
            </div>
        </div>
        <!--// E : 장바구니 확인 -->
    </div>
    <!--// E : modal -->

    <!-- S : popover --> 
    <div class="popover-wrap">
        <!-- S : 필터(단계) -->
        <div class="popover-container popover-grade">
            <div class="popover-header">
                <h3 class="tit-dep4">필터</h3>

                <a href="javascript:void(0);" class="btn-close"><span>팝업 닫기</span></a>
            </div>

            <div class="popover-content">
                <h3 class="popover-tit">단계</h3>

                <div class="filter-check">
                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
                        <i class="ico-checkbox"></i>
                        기초
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
                        <i class="ico-checkbox"></i>
                        개념
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
                        <i class="ico-checkbox"></i>
                        문제풀이
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
                        <i class="ico-checkbox"></i>
                        서바이벌
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
                        <i class="ico-checkbox"></i>
                        파이널
                    </label>
                </div>
            </div>

            <div class="popover-btn">
                <a href="javascript:void(0)" class="btn btn-black btn-submit">저장</a>
            </div>
        </div>
        <!--// E : 필터(단계) -->

        <!-- S : 필터(진행(월)) -->
        <div class="popover-container popover-curri">
            <div class="popover-header">
                <h3 class="tit-dep4">필터</h3>

                <a href="javascript:void(0);" class="btn-close"><span>팝업 닫기</span></a>
            </div>

            <div class="popover-content">
                <h3 class="popover-tit">진행(월)</h3>

                <div class="filter-check row row-col2">
                    <label class="input-checkbox w100">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')" class="check-all">
                        <i class="ico-checkbox"></i>
                        전체
                    </label>

                    <% for i = 1 to 12 %>
                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
                        <i class="ico-checkbox"></i>
                        <%= i %>월
                    </label>
                    <% next %>
                </div>
            </div>

            <div class="popover-btn">
                <a href="javascript:void(0)" class="btn btn-black btn-submit">저장</a>
            </div>
        </div>
        <!--// E : 필터(진행(월)) -->

        <!-- S : 필터(과목) -->
        <div class="popover-container popover-subject">
            <div class="popover-header">
                <h3 class="tit-dep4">필터</h3>

                <a href="javascript:void(0);" class="btn-close"><span>팝업 닫기</span></a>
            </div>

            <div class="popover-content">
                <h3 class="popover-tit">과목</h3>

                <div class="filter-check row row-col2">
                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
                        <i class="ico-checkbox"></i>
                        국어
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
                        <i class="ico-checkbox"></i>
                        영어
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
                        <i class="ico-checkbox"></i>
                        수학
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
                        <i class="ico-checkbox"></i>
                        과탐
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
                        <i class="ico-checkbox"></i>
                        사탐
                    </label>

                    <label class="input-checkbox">
                        <input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
                        <i class="ico-checkbox"></i>
                        한국사
                    </label>
                </div>
            </div>

            <div class="popover-btn">
                <a href="javascript:void(0)" class="btn btn-black btn-submit">저장</a>
            </div>
        </div>
        <!--// E : 필터(과목) -->
    </div>

    <script>
        // 검색 필터 클릭 시 
        function fnSearchFilter(obj, btnObj){
            var $obj = $(obj);
            var $btnObj = $(btnObj);
    
            // 월별 전체 클릭 시
            if( $obj.hasClass('check-all') === true ){
                var $checked = $obj.prop('checked');
                console.log($obj.parent().parent());
                $obj.parent().parent().find('input[type="checkbox"]').prop('checked', $checked);
            }
    
            // 필터 개수 표기
            var num = $obj.parents('.popover-container').find('input[type="checkbox"]:checked').not('.check-all').length;
    
            if( num === 0 ){
                $btnObj.removeClass('selected');
            }else{
                $btnObj.addClass('selected').children('.num').text(num);
            }
        }
    </script>
    <!--// E : popover -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->