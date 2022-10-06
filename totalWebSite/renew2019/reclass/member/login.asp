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
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

<!-- S : header -->
<!-- <header id="header">
    <div class="content-layout">
        <h1 class="tit-dep1">로그인</h1>
    </div>
</header> -->
<!--// E : header -->

<!-- S : container -->
<section id="container" class="flex-container login-container">
    <article class="container-logo form-layout">
        <!-- <p class="tit">최상위권의 결정체</p> -->
        <p class="img"><img src="//img.sdij.com/sd2019/app/common/logo2.png" alt="시대인재"></p>
    </article>

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
                    <li class="type-col4">
                        <label class="select">
                            <select>
                                <option value="010">010</option>
								<option value="011">011</option>
                                <option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
                            </select>
                        </label>

                        <label class="input-text">
                            <input type="tel" maxlength="4">
                        </label>

                        <label class="input-text">
                            <input type="tel" maxlength="4">
                        </label>

                        <span><button type="button" class="btn">인증번호 받기</button></span>
                    </li>
                    <li class="type-col2">
                        <label class="input-text">
                            <input type="tel" maxlength="6" placeholder="인증번호">
                            <span class="time">3:00</span>
                        </label>

                        <span><button type="button" class="btn">확인</button></span>
                    </li>
                </ul>

                <div class="form-btn">
                    <input type="button" class="btn btn-black" onclick="location.href='/renew2019/reclass/index.asp'" value="로그인">
                </div>
            </div>
        </form>

        <div class="link-area">
            <a href="/totalWebSite/renew2019/reclass/member/join.asp">회원가입</a>
            <a href="/totalWebSite/renew2019/reclass/member/findID.asp">아이디 찾기</a>
        </div>
    </article>
    <!--// E : 로그인 영역 -->
</section>
<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->