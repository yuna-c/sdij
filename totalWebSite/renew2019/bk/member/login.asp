<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 멤버 > 로그인
' 모듈기능 : 보충강좌 서비스 > 멤버 > 로그인
' 파 일 명 : login.asp
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
<!--#include virtual="/totalWebSite/renew2019/bk/common/include/incMeta.asp"-->

 <!-- S : header -->
 <header id="header">
    <div class="content-layout">
        <h1 class="tit-dep1">로그인</h1>
    </div>
</header>
<!--// E : header -->

<!-- S : container -->
<section id="container" class="flex-container login-container">
    <!-- S : 로그인 영역 -->
    <article class="container-login form-layout">
        <form action="" method="">
            <div class="form-small">
                <ul>
                    <li>
                        <label class="input-text">
                            <input type="text" placeholder="아이디">
                        </label>
                    </li>
                    <li>
                        <label class="input-text">
                            <input type="password" placeholder="비밀번호">
                        </label>
                    </li>
                </ul>

                <div class="form-btn">
                    <input type="button" class="btn btn-black" onclick="location.href='/totalWebSite/renew2019/bk/index.asp'" value="로그인">
                </div>
            </div>
        </form>

        <div class="link-area">
            <a href="/totalWebSite/renew2019/bk/member/join.asp">회원가입</a>
        </div>
    </article>
    <!--// E : 로그인 영역 -->
</section>
<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/bk/common/include/incFooter.asp"-->