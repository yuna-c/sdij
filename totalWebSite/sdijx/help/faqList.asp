<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 고객센터 > 자주묻는질문
' 모듈기능 : 시대인재 Digital > 고객센터 > 자주묻는질문
' 파 일 명 : faqList.asp
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
    <section id="container" class="faq-container">
        <div class="wide-layout">
            <div class="page-loc">
                <span>홈</span>
                <span>고객센터</span>
                <span class="color-black">자주묻는질문</span>
            </div>

            <h2 class="tit-dep1">
                <span class="tit">고객센터</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <!-- S : 검색 영역 -->
            <div class="sort-area sort-border">
                <!-- S : 질문 타입 -->
                <div class="form-toggle">
                    <label class="toggle-radio">
                        <input type="radio" id="faqType1" name="faqType">
                        <span>회원 정보</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="faqType2" name="faqType">
                        <span>강좌 안내</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="faqType3" name="faqType">
                        <span>배송 안내</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="faqType4" name="faqType">
                        <span>결제 취소/환불</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="faqType5" name="faqType">
                        <span>라이브 수강</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="faqType6" name="faqType">
                        <span>VOD 수강</span>
                    </label>
                    <label class="toggle-radio">
                        <input type="radio" id="faqType6" name="faqType">
                        <span>기타</span>
                    </label>
                </div>
                <!--// E : 질문 타입 -->

                <div class="sort-side btn-area">
                    <!-- S : 검색 input -->
                    <label class="input-search">
                        <input type="text" id="" name="" placeholder="검색어를 입력해주세요.">
                    </label>
                    <!--// E : 검색 input -->
                </div>
            </div>
            <!--// E : 검색 영역 -->

            <!-- S : FAQ 리스트 -->
            <div class="toggle-type2">
                <dl>
                    <% for i = 1 to 10 %>
                    <dt <% if i = 1 then %>class="selected"<% end if %>>
                        <div class="type-area">
                            추가자료
                        </div>

                        <div class="tit-area">
                            <a href="javascript:void(0)" class="tit">
                                프리패스로 가입하면 몇개의 기기에 접속해서 사용할 수 있을까요? 
                            </a>
                        </div>
                    </dt>
                    <dd <% if i = 1 then %>class="selected"<% end if %>>
                        <div class="content-area">
                            내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                        </div>
        
                        <!-- S : 첨부파일이 있을 경우 -->
                        <div class="file-area">
                            <span class="tit">첨부파일</span>
        
                            <a href="javascript:void(0)" class="btn"><i class="ico-file"></i> 파일명파일명.jpg</a>
                        </div>
                        <!--// E : 첨부파일이 있을 경우 -->
                    </dd>
                    <% next %>
                </dl>
            </div>

            <div class="btn-area txt-center mt30">
                <a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
            </div>
            <!--// E : FAQ 리스트 -->
        </div>

        <div class="help-center">
            <div class="wide-layout">
                <div>
                    <h4 class="tit-dep2">
                        찾으시는 내용이 없으세요?<br>
                        <a href="/totalWebSite/sdijx/help/qnaWrite.asp" class="tit">직접 문의하기</a>
                    </h4>
    
                    <a href="/totalWebSite/sdijx/help/qnaList.asp" class="btn btn-gray">더보기</a>
                </div>
                <div>
                    <h4 class="tit-dep2">
                        고객센터<br>
                        <a href="tel:1566-3444" class="tit">1566-3444</a>
                    </h4>

                    <p class="time">평일 10:00 ~ 18:00 (주말 / 공휴일 휴무)</p>
    
                    <a href="tel:1566-3444" class="btn btn-gray">전화하기</a>
                </div>
            </div>
        </div>
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->