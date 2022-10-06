<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 멤버 > 회원가입 > (M)보호자 인증
' 모듈기능 : 시대인재 Digital > 멤버 > 회원가입 > (M)보호자 인증
' 파 일 명 : incModalConfirm.asp
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
<div class="modal-container modal-M modal-confirm">
<form id="modalConfirmForm" action="/joinStep1.asp" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">
            보호자 인증
        </h3>
    </div>

    <div class="modal-content">
        <!-- S : 보호자 인증 폼 -->
        <div class="form-type1">
            <dl>
                <dt class="blind">안내문구</dt>
                <dd>
                    <i class="ico-alert"></i>
                    14세 미만 어린이에 경우 보호자 인증이 필요합니다.
                </dd>

                <dt>보호자 이름</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="conName" id="conName" placeholder="보호자 이름을 입력해주세요.">
                    </label>
                </dd>

                <dt>보호자 휴대폰번호</dt>
                <dd class="row">
                    <span class="col-25">
                        <label class="select">
                            <select name="conHp1" id="conHp1">
                                <option value="">010</option>
                            </select>
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="conHp2" id="conHp2" minlength="3" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="conHp3" id="conHp3" minlength="4" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnHpCert(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt>인증번호</dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text input-cert">
                            <input type="tel" name="conCert" id="conCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                            <span class="time color-red">3:00</span>
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" class="btn btn-gray btn-L" value="확인">
                    </span>
                </dd>
            </dl>
        </div>
        <!--// E : 보호자 인증 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-confirm');" class="btn btn-gray">닫기</a>
        <input type="submit" value="확인" class="btn btn-black">
    </div>
</form>

<script type="text/javascript">
    $(function(){    
        $('#modalConfirmForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                conName: {
                    required: true
                },
                conHp2: {
                    required: true,
                },
                conHp3: {
                    required: true,
                },
                conCert: {
                    required: true,
                },
               
            },

            // 메시지
            messages: {
                conName: {
                    required: '보호자 이름을 입력해주세요.'
                },
                conHp2: {
                    required: '휴대폰 번호를 입력해주세요.',
                },
                conHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                conCert: {
                    required: '휴대폰 인증을 진행해주세요.'
                },
             
            },

            groups: {
                phoneNumber: 'conHp2 conHp3'
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                // 핸드폰 번호
                if( element.attr('name') == 'conHp2' || element.attr('name') == 'conHp3' ){
                    error.appendTo( $('#conHp2').parents('dd') );    
                }else{
                    error.appendTo( element.parents('dd') );
                }
            },

            highlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'conHp2' || $(element).attr('name') == 'conHp3' ){
                    $('#conHp2').parents('dd').addClass('error');
                }else{
                    $(element).parents('dd').addClass('error');
                }
            },

            unhighlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'conHp2' || $(element).attr('name') == 'conHp3' ){
                    if( $('#conHp2').val() != '' && $('#conHp3').val() != '' ) $('#conHp2').parents('dd').removeClass('error');
                }else{
                    $(element).parents('dd').removeClass('error');
                }
            },

            submitHandler: function(form){                
                // fnCloseModal('.modal-confirm');
                location.href="joinStep1.asp"
            }
        });
    });

    function fnHpCert(obj){
        var $this = $(obj);

        modalDialog.alert('인증번호가 발송되었습니다.');
        $this.parents('dl').find('.time').show();
    }
</script>

</div>