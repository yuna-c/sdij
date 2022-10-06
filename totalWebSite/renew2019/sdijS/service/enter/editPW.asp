<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 단과(대치/목동/분당) 강의실 입실번호 발급 시스템
' 모듈기능 : 비밀번호 찾기
' 파 일 명 : findPW.asp
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

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!-- S : 페이지별 css -->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">
<!--// E : 페이지별 css -->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

<!-- S : container -->
<div id="container" class="pw-edit-container">
    <!-- S : 비밀번호 변경 -->
    <div class="container-form form-layout">
        <h2 class="tit-dep1">
            비밀번호 변경

            <% '초기 로그인 시에만 노출 %>
            <small>
                초기 로그인 시 비밀번호 변경 후<br>서비스를 이용할 수 있습니다.
            </small>
            <% '// 초기 로그인 시에만 노출 %>
        </h2>

        <form action="" method="">
            <div class="form-small">
                <ul>
                    <li>
                        <label class="input-type1">
                            <input type="text" placeholder="아이디">
                        </label>
                    </li>
                    <li>
                        <label class="input-type1">
                            <input type="password" placeholder="변경 비밀번호">
                        </label>
                    </li>
                    <li>
                        <label class="input-type1">
                            <input type="password" placeholder="변경 비밀번호 확인">
                        </label>
                    </li>
                </ul>

                <div class="form-btn">
                    <a href="default.asp" class="btn btn-black">확인</a>
                </div>
            </div>
        </form>
    </div>
    <!--// E : 비밀번호 변경 -->
</div>
<!--// E : container -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
    
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->