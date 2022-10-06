<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 내비밀번호관리
' 모듈기능 : 시대인재 Digital > 내비밀번호관리
' 파 일 명 : myPw.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/mypage.css?ver=<%=Now()%>">
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="myinfo-container">
        <div class="content-layout">
            <h2 class="tit-dep1">
                <span class="tit">마이페이지</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <div class="tab-type2 border-none">
                <ul>
                    <li><a href="myInfo.asp">내정보관리</a></li>
                    <li class="selected"><a href="javascript:void(0);">비밀번호관리</a></li>
                    <li><a href="myDelv.asp">배송지관리</a></li>
                </ul>
            </div>

            <div class="tab-content tab-on">
                <form id="myPwForm" action="" method="">
                    <div class="form-type1">
                        <dl>
                            <dt>새 비밀번호</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="memPw1" id="memPw1" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>

                            <dt>새 비밀번호확인</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="memPw2" id="memPw2" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>
                        </dl>
                    </div>

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="수정완료">
                    </div>
                </form>
            </div>
        </div>        
    </section>
    <!--// E : container -->

<!-- S : script -->
<script type="text/javascript">
    $(function(){
        $('#myPwForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                memPw1: {
                    required: true
                },
                memPw2: {
                    required: true
                },
            },

            // 메시지
            messages: {
                memPw1: {
                    required: '비밀번호를 입력해주세요.'
                },
                memPw2: {
                    required: '비밀번호를 입력해주세요.'
                },
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
                modalDialog.alert('비밀번호 변경이 완료되었습니다.');
            }
        });
    });
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->