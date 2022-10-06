<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 강좌 > 나의강좌
' 모듈기능 : 시대인재 Digital > 강좌 > 나의강좌
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
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/digital/common/css/lecture.css?ver=<%=now()%>" />
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <div class="content-layout">
            <h2 class="tit-dep1 tit-page">나의강좌</h2>

            <!-- S : 마이페이지 메뉴 -->
            <!--#include virtual="/totalWebSite/renew2019/digital/mypage/inc.lnb.asp"-->
            <!--// E : 마이페이지 메뉴 -->

            <!-- S : 강좌 리스트 -->
            <article class="lecture-list-article">
                <div class="sort-area">                   
                    <label class="select select-sort">
                        <select id="" name="">
                            <option hidden="" disabled="" selected="">과목선택</option>
                            <option value="">국어</option>
                            <option value="">수학</option>
                            <option value="">영어</option>
                            <option value="">사회탐구</option>
                            <option value="">과학탐구</option>
                            <option value="">수리논술</option>
                        </select>
                    </label>
                </div>

                <div class="list-type1">
                    <ul>
                        <% for i = 1 to 10 '최대 10개 이후 더보기 %>
                        <li><a href="/totalWebSite/renew2019/digital/lecture/detail.asp">
                            <span class="tit">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</span>

                            <span class="summary">
                                <span>국어</span>
                                <span>홍길동</span>
                                <span>수강기간 999일</span>
                            </span>

                            <span class="btn btn-black btn-M">자세히보기</span>
                        </a></li>
                        <% next %>
                    </ul>
                </div>

                <div class="list-btn">
                    <a href="javascirpt:void(0);" class="btn btn-M">더보기</a>
                </div>
            </article>
            <!--// E : 강좌 리스트 -->
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->