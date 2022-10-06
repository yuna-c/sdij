<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 고객센터 > 공지사항
' 모듈기능 : 시대인재 Digital > 고객센터 > 공지사항
' 파 일 명 : noticeList.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/help.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="notice-container">
        <div class="wide-layout">
            <div class="page-loc">
                <span>홈</span>
                <span>고객센터</span>
                <span class="color-black">공지사항</span>
            </div>

            <h2 class="tit-dep1">
                <span class="tit">고객센터</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <!-- S : 공지사항 리스트 -->
            <div class="sort-area sort-border">
                <label class="input-search">
                    <input type="text" id="" name="" placeholder="검색어를 입력해주세요.">
                </label>

                <div class="sort-side">
                    <label class="select select-sort">
                        <select>
                            <option hidden>정렬</option>
                            <option value="">최신순</option>
                        </select>
                    </label>
                </div>
            </div>

            <div class="table-type1 table-notice">
                <ul>
                    <% for i = 1 to 10 '리스트 최대 10개 노출 이후 더보기 버튼 클릭 시 노출 %>
                    <li>
                        <div class="num-area"><% = i %></div>

                        <div class="tit-area">
                            <a href="noticeView.asp" class="tit">
                                신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내

                                <i class="ico-new"></i><!-- 신규게시글 일 경우 노출 -->
                            </a>
                        </div>

                        <div class="name-area">홍길동</div>
                        <div class="date-area">2020/01/01</div>
                    </li>
                    <% next %>
                </ul>
            </div>

            <div class="btn-area txt-center mt30">
                <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
            </div>
            <!--// E : 공지사항 리스트 -->
        </div>
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->