<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 회원탈퇴
' 모듈기능: 시대인재 Digital > 멤버 > 회원탈퇴
' 파 일 명: leave.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S: container -->
    <section id="container" class="leave-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>회원탈퇴</span>
                        <span>탈퇴조건</span>
                        <span class="color-black">탈퇴완료</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                            회원탈퇴
                        </span>
                        <small>시대인재 회원탈퇴를 신청하기전<br>안내 사항을 확인해주세요.</small>
                    </h2>
                </div>

                <h3 class="tit-dep4">탈퇴사유</h3>
                <div class="form-type1">
                    <dl>
                        <dt class="blind">탈퇴사유</dt>
                        <dd>
                            <div class="textarea">
                                <textarea name="leaveContent" id="leaveContent" placeholder="탈퇴사유를 입력해주세요."></textarea>
                            </div>
                        </dd>
                    </dl>
                </div>

                <div class="btn-area txt-right mt20">
                    <a href="leaveEnd.asp" class="btn btn-black btn-L">탈퇴완료</a>
                </div>
            </div>
        </div>        
    </section>
    <!--// E: container -->

<!-- S : script -->
<script type="text/javascript">

</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"--> 