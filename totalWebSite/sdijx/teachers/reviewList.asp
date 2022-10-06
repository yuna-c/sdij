<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 선생님 게시판 > 수강후기 
' 모듈기능 : 시대인재 Digital > 선생님 게시판 > 수강후기
' 파 일 명 : review.asp
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
    <section id="container" class="review-container">
        <!-- S : 상단 공지 영역 -->
        <!--#include file="incNoti.asp"-->
        <!--// E : 상단 공지 영역 -->

        <div class="lnb-layout">
            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <div class="content-layout">
                <div class="page-loc">
                    <span>선생님 홈</span>
                    <span class="color-black">수강후기</span>
                </div>

                <h2 class="tit-dep1">
                    <span class="tit">
                        수강후기
                        <em class="sub">346</em>
                    </span>
                    <small>홍길동 선생님의 수업 후기를 남겨주세요.</small>

					<a href="reviewWrite.asp" class="btn-cir btn-L btn-black btn-side"><i class="ico-plus-w">질문하기</i></a>
                </h2>

                <!-- S : 수강후기 -->
                <div class="sort-area">
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

                <div class="table-type1">
                    <ul>
                        <% for i = 1 to 10 %>
                        <li>
							 <div class="type-area">
                                <i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star"></i>
								<i class="ico-star"></i>
                            </div>

                            <div class="tit-area">
                                <a href="reviewView.asp" class="tit">
                                    너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요!

                                    <i class="ico-new"></i><!-- 신규게시글 일 경우 노출 -->
                                </a>
                            </div>

                            <div class="name-area">홍길동</div>
                            <div class="date-area">2020/04/07</div>
                        </li>
                        <% next %>
                    </ul>
                </div>

                <div class="btn-area txt-center mt30">
                    <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
                </div>
                <!--// E : 수강후기 -->

                <!-- S : 등록된 수강후기가 없을 경우 -->
                <div class="no-data">
                    <i class="ico-alert"></i>
                    등록된 수강후기가 없습니다.
                </div>
                <!--// E : 등록된 수강후기가 없을 경우 -->
            </div>
        </div>    
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->