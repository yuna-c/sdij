<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 선생님 메인
' 모듈기능 : 시대인재 Digital > 선생님 메인
' 파 일 명 : main.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/teachers.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="main-container">
        <!-- S : 상단 공지 영역 -->
        <!--#include file="incNoti.asp"-->
        <!--// E : 상단 공지 영역 -->

        <div class="lnb-layout">
            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <div class="content-layout">
                <!-- S : 배너 영역 -->
                <div class="banner-content">
                    <!-- S : PC 이미지 -->
                    <span class="img-area rw-pc">
                        <img src="//img.sdij.com/sdijx/teachers/teacherID/pc/main_img.jpg" alt="홍길동 선생님 이미지">
                        <!-- img src="//img.sdij.com/sdijx/teachers/선생님ID/pc/main_img.jpg" -->
                    </span>
                    <!--// E : PC 이미지 -->

                    <!-- S : MOBILE 이미지 -->
                    <span class="img-area rw-mo">
                        <img src="//img.sdij.com/sdijx/teachers/teacherID/mobile/main_img.jpg" alt="홍길동 선생님 이미지">
                        <!-- img src="//img.sdij.com/sdijx/teachers/선생님ID/mobile/main_img.jpg" -->
                    </span>
                    <!--// E : MOBILE 이미지 -->

                    <a href="javascript:void(0)" onclick="fnOpenPopover('.popover-profile', this);" class="btn btn-profile">Profile</a>
                </div>
                <!--// E : 배너 영역 -->
                
                <!-- S : 커리큘럼 영역 -->
                <div class="curri-content">
                    <h4 class="tit-dep4">2022학년도 커리큘럼</h4>

                    <div class="swiper-container swiper-slide-type1">
                        <!-- S : PC/MOBILE 이미지 별도 -->
                        <div class="swiper-wrapper">
                            <a href="/totalWebSite/sdijx/teachers/main.asp" class="swiper-slide"><img src="https://via.placeholder.com/2060x960/000000/" alt="선생님 커리큘럼1"></a>
                            <a href="/totalWebSite/sdijx/teachers/main.asp" class="swiper-slide"><img src="https://via.placeholder.com/2060x960/000000/?text=slide2" alt="선생님 커리큘럼2"></a>
                            <a href="/totalWebSite/sdijx/teachers/main.asp" class="swiper-slide"><img src="https://via.placeholder.com/2060x960/000000/?text=slide3" alt="선생님 커리큘럼3"></a>
                        </div>
                        <!--// E : PC/MOBILE 이미지 별도 -->

                        <div class="swiper-pager"></div>

                        <div class="swiper-btn">
                            <a href="javascript:void(0);" class="btn-prev"><i class="ico-prev">이전 슬라이드</i></a>
                            <a href="javascript:void(0);" class="btn-next"><i class="ico-next">다음 슬라이드</i></a>
                        </div>
                    </div>
                </div>
                
                <!--// E : 커리큘럼 영역 -->

                <!-- S : 개설 강좌 -->
                <div class="lecture-content">
                    <h4 class="tit-dep4">개설 강좌</h4>

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

                        <a href="/totalWebSite/sdijx/teachers/lecList.asp" class="btn-cir btn-L btn-more"><i class="ico-plus">전체 강좌 보러가기</i></a>
                    </div>
                </div>
                <!--// E : 개설 강좌 -->

                <!-- S : 선생님 공지사항 -->
                <div class="notice-content">
                    <h4 class="tit-dep4">선생님 공지사항</h4>

                    <div class="list-board summary-board">
                        <ul>
                            <% for i = 1 to 3 '최대 공지글 3개 노출 %>
                            <li>
                                <a href="/totalWebSite/sdijx/teachers/noticeView.asp">
                                    <div class="visual-area">
                                        5/14
                                    </div>

                                    <div class="tit-area">
                                        <p>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</p>
                                        <p>제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목</p>
                                    </div>
                                    <div class="txt-area">
                                        개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다
                                    </div>

                                    <% if i = 1 then '첨부파일이 있을 경우 %>
                                    <i class="ico-file"></i>
                                    <% else '없을 경우 %>
                                    <i class="ico-next"></i>
                                    <% end if %>
                                </a>
                            </li>
                            <% next %>
                        </ul>

                        <a href="/totalWebSite/sdijx/teachers/noticeList.asp" class="btn-cir btn-L btn-more"><i class="ico-plus">전체 글 보러가기</i></a>
                    </div>
                </div>
                <!--// E : 선생님 공지사항 -->

                <!-- S : 학습자료실 -->
                <div class="data-content">
                    <h4 class="tit-dep4">학습자료실</h4>

                    <div class="list-board summary-board">
                        <ul>
                            <% for i = 1 to 3 '최대 학습자료실 글 3개 노출 %>
                            <li>
                                <a href="/totalWebSite/sdijx/teachers/dataView.asp">
                                    <div class="visual-area">
                                        5/14
                                    </div>

                                    <div class="tit-area">개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.</div>
                                    <div class="txt-area">개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 공지 꼭 확인해주세요.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다</div>

                                    <% if i = 1 then '첨부파일이 있을 경우 %>
                                    <i class="ico-file"></i>
                                    <% else '없을 경우 %>
                                    <i class="ico-next"></i>
                                    <% end if %>
                                </a>
                            </li>
                            <% next %>
                        </ul>

                        <a href="/totalWebSite/sdijx/teachers/dataList.asp" class="btn-cir btn-L btn-more"><i class="ico-plus">전체 글 보러가기</i></a>
                    </div>
                </div>
                <!--// E : 학습자료실 -->
            </div>
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
        <!-- S : 프로필 -->
        <div class="popover-container popover-profile">
            <div class="popover-header">
                <h3 class="tit-dep4">Profile</h3>

                <a href="javascript:void(0);" class="btn-close"><span>팝업 닫기</span></a>
            </div>

            <div class="popover-content">
                <!-- S : 프로필 내용 -->
                <h3 class="popover-tit">홍길동 선생님</h3>
                <div>
                    2019년 물리1 수능 정규반 417명 (대치 /목동)<br>
                    2019년 물리2 정규 (대치 /목동) 293명 (대기자 70명 이상)<br>
                    제주 과학고 /고려대 물리교육
                </div>
                <!--// E : 프로필 내용 -->

                <!-- S : 저서 내용 -->
                <h3 class="popover-tit">저서</h3>
                <div>
                    숨마쿰라우데 물리1<br>
                    타임 모의고사 물리1
                </div>
                <!--// E : 저서 내용 -->
            </div>

            <div class="popover-btn">
                <a href="javascript:void(0)" class="btn btn-black btn-close">닫기</a>
            </div>
        </div>
        <!--// E : 프로필 -->
    </div>
    <!--// E : popover -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->