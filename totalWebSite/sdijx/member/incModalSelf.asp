<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 멤버 > 회원가입 > (M)본인인증
' 모듈기능 : 시대인재 Digital > 멤버 > 회원가입 > (M)본인인증
' 파 일 명 : incModalSelf.asp
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
<div class="modal-container modal-M modal-self">
<form id="modalSelfForm" action="" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">
            본인인증
        </h3>
    </div>

    <div class="modal-content">
        <!-- S : 약관동의 -->
        <h3 class="tit-dep5">약관동의</h3>

        <div class="form-type1">
            <dl>
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
                        <li class="sub-select">
                            <label class="input-checkbox">
                                <input type="checkbox" id="memAgreeType1" name="memAgreeType1">
                                <span class="ico-checkbox"></span>
                                휴대폰
                            </label>
                            <label class="input-checkbox">
                                <input type="checkbox" id="memAgreeType2" name="memAgreeType2">
                                <span class="ico-checkbox"></span>
                                이메일
                            </label>
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
        <!--// E : 약관동의 -->

        <!-- S : 본인인증 폼 -->
        <h3 class="tit-dep5 mt20">인증하기</h3>

        <div class="form-type1">
            <dl>
                <dt>이름</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="certName" id="certName" minlength="2" placeholder="이름을 입력해주세요.">
                    </label>
                </dd>

                <dt>인증수단</dt>
                <dd>
                    <label class="input-radio">
                        <input type="radio" name="certType" id="certType1" checked="checked" onchange="fnCertType(this);">
                        <i class="ico-radio"></i>
                        휴대전화번호
                    </label>

                    <label class="input-radio">
                        <input type="radio" name="certType" id="certType2" onchange="fnCertType(this);">
                        <i class="ico-radio"></i>
                        이메일주소
                    </label>
                </dd>

                <dt class="cert-type1">휴대전화번호</dt>
                <dd class="cert-type1 row">
                    <span class="col-25">
                        <label class="select">
                            <select name="certHp1" id="certHp1">
                                <option value="">010</option>
                            </select>
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="certHp2" id="certHp2" minlength="3" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="certHp3" id="certHp3" minlength="4" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnHpCert(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt class="cert-type2 blind">이메일주소</dt>
                <dd class="cert-type2 blind row">
                    <span class="col-75">
                        <label class="input-text">
                            <input type="email" name="certEmail" id="certEmail">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnHpCert(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt>
                    인증번호
                </dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text input-cert">
                            <input type="tel" name="certCert" id="certCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                            <span class="time color-red">3:00</span>
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" class="btn btn-gray btn-L" value="확인">
                    </span>
                </dd>
            </dl>
        </div>
        <!--// E : 본인인증 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-self');" class="btn btn-gray">닫기</a>
        <input type="submit" value="저장하기" class="btn btn-black">
    </div>
</form>
</div>

<script type="text/javascript">
    $(function(){    
        $('#modalSelfForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                memAgree1: {
                    required: true
                },
                memAgree2: {
                    required: true
                },
                certName: {
                    required: true
                },
                certType: {
                    required: true
                },
                certHp2: {
                    // certType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#certType1:checked").val(); } }
                },
                certHp3: {
                    // certType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#certType1:checked").val(); } }
                },
                certEmail: {
                    // certType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#certType2:checked").val(); } }
                },
                certCert: {
                    required: true
                },
               
            },

            // 메시지
            messages: {
                memAgree1: {
                    required: '시대인재 이용약관에 동의해주세요.'
                },
                memAgree2: {
                    required: '개인정보 처리방침에 동의해주세요.'
                },
                certName: {
                    required: '이름을 입력해주세요.'
                },
                certType: {
                    required: '인증수단을 선택해주세요.'
                },
                certHp2: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                certHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                certEmail: {
                    required: '이메일을 입력해주세요.'
                },
                certCert: {
                    required: '본인인증을 진행해주세요.'
                },
             
            },

            groups: {
                phoneNumber: 'certHp2 certHp3'
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                // 핸드폰 번호
                if( element.attr('name') == 'certHp2' || element.attr('name') == 'certHp3' ){
                    error.appendTo( $('#certHp2').parents('dd') );    
                }else{
                    error.appendTo( element.parents('dd') );
                }
            },

            highlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'certHp2' || $(element).attr('name') == 'certHp3' ){
                    $('#certHp2').parents('dd').addClass('error');
                }else{
                    $(element).parents('dd').addClass('error');
                }
            },

            unhighlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'certHp2' || $(element).attr('name') == 'certHp3' ){
                    if( $('#certHp2').val() != '' && $('#certHp3').val() != '' ) $('#certHp2').parents('dd').removeClass('error');
                }else{
                    $(element).parents('dd').removeClass('error');
                }
            },

            // focus out
            onfocusout: function(element) {
                $(element).valid();
            },

            submitHandler: function(form){                
                fnCloseModal('.modal-self');
                $('.join-step1').hide();
                $('.join-step2').show();
                // location.href="joinStep1.asp"
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
        fnOpenModal('.modal-self');
    }

    // 인증번호발송
    function fnHpCert(obj){
        var $this = $(obj);

        modalDialog.alert('인증번호가 발송되었습니다.');
        $this.parents('dl').find('.time').show();
    }

    // 인증타입 선택
    function fnCertType(obj){
        var $this = $(obj);

        // 핸드폰 인증
        if( $this.prop('id') == 'certType1' ){
            $this.parents('.form-type1').find('.cert-type2').addClass('blind').removeClass('error').find('.error-msg').hide();
            $this.parents('.form-type1').find('.cert-type1').removeClass('blind');
        }else if( $this.prop('id') == 'certType2' ){
            $this.parents('.form-type1').find('.cert-type1').addClass('blind').removeClass('error').find('.error-msg').hide();
            $this.parents('.form-type1').find('.cert-type2').removeClass('blind');
        }
    }
</script>