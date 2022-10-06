<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 회원가입
' 모듈기능: 시대인재 Digital > 멤버 > 회원가입
' 파 일 명: join.asp
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
certFnMemType = "100001"    '회원 타입 : 학생 (만14세 미만)'


'------------------------------
' QUERY
'------------------------------



'------------------------------
' ETC
'------------------------------

certType = "1" '슬기 : 본인인증 휴대전화 일 경우 (변경해서 사용하시면 됩니다.)

%>
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/member.css?ver=<%=Now()%>">
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S: container -->
    <section id="container" class="join-container">
        <div class="wide-layout">
            <!-- S : 회원가입 > 유형선택 -->
            <div class="content-layout form-layout join-step1">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>회원가입</span>
                        <span class="color-black">유형선택</span>
                        <span>기본정보</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                            회원가입
                        </span>
                        <small>시대인재 회원가입을 위하여<br>해당되는 회원가입 유형을 선택하여 주세요.</small>
                    </h2>
                </div>

                <div class="type-area">
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-self');">
                        <i class="ico-users"></i>

                        <p class="tit-dep4">
                            <span class="tit">만 14세 미만</span>
                            <small>회원가입</small>
                        </p>
                    </a>

                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-self');">
                        <i class="ico-user"></i>
                        
                        <p class="tit-dep4">
                            <span class="tit">만 14세 이상</span>
                            <small>회원가입</small>
                        </p>
                    </a>
                </div>
            </div>        
            <!--// E : 회원가입 > 유형선택 -->

            <!-- S : 회원가입 > 기본정보 -->
            <div class="content-layout form-layout join-step2" style="display:none;">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>회원가입</span>
                        <span>유형선택</span>
                        <span class="color-black">기본정보</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                            회원가입
                        </span>
                        <small>시대인재 회원가입을 위하여<br>기본정보를 입력해 주세요.</small>
                    </h2>
                </div>

                <form id="joinForm" action="" method="">
                    <!-- S : 인증정보 -->
                    <h3 class="tit-dep4">인증정보</h3>
                    <div class="form-type1">
                        <dl>
                            <dt>이름</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="memName" id="memName" value="홍길동" readonly>
                                </label>
                            </dd>

                            <% if certType = "1" then '본인인증 휴대전화으로 했을 경우 %>
                            <dt>휴대전화번호</dt>
                            <dd class="row">
                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp1" id="memHp1" minlength="3" maxlength="4" value="010" readonly>
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp2" id="memHp2" minlength="3" maxlength="4" value="1234" readonly>
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp3" id="memHp3" minlength="4" maxlength="4" value="5678" readonly>
                                    </label>
                                </span>
                            </dd>
                            <% else '본인인증 이메일로 했을 경우 %>
                            <dt>이메일주소</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="email" name="memEmail" id="memEmail" value="abc@email.com" readonly>
                                </label>
                            </dd>
                            <% end if %>
                        </dl>
                    </div>
                    <!--// E : 인증정보 -->

                    <% if certFnMemType = "100001" then 'S : 14세 미만 노출 %>
                    <h3 class="tit-dep4 mb0">학부모 인증</h3>

                    <div class="form-type1">
                        <dl>
                            <dt class="blind">안내문구</dt>
                            <dd>
                                <i class="ico-alert"></i>
                                14세 미만 어린이에 경우 학부모 인증이 필요합니다.
                            </dd>

                            <dt>이름</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="confirmName" id="confirmName" placeholder="학부모 이름을 입력해주세요.">
                                </label>
                            </dd>

                            <dt>휴대전화번호</dt>
                            <dd class="row">
                                <span class="col-25">
                                    <label class="select">
                                        <select name="confirmHp1" id="confirmHp1">
                                            <option value="">010</option>
                                        </select>
                                    </label>
                                </span>
            
                                <span class="col-25">
                                    <label class="input-text">
                                        <input type="tel" name="confirmHp2" id="confirmHp2" minlength="3" maxlength="4">
                                    </label>
                                </span>
            
                                <span class="col-25">
                                    <label class="input-text">
                                        <input type="tel" name="confirmHp3" id="confirmHp3" minlength="4" maxlength="4">
                                    </label>
                                </span>

                                <span class="col-25">
                                    <input type="button" class="btn btn-gray btn-L" value="인증하기">
                                </span>
                            </dd>
                            
                            <dt>인증번호</dt>
                            <dd class="row">
                                <span class="col-75">
                                    <label class="input-text input-cert">
                                        <input type="tel" name="confirmCert" id="confirmCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                                        <span class="time color-red">3:00</span>
                                    </label>
                                </span>

                                <span class="col-25">
                                    <input type="button" class="btn btn-gray btn-L" value="확인">
                                </span>
                            </dd>
                        </dl>
                    </div>
                    <% end if 'E : 14세 미만 노출 %>
                    
                    <!-- S : 회원정보 -->
                    <h3 class="tit-dep4">회원정보</h3>
                    <div class="form-type1">
                        <dl>
                            <dt>아이디*</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="memId" id="memId" placeholder="아이디를 입력해주세요.">
                                </label>
                            </dd>

                            <dt>비밀번호*</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="memPw1" id="memPw1" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>

                            <dt>비밀번호 확인*</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="password" name="memPw2" id="memPw2" placeholder="비밀번호를 입력해주세요.">
                                </label>
                            </dd>

                            <% if certType = "1" then '본인인증 휴대전화으로 했을 경우 %>
                            <dt>이메일주소</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="email" name="memEmail" id="memEmail" placeholder="이메일주소를 입력해주세요.">
                                </label>
                            </dd>
                            <% else '본인인증 이메일로 했을 경우 %>
                            <dt>휴대전화번호</dt>
                            <dd class="row">
                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp1" id="memHp1" minlength="3" maxlength="4">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp2" id="memHp2" minlength="3" maxlength="4">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memHp3" id="memHp3" minlength="4" maxlength="4">
                                    </label>
                                </span>
                            </dd>
                            <% end if %>
                        </dl>
                    </div>
                    <!--// E : 회원정보 -->

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="회원가입">
                    </div>
                </form>
            </div>
            <!--// E : 회원가입 > 기본정보 -->
        </div>
    </section>
    <!--// E: container -->

    <!-- S : modal -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 본인 인증 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalSelf.asp"-->
        <!--// E : 본인 인증 -->

        <!-- S : 시대인재 이용약관 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalAgree1.asp"-->
        <!--// E : 시대인재 이용약관 -->

        <!-- S : 개인정보 처리방침 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalAgree2.asp"-->
        <!--// E : 개인정보 처리방침 -->

        <!-- S : 개인정보 수집 및 프로모션 이용안내 -->
        <!--#include virtual="/totalWebSite/sdijx/member/incModalAgree3.asp"-->
        <!--// E : 개인정보 수집 및 프로모션 이용안내 -->
    </div>
    <!--// E : modal -->

