<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 강좌 > 강좌리스트(케이스)
' 모듈기능 : 강좌 > 강좌리스트(케이스)
' 파 일 명 : all_lec_list.asp
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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container">
        <div class="content-layout">
            <!-- S : 학년 > 과목 > 단계 > 세부과목 -->
            <h4 class="dep3-tit">학년 &gt; 과목 &gt; 단계 &gt; 세부과목</h4>

            <div class="board-layout">
                <div class="dep2-tab pb0">
                    <!-- S : 학년 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">학년</option>
                            <option value="">고3</option>
                            <option value="">고1/2</option>
                        </select>
                    </div>
                    <!--// E : 학년 select -->

                    <!-- S : 과목 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">과목</option>
                            <option value="">전체</option>
                            <option value="">국어</option>
                            <option value="">수학</option>
                            <option value="">영어</option>
                            <option value="">물리</option>
                            <option value="">화학</option>
                            <option value="">생명과학</option>
                            <option value="">지구과학</option>
                        </select>
                    </div>
                    <!--// E : 과목 select -->
                </div>

                <div class="dep2-tab">
                    <!-- S : 단계 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">단계</option>
                            <option value="">전체</option>
                            <option value="">개념완성</option>
                            <option value="">서바이벌</option>
                            <option value="">리바이벌</option>
                            <option value="">ATG</option>
                        </select>
                    </div>
                    <!--// E : 단계 select -->

                    <!-- S : 세부과목 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">세부과목</option>
                            <option value="">전체</option>
                            <option value="">문법</option>
                            <option value="">문학</option>
                            <option value="">비문학</option>
                        </select>
                    </div>
                    <!--// E : 세부과목 select -->
                </div>

                <!-- S : 강좌 리스트 -->
                <div class="board-lec">
                    <h4 class="lec-tit">
                        <span>[카테고리]</span> 카테고리명 관리자강사별 관리
                    </h4>

                    <table>
                        <tbody>
                            <% for i = 1 to 5 %>
                            <tr>
                                <td class="lec-area">
                                    <div class="data-sticker">
                                        <span class="sticker-lec sticker-red">new</span>
                                        <span class="sticker-lec sticker-orange">best</span>
                                        <span class="sticker-lec sticker-green">추천</span>
                                        <span class="sticker-lec sticker-gray">완강</span>
                                    </div>
                                    <div class="data-tit">
                                        <a href="#">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</option>
                                    </div>
                                    <div class="data-info">
                                        <span>김은양</span>
                                        <span>고3 / N수개념</span>
                                    </div>
                                </td>

                                <% if i = 1 then '교재 PDF 제공 시  %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <div>
                                        <span class="tit">교재</span>
                                        <span class="price">PDF 제공</span>
                                    </div>
                                </td>
                                <% else %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">교재</span>
                                        <span class="price">
                                            100,000원
                                            <em>(총 3권)</em>
                                        </span>
                                    </label>
                                </td>
                                <% end if %>

                                <td class="btn-area">
                                    <input type="button" class="btn" value="OT">
                                    <input type="button" class="btn" value="맛보기">
                                    <input type="button" class="btn" value="교재샘플">
                                </td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 강좌 리스트 -->

                <div class="board-btn flex-area">
                    <a href="#" class="btn btn-lightgray">장바구니</a>
                    <a href="#" class="btn btn-black">바로구매</a>
                </div>
            </div>
            <!--// E : 학년 > 과목 > 단계 > 세부과목 -->

            <!-- S : 학년 > 단계 > 과목 > 세부과목 -->
            <h4 class="dep3-tit">학년 &gt; 단계 &gt; 과목 &gt; 세부과목</h4>

            <div class="board-layout">
                <div class="dep2-tab pb0">
                    <!-- S : 학년 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">학년</option>
                            <option value="">고3</option>
                            <option value="">고1/2</option>
                        </select>
                    </div>
                    <!--// E : 학년 select -->

                    <!-- S : 단계 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">단계</option>
                            <option value="">전체</option>
                            <option value="">개념완성</option>
                            <option value="">서바이벌</option>
                            <option value="">리바이벌</option>
                            <option value="">ATG</option>
                        </select>
                    </div>
                    <!--// E : 단계 select -->
                </div>

                <div class="dep2-tab">
                    <!-- S : 과목 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">과목</option>
                            <option value="">전체</option>
                            <option value="">국어</option>
                            <option value="">수학</option>
                            <option value="">영어</option>
                            <option value="">물리</option>
                            <option value="">화학</option>
                            <option value="">생명과학</option>
                            <option value="">지구과학</option>
                        </select>
                    </div>
                    <!--// E : 과목 select -->

                    <!-- S : 세부과목 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">세부과목</option>
                            <option value="">전체</option>
                            <option value="">문법</option>
                            <option value="">문학</option>
                            <option value="">비문학</option>
                        </select>
                    </div>
                    <!--// E : 세부과목 select -->
                </div>

                <!-- S : 강좌 리스트 -->
                <div class="board-lec">
                    <h4 class="lec-tit">
                        <span>[카테고리]</span> 카테고리명 관리자강사별 관리
                    </h4>

                    <table>
                        <tbody>
                            <% for i = 1 to 5 %>
                            <tr>
                                <td class="lec-area">
                                    <div class="data-sticker">
                                        <span class="sticker-lec sticker-red">new</span>
                                        <span class="sticker-lec sticker-orange">best</span>
                                        <span class="sticker-lec sticker-green">추천</span>
                                        <span class="sticker-lec sticker-gray">완강</span>
                                    </div>
                                    <div class="data-tit">
                                        <a href="#">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</option>
                                    </div>
                                    <div class="data-info">
                                        <span>김은양</span>
                                        <span>고3 / N수개념</span>
                                    </div>
                                </td>

                                <% if i = 1 then '교재 PDF 제공 시  %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <div>
                                        <span class="tit">교재</span>
                                        <span class="price">PDF 제공</span>
                                    </div>
                                </td>
                                <% else %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">교재</span>
                                        <span class="price">
                                            100,000원
                                            <em>(총 3권)</em>
                                        </span>
                                    </label>
                                </td>
                                <% end if %>

                                <td class="btn-area">
                                    <input type="button" class="btn" value="OT">
                                    <input type="button" class="btn" value="맛보기">
                                    <input type="button" class="btn" value="교재샘플">
                                </td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 강좌 리스트 -->

                <div class="board-btn flex-area">
                    <a href="#" class="btn btn-lightgray">장바구니</a>
                    <a href="#" class="btn btn-black">바로구매</a>
                </div>
            </div>
            <!--// E : 학년 > 단계 > 과목 > 세부과목 -->

            <!-- S : 선생님 > 세부과목 > 단계 -->
            <h4 class="dep3-tit">선생님 &gt; 세부과목 &gt; 단계</h4>

            <div class="board-layout">
                <div class="dep2-tab pb0">
                    <!-- S : 선생님 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">선생님</option>
                            <option value="">김은양</option>
                            <option value="">강기원</option>
                            <option value="">박종민</option>
                            <option value="">엄소연</option>
                        </select>
                    </div>
                    <!--// E : 선생님 select -->
                </div>

                <div class="dep2-tab">
                    <!-- S : 세부과목 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">세부과목</option>
                            <option value="">전체</option>
                            <option value="">문법</option>
                            <option value="">문학</option>
                            <option value="">비문학</option>
                        </select>
                    </div>
                    <!--// E : 세부과목 select -->

                    <!-- S : 단계 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">단계</option>
                            <option value="">전체</option>
                            <option value="">개념완성</option>
                            <option value="">서바이벌</option>
                            <option value="">리바이벌</option>
                            <option value="">ATG</option>
                        </select>
                    </div>
                    <!--// E : 단계 select -->
                </div>

                <!-- S : 강좌 리스트 -->
                <div class="board-lec">
                    <h4 class="lec-tit">
                        <span>[카테고리]</span> 카테고리명 관리자강사별 관리
                    </h4>

                    <table>
                        <tbody>
                            <% for i = 1 to 5 %>
                            <tr>
                                <td class="lec-area">
                                    <div class="data-sticker">
                                        <span class="sticker-lec sticker-red">new</span>
                                        <span class="sticker-lec sticker-orange">best</span>
                                        <span class="sticker-lec sticker-green">추천</span>
                                        <span class="sticker-lec sticker-gray">완강</span>
                                    </div>
                                    <div class="data-tit">
                                        <a href="#">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</option>
                                    </div>
                                    <div class="data-info">
                                        <span>김은양</span>
                                        <span>고3 / N수개념</span>
                                    </div>
                                </td>

                                <% if i = 1 then '교재 PDF 제공 시  %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <div>
                                        <span class="tit">교재</span>
                                        <span class="price">PDF 제공</span>
                                    </div>
                                </td>
                                <% else %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">교재</span>
                                        <span class="price">
                                            100,000원
                                            <em>(총 3권)</em>
                                        </span>
                                    </label>
                                </td>
                                <% end if %>

                                <td class="btn-area">
                                    <input type="button" class="btn" value="OT">
                                    <input type="button" class="btn" value="맛보기">
                                    <input type="button" class="btn" value="교재샘플">
                                </td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 강좌 리스트 -->

                <div class="board-btn flex-area">
                    <a href="#" class="btn btn-lightgray">장바구니</a>
                    <a href="#" class="btn btn-black">바로구매</a>
                </div>
            </div>
            <!--// E : 선생님 > 세부과목 > 단계 -->

            <!-- S : 선생님 > 단계 > 세부과목 -->
            <h4 class="dep3-tit">선생님 &gt; 단계 &gt; 세부과목</h4>

            <div class="board-layout">
                <div class="dep2-tab pb0">
                    <!-- S : 선생님 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">선생님</option>
                            <option value="">김은양</option>
                            <option value="">강기원</option>
                            <option value="">박종민</option>
                            <option value="">엄소연</option>
                        </select>
                    </div>
                    <!--// E : 선생님 select -->
                </div>

                <div class="dep2-tab">
                    <!-- S : 단계 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">단계</option>
                            <option value="">전체</option>
                            <option value="">개념완성</option>
                            <option value="">서바이벌</option>
                            <option value="">리바이벌</option>
                            <option value="">ATG</option>
                        </select>
                    </div>
                    <!--// E : 단계 select -->

                    <!-- S : 세부과목 select -->
                    <div class="form-select">
                        <select>
                            <option hidden="" disabled="" selected="">세부과목</option>
                            <option value="">전체</option>
                            <option value="">문법</option>
                            <option value="">문학</option>
                            <option value="">비문학</option>
                        </select>
                    </div>
                    <!--// E : 세부과목 select -->
                </div>

                <!-- S : 강좌 리스트 -->
                <div class="board-lec">
                    <h4 class="lec-tit">
                        <span>[카테고리]</span> 카테고리명 관리자강사별 관리
                    </h4>

                    <table>
                        <tbody>
                            <% for i = 1 to 5 %>
                            <tr>
                                <td class="lec-area">
                                    <div class="data-sticker">
                                        <span class="sticker-lec sticker-red">new</span>
                                        <span class="sticker-lec sticker-orange">best</span>
                                        <span class="sticker-lec sticker-green">추천</span>
                                        <span class="sticker-lec sticker-gray">완강</span>
                                    </div>
                                    <div class="data-tit">
                                        <a href="#">서바이벌 실전모의 (2학기 17회) + EBSiency (서바이벌 주간주간주간주간주간주간지)</option>
                                    </div>
                                    <div class="data-info">
                                        <span>김은양</span>
                                        <span>고3 / N수개념</span>
                                    </div>
                                </td>

                                <% if i = 1 then '교재 PDF 제공 시  %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <div>
                                        <span class="tit">교재</span>
                                        <span class="price">PDF 제공</span>
                                    </div>
                                </td>
                                <% else %>
                                <td class="price-area">
                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">강좌</span>
                                        <span class="price">100,000원</span>
                                    </label>

                                    <label class="form-checkbox">
                                        <input type="checkbox">
                                        <span class="ico ico-checkbox"></span>
                                        <span class="tit">교재</span>
                                        <span class="price">
                                            100,000원
                                            <em>(총 3권)</em>
                                        </span>
                                    </label>
                                </td>
                                <% end if %>

                                <td class="btn-area">
                                    <input type="button" class="btn" value="OT">
                                    <input type="button" class="btn" value="맛보기">
                                    <input type="button" class="btn" value="교재샘플">
                                </td>
                            </tr>
                            <% next %>
                        </tbody>
                    </table>
                </div>
                <!--// E : 강좌 리스트 -->

                <div class="board-btn flex-area">
                    <a href="#" class="btn btn-lightgray">장바구니</a>
                    <a href="#" class="btn btn-black">바로구매</a>
                </div>
            </div>
            <!--// E : 선생님 > 단계 > 세부과목 -->
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
