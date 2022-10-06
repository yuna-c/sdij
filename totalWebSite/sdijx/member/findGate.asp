<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기
' 모듈기능: 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기
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
    <section id="container" class="join-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <h2 class="tit-dep1">
                        <span class="tit">
                            아이디 /비밀번호 찾기
                        </span>
                        <small>가입 시 입력하신 정보로<br>아이디와 비밀번호를 찾을 수 있습니다.</small>
                    </h2>
                </div>

                <div class="type-area">
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-id');">
                        <i class="ico-users"></i>

                        <p class="tit-dep4">
                            <span class="tit">아이디 찾기</span>
                            <small></small>
                        </p>
                    </a>

                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-pw');">
                        <i class="ico-lock"></i>
                        
                        <p class="tit-dep4">
                            <span class="tit">비밀번호 찾기</span>
                            <small></small>
                        </p>
                    </a>
                </div>
            </div>
        </div>        
    </section>
    <!--// E: container -->

    <!-- S : modal -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 아이디 찾기 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalId.asp"-->
        <!--// E : 아이디 찾기 -->

        <!-- S : 비밀번호 찾기 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalPw.asp"-->
        <!--// E : 비밀번호 찾기 -->
    </div>
    <!--// E : modal -->

<!-- S : script -->
<script type="text/javascript">

</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->