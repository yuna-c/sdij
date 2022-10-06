<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 회원가입
' 모듈기능: 시대인재 Digital > 멤버 > 회원가입
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
                            회원가입
                        </span>
                        <small>시대인재 회원가입을 위하여<br>해당되는 회원가입 유형을 선택하여 주세요.</small>
                    </h2>
                </div>

                <div class="type-area">
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-confirm');">
                        <i class="ico-users"></i>

                        <p class="tit-dep4">
                            <span class="tit">만 14세 미만</span>
                            <small>회원가입</small>
                        </p>
                    </a>

                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cert');">
                        <i class="ico-user"></i>
                        
                        <p class="tit-dep4">
                            <span class="tit">만 14세 이상</span>
                            <small>회원가입</small>
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

        <!-- S : 보호자 동의 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalConfirm.asp"-->
        <!--// E : 보호자 동의 -->

        <!-- S : 핸드폰 인증 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalCert.asp"-->
        <!--// E : 핸드폰 인증 -->
    </div>
    <!--// E : modal -->

<!-- S : script -->
<script type="text/javascript">

</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->