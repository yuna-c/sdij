<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 나의 선생님
' 모듈기능 : 시대인재 Digital > 나의 선생님
' 파 일 명 : teachrtList.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/mypage.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="teacher-container">
        <div class="content-layout">
            <h2 class="tit-dep1">
                <span class="tit">마이페이지</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <!-- S : 공지사항 -->
            <div class="board-content">
                <h4 class="tit-dep4">선생님 공지사항</h4>

                <div class="table-type1 table-notice">
                    <ul>
                        <% for i = 1 to 5 '리스트 최대 5개 노출 이후 더보기 버튼 클릭 시 노출 %>
                        <li>
                            <div class="num-area"><% = i %></div>

                            <div class="tit-area">
                                <p class="txt">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</p>

                                <a href="/totalWebSite/sdijx/teachers/noticeView.asp" class="tit">
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
            </div>
            <!--// E : 공지사항 -->

            <!-- S : 나의 학습질문 / 답변  -->
            <div class="board-content">
                <h4 class="tit-dep4">나의 학습질문 / 답변</h4>

                <div class="table-type1">
                    <ul>
                        <% for i = 1 to 5 '리스트 최대 5개 노출 이후 더보기 버튼 클릭 시 노출 %>
                        <li>
                            <div class="type-area">
                                <% if i = 1 then '답변 대기중 일 경우 %>
                                <i class="ico-ellipsis"></i> 답변대기중
                                <% else %>
                                <i class="ico-check"></i> 답변완료
                                <% end if %>
                            </div>

                            <div class="tit-area">
                                <a href="/totalWebSite/sdijx/teachers/qnaView.asp" class="tit">
                                    질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요

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
            </div>
            <!--// E : 나의 학습질문 / 답변  -->
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->