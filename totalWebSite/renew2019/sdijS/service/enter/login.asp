<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 단과(대치/목동/분당) 강의실 입실번호 발급 시스템
' 모듈기능 : 로그인
' 파 일 명 : login.asp
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
<div id="container" class="login-container">
    <div class="container-login form-layout">
        <h2 class="tit-dep1">
            시대인재 강의실 입실번호 발급
            <small>
                시대인재 학원 강의실 입장 순서 번호를<br>
                온라인에서 발급하는 서비스로<br>
                시대인재 수강생만 이용 가능한 서비스 입니다.
            </small>
        </h2>

        <!-- S : 로그인 영역 -->
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
                            <input type="password" placeholder="비밀번호">
                        </label>
                    </li>
                </ul>

                <div class="form-btn">
                <% if true then '초기 로그인 시 %>
                    <a href="editPW.asp" class="btn btn-black">로그인</a>
                <% else %>
                    <a href="default.asp" class="btn btn-black">로그인</a>
                <% end if %>
                </div>
            </div>
        </form>

        <div class="link-area">
            <a href="findPW.asp">비밀번호 찾기</a>
        </div>
        <!--// E : 로그인 영역 -->
    </div>

    <!-- S : 서비스 안내 -->
    <div class="container-info content-layout mt2">
        <h3 class="tit-dep2">이용안내</h3>
        <ul class="list-cir">
            <li>
                <div class="cir">로그인</div>

                <ul class="list-dash">
                    <li>개별적으로 부여된 아이디와 비밀 번호로 로그인 합니다.</li>
                    <li>부여된 비밀번호는 초기 로그인 후 변경 해야만 서비스 이용이 가능합니다.</li>
                </ul>
            </li>
            <li>
                <div class="cir">번호 신청</div>

                <ul class="list-dash">
                    <li>신청 시간에 맞추어 번호 신청 버튼을 클릭 합니다.</li>
                    <li>강좌별로 신청 시간이 상이하니 미리 스케쥴을 확인 해주세요.</li>
                </ul>
            </li>
            <li>
                <div class="cir">번호 발급</div>

                <ul class="list-dash">
                    <li>발급된 입실번호를 확인 합니다.</li>
                    <li>입실번호 발급 시 자동으로 문자가 발송되며, 발급 직 후 인쇄 가능 합니다.</li>
                </ul>
            </li>
            
            <li>
                <div class="cir">입실</div>

                <ul class="list-dash">
                    <li>수업 당일, 발급 받은 번호 순서대로 30분 전까지 입실을 완료 합니다.</li>
                </ul>
            </li>
        </ul>
    </div>
    <!--// E : 서비스 안내 -->
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