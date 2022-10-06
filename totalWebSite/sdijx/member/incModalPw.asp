<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 / (M)비밀번호 찾기
' 모듈기능 : 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 / (M)비밀번호 찾기
' 파 일 명 : incModalPw.asp
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
<div class="modal-container modal-M modal-pw">
<form id="modalfindPwForm" action="" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">
            비밀번호 찾기
        </h3>
    </div>

    <div class="modal-content">
        <!-- S : 비밀번호 찾기 폼 -->
        <div class="form-type1">
            <dl>
                <dt>아이디</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="findPwId" id="findPwId" placeholder="아이디를 입력해주세요.">
                    </label>
                </dd>

                <dt>이름</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="findPwName" id="findPwName" placeholder="이름을 입력해주세요.">
                    </label>
                </dd>

                <dt>인증수단</dt>
                <dd>
                    <label class="input-radio">
                        <input type="radio" name="findPwType" id="findPwType1" checked="checked" onchange="fnFindPwType(this);">
                        <i class="ico-radio"></i>
                        휴대전화번호
                    </label>

                    <label class="input-radio">
                        <input type="radio" name="findPwType" id="findPwType2" onchange="fnFindPwType(this);">
                        <i class="ico-radio"></i>
                        이메일주소
                    </label>
                </dd>

                <dt class="find-type1">휴대전화번호</dt>
                <dd class="find-type1 row">
                    <span class="col-25">
                        <label class="select">
                            <select name="findPwHp1" id="findPwHp1">
                                <option value="">010</option>
                            </select>
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="findPwHp2" id="findPwHp2" minlength="3" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="findPwHp3" id="findPwHp3" minlength="4" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnFindPwCert(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt class="find-type2 blind">이메일주소</dt>
                <dd class="find-type2 blind row">
                    <span class="col-75">
                        <label class="input-text">
                            <input type="email" name="findPwEmail" id="findPwEmail">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnFindPwCert(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt>
                    인증번호
                </dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text input-cert">
                            <input type="tel" name="findPwCert" id="findPwCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                            <span class="time color-red">3:00</span>
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" class="btn btn-gray btn-L" value="확인">
                    </span>
                </dd>
            </dl>
        </div>
        <!--// E : 비밀번호 찾기 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-pw');" class="btn btn-gray">닫기</a>
        <input type="submit" value="저장하기" class="btn btn-black">
    </div>
</form>

<script type="text/javascript">
    $(function(){    
        $('#modalfindPwForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                findPwId: {
                    required: true
                },
                findPwName: {
                    required: true
                },
                findPwType: {
                    required: true
                },
                findPwHp2: {
                    // findPwType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#findPwType1:checked").val(); } }
                },
                findPwHp3: {
                    // findPwType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#findPwType1:checked").val(); } }
                },
                findPwEmail: {
                    // findPwType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#findPwType2:checked").val(); } }
                },
                findPwCert: {
                    required: true,
                },
               
            },

            // 메시지
            messages: {
                findPwId: {
                    required: '아이디를 입력해주세요.'
                },
                findPwName: {
                    required: '이름을 입력해주세요.'
                },
                findPwType: {
                    required: '인증수단을 선택해주세요.'
                },
                findPwHp2: {
                    required: '휴대폰 번호를 입력해주세요.',
                },
                findPwHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                findPwEmail: {
                    required: '이메일을 입력해주세요.'
                },
                findPwCert: {
                    required: '본인인증을 진행해주세요.'
                },
             
            },

            groups: {
                phoneNumber: 'findPwHp2 findPwHp3'
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                // 핸드폰 번호
                if( element.attr('name') == 'findPwHp2' || element.attr('name') == 'findPwHp3' ){
                    error.appendTo( $('#findPwHp2').parents('dd') );    
                }else{
                    error.appendTo( element.parents('dd') );
                }
            },

            highlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'findPwHp2' || $(element).attr('name') == 'findPwHp3' ){
                    $('#findPwHp2').parents('dd').addClass('error');
                }else{
                    $(element).parents('dd').addClass('error');
                }
            },

            unhighlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'findPwHp2' || $(element).attr('name') == 'findPwHp3' ){
                    if( $('#findPwHp2').val() != '' && $('#findPwHp3').val() != '' ) $('#findPwHp2').parents('dd').removeClass('error');
                }else{
                    $(element).parents('dd').removeClass('error');
                }
            },

            submitHandler: function(form){                
                // fnCloseModal('.modal-cert');
                location.href="findPW.asp"
            }
        });
    });

    function fnFindPwCert(obj){
        var $this = $(obj);

        modalDialog.alert('인증번호가 발송되었습니다.');
        $this.parents('dl').find('.time').show();
    }

    // 인증타입 선택
    function fnFindPwType(obj){
        var $this = $(obj);

        // 핸드폰 인증
        if( $this.prop('id') == 'findPwType1' ){
            $this.parents('.form-type1').find('.find-type2').addClass('blind').removeClass('error').find('.error-msg').hide();
            $this.parents('.form-type1').find('.find-type1').removeClass('blind');
        }else if( $this.prop('id') == 'findPwType2' ){
            $this.parents('.form-type1').find('.find-type1').addClass('blind').removeClass('error').find('.error-msg').hide();
            $this.parents('.form-type1').find('.find-type2').removeClass('blind');
        }
    }
</script>

</div>