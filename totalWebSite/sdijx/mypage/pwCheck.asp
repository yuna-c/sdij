<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 마이페이지 > 비밀번호 체크
' 모듈기능: 시대인재 Digital > 마이페이지 > 비밀번호 체크
' 파 일 명: pwCheck.asp
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
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S: container -->
    <section id="container" class="pw-check-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <h2 class="tit-dep1">
                        <span class="tit">
                            비밀번호 확인
                        </span>
                        <small>개인정보 보호를 위하여<br>비밀번호를 입력해주세요.</small>
                    </h2>
                </div>

                <form id="pwCheckForm" action="" method="">
                    <div class="form-type1">
                        <dl>
                            <dt>아이디</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="memId" id="memId" value="abc123" disabled>
                                </label>
                            </dd>

                            <dt>비밀번호</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="memPw" id="memPw" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>
                        </dl>
                    </div>

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="비밀번호 확인">
                    </div>
                </form>
            </div>
        </div>        
    </section>
    <!--// E: container -->

<!-- S : script -->
<script type="text/javascript">
    $(function(){
        $('#pwCheckForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                memPw: {
                    required: true
                }
            },

            // 메시지
            messages: {
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
            },

            submitHandler: function(form){                
            <% if true then '회원 정보 수정에서 진입했을 경우 %>
                location.href="myInfo.asp"
                location.href="myPw.asp"
            <% else %>
                location.href="/totalWebSite/sdijx/member/leaveStep1.asp"
            <% end if %>
            }
        });
    });
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->