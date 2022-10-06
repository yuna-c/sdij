<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 멤버 > 회원가입 > (M)휴대폰 인증
' 모듈기능 : 시대인재 Digital > 멤버 > 회원가입 > (M)휴대폰 인증
' 파 일 명 : incModalcert.asp
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
<div class="modal-container modal-M modal-cert">
<form id="modalCertForm" action="" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">
            휴대폰 인증
        </h3>
    </div>

    <div class="modal-content">
        <!-- S : 휴대폰 인증 폼 -->
        <div class="form-type1">
            <dl>
                <dt>이름</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="certName" id="certName" placeholder="이름을 입력해주세요.">
                    </label>
                </dd>

                <dt>휴대폰번호</dt>
                <dd class="row">
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
        <!--// E : 휴대폰 인증 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-cert');" class="btn btn-gray">닫기</a>
        <input type="submit" value="저장하기" class="btn btn-black">
    </div>
</form>

<script type="text/javascript">
    $(function(){    
        $('#modalCertForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                certName: {
                    required: true
                },
                certHp2: {
                    required: true,
                },
                certHp3: {
                    required: true,
                },
                certCert: {
                    required: true,
                },
               
            },

            // 메시지
            messages: {
                certName: {
                    required: '이름을 입력해주세요.'
                },
                certHp2: {
                    required: '휴대폰 번호를 입력해주세요.',
                },
                certHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                certCert: {
                    required: '휴대폰 인증을 진행해주세요.'
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

            submitHandler: function(form){                
                // fnCloseModal('.modal-cert');
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