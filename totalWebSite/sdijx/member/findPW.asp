<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 > 비밀번호 찾기
' 모듈기능: 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 > 비밀번호 찾기
' 파 일 명: findPW.asp
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
    <section id="container" class="find-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>아이디/비밀번호 찾기</span>
                        <span>비밀번호 찾기</span>
                        <span class="color-black">비밀번호 재설정</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                            비밀번호 재설정
                        </span>
                        <small>시대인재 서비스 이용을 위해<br>비밀번호를 재설정해주세요.</small>
                    </h2>
                </div>

                <form id="joinStep1Form" action="" method="">
                    <div class="form-type1">
                        <dl>
                            <dt>새 비밀번호</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="findPwPw1" id="findPwPw1" placeholder="새 비밀번호를 입력해주세요.">
                                </label>
                            </dd>

                            <dt>새 비밀번호 확인</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="findPwPw2" id="findPwPw2" placeholder="새 비밀번호를 입력해주세요.">
                                </label>
                            </dd>
                        </dl>
                    </div>

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="확인">
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
                findPwPw1: {
                    required: true
                },
                findPwPw2: {
                    required: true
                }
            },

            // 메시지
            messages: {
                findPwPw1: {
                    required: '비밀번호를 입력해주세요.'
                },
                findPwPw2: {
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
            },

            submitHandler: function(form){                
                location.href="findPWEnd.asp"
            }
        });
    });
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->