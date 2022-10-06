<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 / (M)아이디 찾기
' 모듈기능 : 시대인재 Digital > 멤버 > 아이디/비밀번호 찾기 / (M)아이디 찾기
' 파 일 명 : incModalId.asp
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
<div class="modal-container modal-M modal-id">
<form id="modalfindIdForm" action="" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">
            아이디 찾기
        </h3>
    </div>

    <div class="modal-content">
        <!-- S : 아이디 찾기 폼 -->
        <div class="form-type1">
            <dl>
                <dt>이름</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="findIdName" id="findIdName" placeholder="이름을 입력해주세요.">
                    </label>
                </dd>

                <dt>인증수단</dt>
                <dd>
                    <label class="input-radio">
                        <input type="radio" name="findIdType" id="findIdType1" checked="checked" onchange="fnFindIdType(this);">
                        <i class="ico-radio"></i>
                        휴대전화번호
                    </label>

                    <label class="input-radio">
                        <input type="radio" name="findIdType" id="findIdType2" onchange="fnFindIdType(this);">
                        <i class="ico-radio"></i>
                        이메일주소
                    </label>
                </dd>

                <dt class="find-type1">휴대전화번호</dt>
                <dd class="find-type1 row">
                    <span class="col-25">
                        <label class="select">
                            <select name="findHp1" id="findHp1">
                                <option value="">010</option>
                            </select>
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="findHp2" id="findHp2" minlength="3" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="findHp3" id="findHp3" minlength="4" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnFindIdCert(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt class="find-type2 blind">이메일주소</dt>
                <dd class="find-type2 blind row">
                    <span class="col-75">
                        <label class="input-text">
                            <input type="email" name="findIdEmail" id="findIdEmail">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnFindIdCert(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt>
                    인증번호
                </dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text input-cert">
                            <input type="tel" name="findIdCert" id="findIdCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                            <span class="time color-red">3:00</span>
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" class="btn btn-gray btn-L" value="확인">
                    </span>
                </dd>
            </dl>
        </div>
        <!--// E : 아이디 찾기 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-id');" class="btn btn-gray">닫기</a>
        <input type="submit" value="저장하기" class="btn btn-black">
    </div>
</form>

<script type="text/javascript">
    $(function(){    
        $('#modalfindIdForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                findIdName: {
                    required: true
                },
                findIdType: {
                    required: true
                },
                findIdHp2: {
                    // findIdType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#findIdType1:checked").val(); } }
                },
                findIdHp3: {
                    // findIdType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#findIdType1:checked").val(); } }
                },
                findIdEmail: {
                    // findIdType 선택 시 필수 기재 변경
                    required: { depends: function(element){ return $("#findIdType2:checked").val(); } }
                },
                findIdCert: {
                    required: true,
                },
               
            },

            // 메시지
            messages: {
                findIdName: {
                    required: '이름을 입력해주세요.'
                },
                findIdType: {
                    required: '인증수단을 선택해주세요.'
                },
                findIdHp2: {
                    required: '휴대폰 번호를 입력해주세요.',
                },
                findIdHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                findIdEmail: {
                    required: '이메일을 입력해주세요.'
                },
                findIdCert: {
                    required: '본인인증을 진행해주세요.'
                },
             
            },

            groups: {
                phoneNumber: 'findIdHp2 findIdHp3'
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                // 핸드폰 번호
                if( element.attr('name') == 'findIdHp2' || element.attr('name') == 'findIdHp3' ){
                    error.appendTo( $('#findIdHp2').parents('dd') );    
                }else{
                    error.appendTo( element.parents('dd') );
                }
            },

            highlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'findIdHp2' || $(element).attr('name') == 'findIdHp3' ){
                    $('#findIdHp2').parents('dd').addClass('error');
                }else{
                    $(element).parents('dd').addClass('error');
                }
            },

            unhighlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'findIdHp2' || $(element).attr('name') == 'findIdHp3' ){
                    if( $('#findIdHp2').val() != '' && $('#findIdHp3').val() != '' ) $('#findIdHp2').parents('dd').removeClass('error');
                }else{
                    $(element).parents('dd').removeClass('error');
                }
            },

            submitHandler: function(form){                
                // fnCloseModal('.modal-cert');
                location.href="findIDEnd.asp"
            }
        });
    });

    function fnFindIdCert(obj){
        var $this = $(obj);

        modalDialog.alert('인증번호가 발송되었습니다.');
        $this.parents('dl').find('.time').show();
    }

    // 인증타입 선택
    function fnFindIdType(obj){
        var $this = $(obj);

        // 핸드폰 인증
        if( $this.prop('id') == 'findIdType1' ){
            $this.parents('.form-type1').find('.find-type2').addClass('blind').removeClass('error').find('.error-msg').hide();
            $this.parents('.form-type1').find('.find-type1').removeClass('blind');
        }else if( $this.prop('id') == 'findIdType2' ){
            $this.parents('.form-type1').find('.find-type1').addClass('blind').removeClass('error').find('.error-msg').hide();
            $this.parents('.form-type1').find('.find-type2').removeClass('blind');
        }
    }
</script>

</div>