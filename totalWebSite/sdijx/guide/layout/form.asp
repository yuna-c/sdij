<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > form layout
' 모듈기능 : 시대인재 Digital > form layout
' 파 일 명 : form.asp
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
<link rel="stylesheet" type="text/css" href="/common/css/.css?ver=<%=Now()%>"><!-- 개별 CSS가 있을 경우 연결 -->
<script type="text/javascript" src="/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="form-container"><!-- 기능명-container -->
        <div class="wide-layout">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>depth1</span>
                        <span class="color-black">depth2</span>
                        <span>depth3</span>
                    </div>

                    <h2 class="tit-dep1">대타이틀</h2>
                </div>

                <!-- S : form 영역 -->
                <form id="layoutForm" action="" method="">
                    <!-- S : 소타이틀 -->
                    <h3 class="tit-dep4">소타이틀</h3>
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
            
                        </dl>
                    </div>
                    <!--// E : 소타이틀 -->

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="완료">
                    </div>
                </form>
                <!--// E : form 영역 -->
            </div>
        </div>
    </section>
    <!--// E : container -->

<!-- S : script -->
<script type="text/javascript">
    $(function(){
        $('#layoutForm').validate({
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

            // error 메시지 노출 제어
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
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->