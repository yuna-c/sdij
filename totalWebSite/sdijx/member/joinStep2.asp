<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 회원가입 > STEP2 추가정보 입력
' 모듈기능: 시대인재 Digital > 멤버 > 회원가입 > STEP2 추가정보 입력
' 파 일 명: joinStep2.asp
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
                    <div class="page-loc">
                        <span>회원가입</span>
                        <span>기본 정보</span>
                        <span class="color-black">추가 정보</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                             회원가입
                        </span>
                        <small>시대인재 회원가입을 위하여<br>추가 정보를 입력해 주세요.</small>
                    </h2>
                </div>

                <form id="joinStep2Form" action="" method="">
                    <div class="form-type1">
                        <dl>
                            <dt>이메일</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="email" name="memEmail" id="memEmail" placeholder="이메일을 입력해주세요.">
                                </label>
                            </dd>

                            <dt>생년월일</dt>
                            <dd class="row">
                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memYear" id="memYear" minlength="4" maxlength="4" placeholder="YYYY">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memMon" id="memMon" minlength="1" maxlength="2"  placeholder="MM">
                                    </label>
                                </span>

                                <span>
                                    <label class="input-text">
                                        <input type="tel" name="memDay" id="memDay" minlength="1" maxlength="2"  placeholder="DD">
                                    </label>
                                </span>
                            </dd>

                            <dt>성별</dt>
                            <dd class="form-toggle">
                                <label class="toggle-radio">
                                    <input type="radio" id="memType1" name="memType" checked="">
                                    <span>남</span>
                                </label>
                                <label class="toggle-radio">
                                    <input type="radio" id="memType2" name="memType">
                                    <span>여</span>
                                </label>
                            </dd>

                            <dt class="blind">약관동의</dt>
                            <dd class="agree-type2">
                                <ul class="list-agree">
                                    <li>
                                        <label class="input-checkbox">
                                            <input type="checkbox" id="memAgree1" name="memAgree1" onchange="fnCheck(this);">
                                            <span class="ico-checkbox"></span>
                                            시대인재 이용약관(필수)
                                        </label>

                                        <a href="javascript:void(0)" class="color-gray" onclick="fnOpenModal('.modal-agree1');">자세히 보기</a>
                                    </li>

                                    <li>
                                        <label class="input-checkbox">
                                            <input type="checkbox" id="memAgree2" name="memAgree2" onchange="fnCheck(this);">
                                            <span class="ico-checkbox"></span>
                                            개인정보 처리방침(필수)
                                        </label>

                                        <a href="javascript:void(0)" class="color-gray" onclick="fnOpenModal('.modal-agree2');">자세히 보기</a>
                                    </li>

                                    <li>
                                        <label class="input-checkbox">
                                            <input type="checkbox" id="memAgree3" name="memAgree3" onchange="fnCheck(this);">
                                            <span class="ico-checkbox"></span>
                                            개인정보 수집 및 프로모션 이용안내(선택)
                                        </label>

                                        <a href="javascript:void(0)" class="color-gray" onclick="fnOpenModal('.modal-agree3');">자세히 보기</a>
                                    </li>
                                </ul>
                            </dd>

                            <dd class="agree-type1">
                                <label class="input-checkbox">
                                    <input type="checkbox" id="memAgreeAll" name="memAgreeAll" onchange="fnAllCheck(this);">
                                    <span class="ico-checkbox"></span>
                                    시대인재 사이트를 이용하기 위한 통합 이용약관, 정보 활용 및 개인정보 제3자 제공에 모두 동의합니다.
                                </label>
                            </dd>
                        </dl>
                    </div>

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="회원가입">
                    </div>
                </form>
            </div>
        </div>        
    </section>
    <!--// E: container -->

     <!-- S : modal -->
     <div class="modal-wrap">
        <div class="modal-bg"></div>

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
        $('#joinStep2Form').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                memEmail: {
                    required: true
                },
                memYear: {
                    required: true
                },
                memMon: {
                    required: true
                },
                memDay: {
                    required: true
                },
                memType: {
                    required: true
                }
            },

            // 메시지
            messages: {
                memEmail: {
                    required: '이메일을 입력해주세요.'
                },
                memYear: {
                    required: '생년월일을 입력해주세요.'
                },
                memMon: {
                    required: '생년월일을 입력해주세요.'
                },
                memDay: {
                    required: '생년월일을 입력해주세요.'
                },
                memType: {
                    required: '성별을 선택해주세요.'
                }
            },

            groups: {
                memBirth: 'memYear memMon memDay'
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

    // 전체 체크 확인
    function fnAllCheck(obj){
        var $this = $(obj),
            thisCheck = $this.is(':checked');

        $this.parents('dd').prev().find('input[type="checkbox"]').prop('checked', thisCheck);
    }

    // 일반 약관 체크 확인
    function fnCheck(obj){
        var $this = $(obj);

        if( $this.parents('dd').find('input[type="checkbox"]:checked').length > 2 ) $this.parents('dd').next().find('input[type="checkbox"]').prop('checked', true);
        else $this.parents('dd').next().find('input[type="checkbox"]').prop('checked', false);
    }

    // modal 약관 동의
    function fnAgreeConfirm(num){
        var num = num;

        $('#memAgree' + num).prop('checked', true);
        fnCheck('#memAgree' + num);
        fnCloseModal('.modal-agree' + num);
    }
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->