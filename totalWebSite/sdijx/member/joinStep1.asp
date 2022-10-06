<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 회원가입 > STEP1 기본정보 입력
' 모듈기능: 시대인재 Digital > 멤버 > 회원가입 > STEP1 기본정보 입력
' 파 일 명: joinStep1.asp
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
    <section id="container" class="join-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>회원가입</span>
                        <span class="color-black">기본 정보</span>
                        <span>추가 정보</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                             회원가입
                        </span>
                        <small>시대인재 회원가입을 위하여<br>기본 정보를 입력해 주세요.</small>
                    </h2>
                </div>

                <form id="joinStep1Form" action="" method="">
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
                                    <input type="password" name="memPw1" id="memPw1" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>

                            <dt>비밀번호 확인</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="memPw2" id="memPw2" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>
                        </dl>
                    </div>

                    <!-- S : 14세 미만 노출 -->
                    <h3 class="tit-dep4">기본 정보</h3>
                    <div class="form-type1">
                        <dl>
                            <dt>이름</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="memName1" id="memName1" value="홍길동">
                                </label>
                            </dd>

                            <dt>휴대폰번호</dt>
                            <dd class="row">
                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp1" id="memHp1" minlength="3" maxlength="4" value="010">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp2" id="memHp2" minlength="3" maxlength="4" value="1234">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp3" id="memHp3" minlength="4" maxlength="4" value="5678">
                                    </label>
                                </span>
                            </dd>                            
                        </dl>
                    </div>
                    <!--// E : 14세 미만 노출 -->

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="다음">
                    </div>
                </form>
            </div>
        </div>        
    </section>
    <!--// E: container -->

<!-- S : script -->
<script type="text/javascript">
    $(function(){
        $('#joinStep1Form').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                memId: {
                    required: true
                },
                memPw1: {
                    required: true
                },
                memPw2: {
                    required: true
                },
                memName1: {
                    required: true
                },
                memHp1: {
                    required: true
                },
                memHp2: {
                    required: true
                },
                memHp3: {
                    required: true
                },
            },

            // 메시지
            messages: {
                memId: {
                    required: '아이디를 입력해주세요.'
                },
                memPw1: {
                    required: '비밀번호를 입력해주세요.'
                },
                memPw2: {
                    required: '비밀번호를 입력해주세요.'
                },
                memName1: {
                    required: '이름을 입력해주세요.'
                },
                memHp1: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                memHp2: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                memHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
            },

            groups: {
                phoneNumber: 'memHp1 memHp2 memHp3'
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
            },

            submitHandler: function(form){                
                location.href="joinStep2.asp"
            }
        });
    });
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->