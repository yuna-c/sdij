<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 멤버 > 로그인
' 모듈기능 : 시대인재 Digital > 멤버 > 로그인
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
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incMeta.asp"-->
</head>
<body>

<!-- S : wrap -->
<div id="wrap">
    <!-- S : container -->
    <section id="container" class="flex-container member-container">
        <!-- S : 로그인 영역 -->
        <article class="login-article form-layout">
            <h2 class="tit-dep1 tit-logo"><span>로그인</span></h2>

            <form method="POST" id="loginForm" name="loginForm">
                <input type="hidden" id="mem_hp" name="mem_hp" value="">
                <input type="hidden" id="authIdx" name="authIdx" value="">
                <input type="hidden" id="authTimeFlag" name="authTimeFlag" value="N">
                <input type="hidden" id="authConfirmFlag" name="authConfirmFlag" value="N">

                <div class="form-type2">
                    <ul>
                        <li>
                            <label class="input-text">
                                <input type="text" id="mem_id" name="mem_id" placeholder="아이디">
                            </label>
                        </li>
                        <li>
                            <label class="input-text">
                                <input type="password" id="mem_pw" name="mem_pw" placeholder="비밀번호">
                            </label>
                        </li>
                        <li class="row">
                            <label class="select">
                                <select id="mem_hp1" name="mem_hp1">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="018">018</option>
                                    <option value="019">019</option>
                                </select>
                            </label>

                            <label class="input-text">
                                <input type="tel" id="mem_hp2" name="mem_hp2" maxlength="4">
                            </label>

                            <label class="input-text">
                                <input type="tel" id="mem_hp3" name="mem_hp3" maxlength="4">
                            </label>

                            <button type="button" class="btn" id="btn_getAuthNo" name="btn_getAuthNo">인증번호 받기</button>
                        </li>
                        <li class="row">
                            <label class="col-75 input-text">
                                <input type="tel" id="authNumber" name="authNumber" maxlength="6" placeholder="인증번호"><!-- 클릭 후 재전송으로 변경 -->
                                <span class="time" id="authTimer">3:00</span>
                            </label>

                            <button type="button" class="btn" id="btn_checkAuthNo" name="btn_checkAuthNo">확인</button>
                        </li>
                    </ul>

                    <div class="form-btn">
                        <input type="button" onclick="location.href='/totalWebSite/renew2019/digital/mypage/index.asp'" class="btn btn-strong btn-black" id="btn_login" name="btn_login" value="로그인">
                    </div>
                </div>
            </form>
        </article>
        <!--// E : 로그인 영역 -->
    </section>
    <!--// E : container -->
</div>
<!--//  E : wrap -->

</body>
</html>