<!-- S : script -->
<script type="text/javascript">
    $(function(){
        $('#joinForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {

                <% if certFnMemType = "100001" then 'S : 14세 미만 노출 %>
                confirmName: {
                    required: true
                },
                confirmHp2: {
                    required: true
                },
                confirmHp3: {
                    required: true
                },
                confirmCert: {
                    required: true
                },
                <% end if %>

                memId: {
                    required: true
                },
                memPw1: {
                    required: true
                },
                memPw2: {
                    required: true
                },
                memName: {
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

                <% if certFnMemType = "100001" then 'S : 14세 미만 노출 %>
                confirmName: {
                    required: '학부모 이름을 입력해주세요.'
                },
                confirmHp2: {
                    required: '학부모 휴대전화 번호를 입력해주세요.'
                },
                confirmHp3: {
                    required: '학부모 휴대전화 번호를 입력해주세요.'
                },
                confirmCert: {
                    required: '학부모 인증을 진행해주세요.'
                },
                <% end if %>

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
                    required: '휴대전화 번호를 입력해주세요.'
                },
                memHp2: {
                    required: '휴대전화 번호를 입력해주세요.'
                },
                memHp3: {
                    required: '휴대전화 번호를 입력해주세요.'
                },
            },

            groups: {

                <% if certFnMemType = "100001" then 'S : 14세 미만 노출 %>
                phoneNumberConfirm: 'confirmHp2 confirmHp3',
                <% end if %>

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
                location.href="joinEnd.asp"
            }
        });
    });
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->