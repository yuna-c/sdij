<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 > 아이디 찾기 완료
' 모듈기능: 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 > 아이디 찾기 완료
' 파 일 명 : findID.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/pay.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="end-container">
        <div class="content-layout info-layout">
            <i class="ico-check"></i>
            
            <h3 class="tit-dep2">
                아이디 찾기 완료
                <br><span class="tit">abc123456</span>

                <small>
                    회원님의 정보와 일치하는 아이디를 찾았습니다.<br>
                    비밀번호 분실시에는 비밀번호 찾기를 진행해주세요.
                </small>
            </h3>

            <div class="btn-area">
                <a href="/totalWebSite/sdijx/member/findGate.asp" class="btn btn-L">비밀번호 찾기</a>
                <a href="/totalWebSite/sdijx/member/login.asp" class="btn btn-black btn-L">로그인 바로가기</a>
            </div>
        </div>
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->