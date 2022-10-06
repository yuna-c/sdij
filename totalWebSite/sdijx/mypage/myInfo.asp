<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 내정보관리
' 모듈기능 : 시대인재 Digital > 내정보관리
' 파 일 명 : myInfo.asp
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
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="myinfo-container">
        <div class="content-layout">
            <h2 class="tit-dep1">
                <span class="tit">마이페이지</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <div class="tab-type2 border-none">
                <ul>
                    <li class="selected"><a href="javascript:void(0);">내정보관리</a></li>
                    <li><a href="myPw.asp">비밀번호관리</a></li>
                    <li><a href="myDelv.asp">배송지관리</a></li>
                </ul>
            </div>

            <div class="tab-content tab-on">
                <form id="myInfoForm" action="" method="">
                    <div class="form-type1">
                        <dl>
                            <dt>아이디</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="memId" id="memId" value="abcd1234" disabled>
                                </label>
                            </dd>

                            <dt>이름</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="memName1" id="memName1" value="홍길동" disabled>
                                </label>
                            </dd>

                            <dt>휴대전화번호</dt>
                            <dd class="row">
                                <span class="col-25">
                                    <label class="input-text">
                                        <input type="tel" name="memHp1" id="memHp1" minlength="3" maxlength="4" value="010" disabled>
                                    </label>
                                </span>

                                <span class="col-25">
                                    <label class="input-text">
                                        <input type="tel" name="memHp2" id="memHp2" minlength="3" maxlength="4" value="1234" disabled>
                                    </label>
                                </span>

                                <span class="col-25">
                                    <label class="input-text">
                                        <input type="tel" name="memHp3" id="memHp3" minlength="4" maxlength="4" value="5678" disabled>
                                    </label>
                                </span>

                                <span class="col-25">
                                    <a href="javascript:void(0);" onclick="fnOpenModal('.modal-hp')" class="btn btn-gray btn-L">수정하기</a>
                                </span>
                            </dd>

                            <dt>이메일 주소</dt>
                            <dd class="row">
                                <span class="col-75">
                                    <label class="input-text">
                                        <input type="email" name="memEmail" id="memEmail" value="abc@email.com" disabled>
                                    </label>
                                </span>

                                <span class="col-25">
                                    <a href="javascript:void(0);" onclick="fnOpenModal('.modal-email')" class="btn btn-gray btn-L">수정하기</a>
                                </span>
                            </dd>
                        </dl>
                    </div>
                </form>

                <div class="mt40">
                    시대인재 서비스를 더이상 이용하고 싶지않다면?
                    <a href="/totalWebSite/sdijx/member/leaveStep1.asp" class="txt-link">회원탈퇴 바로가기</a>
                </div>
            </div>
        </div>        
    </section>
    <!--// E : container -->

    <!-- S : modal -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 휴대전화번호 인증 -->
        <!--#include virtual="/totalWebSite/sdijx/mypage/incModalHp.asp"-->
        <!--// E : 휴대전화번호 인증 -->

        <!-- S : 이메일 인증 -->
        <!--#include virtual="/totalWebSite/sdijx/mypage/incModalEmail.asp"-->
        <!--// E : 이메일 인증 -->
    </div>
    <!--// E : modal -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->