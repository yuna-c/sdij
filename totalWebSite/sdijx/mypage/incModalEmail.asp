<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 마이페이지 > 내정보관리 > (M)이메일주소 수정/인증
' 모듈기능 : 시대인재 Digital > 마이페이지 > 내정보관리 > (M)이메일주소 수정/인증
' 파 일 명 : incModalEmall.asp
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
<div class="modal-container modal-M modal-email">
<form id="modalEmailForm" action="" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">
            이메일주소 수정
        </h3>
    </div>

    <div class="modal-content">
        <!-- S : 이메일주소 수정 폼 -->
        <div class="form-type1">
            <dl>
                <dt>변경할 이메일주소</dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text">
                            <input type="email" name="editEmail" id="editEmail" placeholder="이메일 주소를 입력해주세요.">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnEmailEdit(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt>
                    인증번호
                </dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text input-cert">
                            <input type="tel" name="editEmailCert" id="editEmailCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                            <span class="time color-red">3:00</span>
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" class="btn btn-gray btn-L" value="확인">
                    </span>
                </dd>
            </dl>
        </div>
        <!--// E : 이메일주소 수정 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-email');" class="btn btn-gray">닫기</a>
        <input type="submit" value="수정하기" class="btn btn-black">
    </div>
</form>
</div>

<script type="text/javascript">
    $(function(){    
        $('#modalEmailForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                editEmail: {
                    required: true
                },
                editEmailCert: {
                    required: true
                },
            },

            // 메시지
            messages: {
                editEmail: {
                    required: '이메일 주소를 입력해주세요.'
                },
                editEmailCert: {
                    required: '본인인증을 진행해주세요.'
                },
             
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

            // focus out
            onfocusout: function(element) {
                $(element).valid();
            },

            submitHandler: function(form){                
                fnCloseModal('.modal-email');
            }
        });
    });

    // 인증번호발송
    function fnEmailEdit(obj){
        var $this = $(obj);

        modalDialog.alert('인증번호가 발송되었습니다.');
        $this.parents('dl').find('.time').show();
    }
</script>