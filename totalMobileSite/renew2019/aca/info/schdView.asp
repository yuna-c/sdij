<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 시간표 -->
    <div class="content-layout">
        <h2 class="page-tit">시간표</h2>

        <% if true then '단과 대치 %>
        <div class="board-box">
            <!-- S : 전화문의 -->
            <h3 class="dep-tit">
                전화문의
            </h3>

            <dl class="list-phone">
                <dt>고3</dt>
                <dd>02-552-2373</dd>

                <dt>고1/고2</dt>
                <dd>02-554-2373</dd>

                <dt>수학스쿨</dt>
                <dd>02-552-2378</dd>

                <dt>영어스쿨</dt>
                <dd>02-559-2373</dd>

                <dt>특목센터</dt>
                <dd>02-565-2373</dd>
            </dl>
            <!--// E : 전화문의 -->

            <!-- S : 강좌예약 / 상담문자전용 -->
            <h3 class="dep-tit">
                강좌예약 / 상담문자전용
                <small>(학부모전화번호/학생/학교/강좌명)</small>
            </h3>

            <dl class="list-phone">
                <dt>고3</dt>
                <dd>010-5423-2378</dd>

                <dt>고1/고2</dt>
                <dd>010-7441-2373</dd>

                <dt>수학스쿨</dt>
                <dd>010-7442-2373</dd>

                <dt>영어스쿨</dt>
                <dd>010-4752-2372</dd>
            </dl>
            <!--// E : 강좌예약 / 상담문자전용 -->
        </div>

        <!-- S : 검색 영역 -->
        <div class="search-box">
            <h4>찾아보고 싶은 수업을 선택하세요</h4>

            <dl>
                <dt>학년 선택</dt>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>예비고3 이과</span>
                    </label>
                    <label class="radio">
                        <input type="radio">
                        <span>예비고3 문과</span>
                    </label>
                </dd>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>고2 (현 고1)</span>
                    </label>
                    <label class="radio">
                        <input type="radio">
                        <span>고2 (현 고1)</span>
                    </label>
                </dd>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>특목센터</span>
                    </label>
                    <label class="radio">
                        <input type="radio">
                        <span>중3 수학스쿨</span>
                    </label>
                </dd>

                <dt>과목선택</dt>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>2019 고3 (현 고2)</span>
                    </label>
                    <label class="radio">
                        <input type="radio">
                        <span>의대면접 및 자소서</span>
                    </label>
                </dd>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>수강료 게시료</span>
                    </label>
                </dd>
            </dl>

            <div class="board-btn txt-center">
                <button class="btn btn-lg btn-darkgray">검색</button>
            </div>
        </div>
        <!--// E : 검색 영역 -->
        <% else '단과 분당 %>
        <div class="board-box">
            <!-- S : 전화문의 -->
            <div>
                <h3 class="board-tit">
                    전화문의
                    <small>&nbsp;</small>
                </h3>

                <dl class="list-phone">
                    <dt>고3</dt>
                    <dd>031-718-2372</dd>
                </dl>
            </div>
            <!--// E : 전화문의 -->

            <!-- S : 강좌예약 / 상담문자전용 -->
            <div>
                <h3 class="board-tit">
                    강좌예약 / 상담문자전용
                    <small>(학부모전화번호/학생/학교/강좌명)</small>
                </h3>

                <dl class="list-phone">
                    <dt>고3</dt>
                    <dd>010-6620-2373</dd>
                </dl>
            </div>
            <!--// E : 강좌예약 / 상담문자전용 -->
        </div>

        <!-- S : 검색 영역 -->
        <div class="search-box">
            <h4>찾아보고 싶은 수업을 선택하세요</h4>

            <dl>
                <dt>학년 선택</dt>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>고3 이과(현 고2)</span>
                    </label>
                    <label class="radio">
                        <input type="radio">
                        <span>고3 문과 (현 고2)</span>
                    </label>
                </dd>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>고1</span>
                    </label>
                </dd>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>특목센터</span>
                    </label>
                    <label class="radio">
                        <input type="radio">
                        <span>중3 수학스쿨</span>
                    </label>
                </dd>

                <dt>과목선택</dt>
                <dd>
                    <label class="radio">
                        <input type="radio">
                        <span>2019 고3 (현 고2)</span>
                    </label>
                </dd>
            </dl>

            <div class="board-btn txt-center">
                <button class="btn btn-lg btn-black">검색</button>
            </div>
        </div>
        <!--// E : 검색 영역 -->
        <% end if %>

        <!-- S : 시간표 내용 -->
        <div class="board-btn txt-right">
            <a href="#" class="btn btn-lg">PDF 뷰어로 보기</a>
        </div>

        <div class="content-box mt30">
            <img src="https://via.placeholder.com/600/0000FF/808080/" alt="시간표 이미지">
        </div>
        <!--// E : 시간표 내용 -->
    </div>
    <!--// E : 시간표 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"--> 