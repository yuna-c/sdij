<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 멤버 > 아이디 찾기
' 모듈기능 : 아이디 찾기
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
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

<!-- S : container -->
<section id="container" class="flex-container login-container">
    <article class="container-logo form-layout">
        <p class="tit">
            아이디 찾기
            <small>학원에 등록된 학부모 /학생 핸드폰 번호로<br>인증 후 아이디 확인이 가능 합니다.</small>
        </p>
    </article>
    
    <!-- S : 아이디 찾기 영역 -->
    <article class="container-login form-layout">
        <form method="" id="" name="">
            <div class="form-small">
                <ul>
                    <li>
                        <label class="input-text">
                            <input type="text" id="" name="" placeholder="이름">
                        </label>
                    </li>
                    <li class="type-col4">
                        <label class="select">
                            <select id="" name="">
                                <option value="010">010</option>
								<option value="011">011</option>
                                <option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
                            </select>
                        </label>

                        <label class="input-text">
                            <input type="tel" id="" name="" maxlength="4">
                        </label>

                        <label class="input-text">
                            <input type="tel" id="" name="" maxlength="4">
                        </label>

                        <span><button type="button" class="btn" name="">인증번호 받기</button></span>
                    </li>
                    <li class="type-col2">
                        <label class="input-text">
                            <input type="tel" id="" name="" maxlength="6" placeholder="인증번호">
                            <span class="time">3:00</span>
                        </label>

                        <span><button type="button" class="btn" id="" name="">확인</button></span>
                    </li>
                </ul>

                <div class="form-btn">
                    <a href="login.asp" class="btn">취소</a>
                    <input type="button" class="btn btn-black" onclick="location.href='findIDEnd.asp'" name="" value="확인">
                </div>
            </div>
        </form>
    </article>
    <!--// E : 아이디 찾기 영역 -->
</section>
<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

<script type="text/javascript">

</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-159319393-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-159319393-1');
</script>
