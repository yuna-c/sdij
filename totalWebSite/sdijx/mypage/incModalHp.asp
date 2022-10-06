<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 마이페이지 > 내정보관리 > (M)휴대전화번호 수정/인증
' 모듈기능 : 시대인재 Digital > 마이페이지 > 내정보관리 > (M)휴대전화번호 수정/인증
' 파 일 명 : incModalHp.asp
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
<div class="modal-container modal-M modal-hp">
<form id="modalHpForm" action="" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">
            휴대전화번호 수정
        </h3>
    </div>

    <div class="modal-content">
        <!-- S : 휴대전화번호 수정 폼 -->
        <div class="form-type1">
            <dl>
                <dt>변경할 휴대전화번호</dt>
                <dd class="row">
                    <span class="col-25">
                        <label class="select">
                            <select name="editHp1" id="editHp1">
                                <option value="">010</option>
                            </select>
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="editHp2" id="editHp2" minlength="3" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <label class="input-text">
                            <input type="tel" name="editHp3" id="editHp3" minlength="4" maxlength="4">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" onclick="fnHpEdit(this);" class="btn btn-gray btn-L" value="인증하기">
                    </span>
                </dd>

                <dt>
                    인증번호
                </dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text input-cert">
                            <input type="tel" name="editHpCert" id="editHpCert" minlength="6" maxlength="6" placeholder="인증번호 입력">

                            <span class="time color-red">3:00</span>
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" class="btn btn-gray btn-L" value="확인">
                    </span>
                </dd>
            </dl>
        </div>
        <!--// E : 휴대전화번호 수정 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-hp');" class="btn btn-gray">닫기</a>
        <input type="submit" value="수정하기" class="btn btn-black">
    </div>
</form>
</div>

<script type="text/javascript">
    $(function(){    
        $('#modalHpForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                editHp2: {
                    required: true
                },
                editHp3: {
                    required: true
                },
                editHpCert: {
                    required: true
                },
            },

            // 메시지
            messages: {
                editHp2: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                editHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                editHpCert: {
                    required: '본인인증을 진행해주세요.'
                },
             
            },

            groups: {
                phoneNumber: 'editHp2 editHp3'
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                // 핸드폰 번호
                if( element.attr('name') == 'editHp2' || element.attr('name') == 'editHp3' ){
                    error.appendTo( $('#editHp2').parents('dd') );    
                }else{
                    error.appendTo( element.parents('dd') );
                }
            },

            highlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'editHp2' || $(element).attr('name') == 'editHp3' ){
                    $('#editHp2').parents('dd').addClass('error');
                }else{
                    $(element).parents('dd').addClass('error');
                }
            },

            unhighlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'editHp2' || $(element).attr('name') == 'editHp3' ){
                    if( $('#editHp2').val() != '' && $('#editHp3').val() != '' ) $('#editHp2').parents('dd').removeClass('error');
                }else{
                    $(element).parents('dd').removeClass('error');
                }
            },

            // focus out
            onfocusout: function(element) {
                $(element).valid();
            },

            submitHandler: function(form){                
                fnCloseModal('.modal-hp');
            }
        });
    });

    // 인증번호발송
    function fnHpEdit(obj){
        var $this = $(obj);

        modalDialog.alert('인증번호가 발송되었습니다.');
        $this.parents('dl').find('.time').show();
    }
</script>