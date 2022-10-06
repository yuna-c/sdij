<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 선생님 게시판 > 학습질문 답변 리스트
' 모듈기능 : 시대인재 Digital > 선생님 게시판 > 학습질문 답변 리스트
' 파 일 명 : qnaList.asp
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
    <section id="container" class="board-container">
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
                    <span class="color-black">학습질문 / 답변</span>
                </div>

                <h2 class="tit-dep1">
                    <span class="tit">
                        학습질문 / 답변
                        <em class="sub">346</em>
                    </span>
                    <small>홍길동 선생님 수업에 대한 궁금한 점은 언제든 문의해 주세요.</small>

                    <a href="qnaWrite.asp" class="btn-cir btn-L btn-black btn-side"><i class="ico-plus-w">질문하기</i></a>
                </h2>

                <!-- S : 학습질문 / 답변 -->
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
                                <% if i = 1 then '답변 대기중 일 경우 %>
                                <i class="ico-ellipsis"></i> 답변대기중
                                <% else %>
                                <i class="ico-check"></i> 답변완료
                                <% end if %>
                            </div>

                            <% if i = 1 then '비밀글 일 경우 %>
                            <div class="tit-area">
                                <a href="javascript:void(0);" onclick="fnOpenModal('.modal-password');" class="tit">
                                    <i class="ico-lock"></i><!-- 비밀글 일 경우 노출 -->

                                    질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요

                                    <i class="ico-new"></i><!-- 신규게시글 일 경우 노출 -->
                                </a>
                            </div>
                            <% else '일반 글 일 경우 %>
                            <div class="tit-area">
                                <a href="qnaView.asp" class="tit">
                                    질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요 질문이 있어요

                                    <i class="ico-new"></i><!-- 신규게시글 일 경우 노출 -->
                                </a>
                            </div>
                            <% end if %>

                            <div class="name-area">홍길동</div>
                            <div class="date-area">2020/01/01</div>
                        </li>
                        <% next %>
                    </ul>
                </div>

                <div class="btn-area txt-center mt30">
                    <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
                </div>
                <!--// E : 학습질문 / 답변 -->

                <!-- S : 등록된 게시글이 없을 경우 -->
                <div class="no-data">
                    <i class="ico-alert"></i>
                    등록된 게시글이 없습니다.
                </div>
                <!--// E : 등록된 게시글이 없을 경우 -->
            </div>
        </div>        
    </section>
    <!--// E : container -->

    <!-- S : modal -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 비밀번호 입력 -->
        <div class="modal-container modal-S modal-password">
            <div class="modal-content">
                <h3 class="modal-tit">
                    <i class="ico-lock"></i>

                    비공개 글입니다.<br>
                    비밀번호를 입력하세요.
                </h3>

                <label class="input-text mt20">
                    <input type="password" placeholder="비밀번호 입력">
                </label>
            </div>

            <div class="modal-btn">
                <a href="javascript:void(0)" onclick="fnCloseModal('.modal-password')" class="btn btn-gray">닫기</a>
                <a href="javascript:void(0)" onclick="fnCloseModal('.modal-password'); location.href='qnaView.asp'" class="btn btn-black">확인</a>
            </div>
        </div>
        <!--// E : 비밀번호 입력 -->
    </div>
    <!--// E : modal -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->