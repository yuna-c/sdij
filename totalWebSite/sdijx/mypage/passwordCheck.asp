<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 로그인
' 모듈기능: 시대인재 Digital > 멤버 > 로그인
' 파 일 명: qnaWrite.asp
' 작성일자: 
' 작 성 자: 
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/member.css?ver=<%=Now()%>">
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S: container -->
    <section id="container" class="login-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <h2 class="tit-dep1">
                        <span class="tit">
                            로그인
                        </span>
                        <small>시대인재 로그인을 위하여<br>이메일과 비밀번호를 입력해주세요.</small>
                    </h2>
                </div>

                <form id="loginForm" action="" method="">
                    <div class="form-type1">
                        <dl>
                            <dt>아이디</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="memId" id="memId" placeholder="아이디를 입력해주세요.">
                                </label>
                            </dd>

                            <dt>비밀번호</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="memPw" id="memPw" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>

                            <% if false then '핸드폰 인증 미사용 %>
                            <dt>휴대폰번호</dt>
                            <dd class="row">
                                <span class="col-25">
                                    <label class="select">
                                        <select name="memHp1" id="memeHp1">
                                            <option value="">010</option>
                                        </select>
                                    </label>
                                </span>

                                <span class="col-25">
                                    <label class="input-text">
                                        <input type="tel" name="memHp2" id="memHp2" minlength="3" maxlength="4">
                                    </label>
                                </span>

                                <span class="col-25">
                                    <label class="input-text">
                                        <input type="tel" name="memHp3" id="memHp3" minlength="4" maxlength="4">
                                    </label>
                                </span>

                                <span class="col-25">
                                    <input type="button" onclick="fnHpCert();" class="btn btn-gray btn-L" value="인증하기">
                                </span>
                            </dd>

                            <dt>
                                인증번호
                            </dt>
                            <dd class="row">
                                <span class="col-75">
                                    <label class="input-text input-cert">
                                        <input type="tel" name="memCert" id="memCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                                        <span class="time color-red">3:00</span>
                                    </label>
                                </span>

                                <span class="col-25">
                                    <input type="button" class="btn btn-gray btn-L" value="확인">
                                </span>
                            </dd>
                            <% end if %>
                        </dl>
                    </div>

                    <div class="btn-area flex-area find-area mt20">
                        <p class="find-link">
                            비밀번호를 잊으셨나요?
                            &nbsp;
                            <a href="/totalWebSite/sdijx/member/findGate.asp" class="txt-link">아이디/비밀번호 찾기</a>
                        </p>

                        <input type="submit" onclick="fnLogin();" class="btn btn-black btn-L" value="로그인">
                    </div>
                </form>

                <div class="join-link">
                    아이디가 없으시다면 회원가입을 해주세요.
                    <a href="/totalWebSite/sdijx/member/join.asp" class="txt-line"><span>회원가입</span></a>
                </div>
            </div>
        </div>        
    </section>
    <!--// E: container -->

<!-- S : script -->
<script type="text/javascript">
    $(function(){
        $('#loginForm').validate({
            debug: true, // submit X

            // 규직
            rules: {
                memId: {
                    required: true
                },
                memPw: {
                    required: true
                }
            },

            // 메시지
            messages: {
                memId: {
                    required: '아이디를 입력해주세요.'
                },
                memPw: {
                    required: '비밀번호를 입력해주세요.'
                }
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                error.appendTo( element.parents('dd') );
            },

            highlight: function(element, errorClass){
                $(element).parents('dd').addClass('error');
            },

            unhighlight: function(element, errorClass){
                $(element).parents('dd').removeClass('error');
            }
        });
    });

    var i = 1;
    
    function fnLogin(){
        if( i === 1 ){
            modalDialog.alert('아이디와 비밀번호를 확인해주세요.');
            i = 2;
        }else{
            location.href='/';
        }
    }
    function fnHpCert(){
        modalDialog.alert('인증번호가 발송되었습니다.');
        $('.input-cert').find('.time').show();
    }
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->