<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 주문/결제 > (M)배송지 추가
' 모듈기능 : 시대인재 Digital > 주문/결제 > (M)배송지 추가
' 파 일 명 : incModalAdd.asp
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
<div class="modal-container modal-M modal-add">
<form id="modalAddForm" action="" method="">
    <div class="modal-header">
        <h3 class="tit-dep4">배송지 추가</h3>
    </div>

    <div class="modal-content">
        <!-- S : 배송지 추가 폼 -->
        <div class="form-type1">
            <dl>
                <dt>배송지명</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="addTit" id="addTit" placeholder="배송지명을 입력해주세요.">
                    </label>
                </dd>

                <dt>이름</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="addName" id="addName" placeholder="이름을 입력해주세요.">
                    </label>
                </dd>

                <dt>휴대폰번호</dt>
                <dd class="row">
                    <span>
                        <label class="select">
                            <select name="addHp1" id="addHp1">
                                <option value="">010</option>
                            </select>
                        </label>
                    </span>

                    <span>
                        <label class="input-text">
                            <input type="tel" name="addHp2" id="addHp2" minlength="3" maxlength="4">
                        </label>
                    </span>

                    <span>
                        <label class="input-text">
                            <input type="tel" name="addHp3" id="addHp3" minlength="4" maxlength="4">
                        </label>
                    </span>
                </dd>

                <dt>주소</dt>
                <dd class="row">
                    <span class="col-75">
                        <label class="input-text">
                            <input type="text" name="addAdd1" id="addAdd1" readonly placeholder="우편번호">
                        </label>
                    </span>

                    <span class="col-25">
                        <input type="button" name="addSearch" class="btn btn-gray btn-L" value="검색">
                    </span>
                </dd>
                <dd>
                    <label class="input-text">
                        <input type="text" name="addAdd2" id="addAdd2" readonly placeholder="주소">
                    </label>
                </dd>
                <dd>
                    <label class="input-text">
                        <input type="text" name="addAdd3" id="addAdd3" placeholder="나머지 주소">
                    </label>
                </dd>

                <dt>배송 메시지</dt>
                <dd>
                    <label class="input-text">
                        <input type="text" name="addMsg" id="addMsg" placeholder="배송 메시지를 입력해주세요.">
                    </label>
                </dd>
            </dl>
        </div>
        <!--// E : 배송지 추가 폼 -->
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-add');" class="btn btn-gray">닫기</a>
        <input type="submit" value="저장하기" class="btn btn-black">
    </div>
</form>

<script type="text/javascript">
    $(function(){    
        $('#modalAddForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                addTit: {
                    required: true
                },
                addName: {
                    required: true
                },
                addHp2: {
                    required: true,
                },
                addHp3: {
                    required: true,
                },
                addAdd1: {
                    required: true
                },
                addAdd3: {
                    required: true
                }
            },

            // 메시지
            messages: {
                addTit: {
                    required: '배송지명을 입력해주세요.'
                },
                addName: {
                    required: '이름을 입력해주세요.'
                },
                addHp2: {
                    required: '휴대폰 번호를 입력해주세요.',
                },
                addHp3: {
                    required: '휴대폰 번호를 입력해주세요.'
                },
                addAdd1: {
                    required: '검색을 눌러 주소를 검색해주세요.'
                },
                addAdd3: {
                    required: '나머지 주소를 입력해주세요.'
                }
            },

            groups: {
                phoneNumber: 'addHp2 addHp3'
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                // 핸드폰 번호
                if( element.attr('name') == 'addHp2' || element.attr('name') == 'addHp3' ){
                    error.appendTo( $('#addHp2').parents('dd') );    
                }else{
                    error.appendTo( element.parents('dd') );
                }
            },

            highlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'addHp2' || $(element).attr('name') == 'addHp3' ){
                    $('#addHp2').parents('dd').addClass('error');
                }else{
                    $(element).parents('dd').addClass('error');
                }
            },

            unhighlight: function(element, errorClass){
                // 핸드폰 번호
                if( $(element).attr('name') == 'addHp2' || $(element).attr('name') == 'addHp3' ){
                    if( $('#addHp2').val() != '' && $('#addHp3').val() != '' ) $('#addHp2').parents('dd').removeClass('error');
                }else{
                    $(element).parents('dd').removeClass('error');
                }
            },

            submitHandler: function(form){                
                fnCloseModal('.modal-add');
            }
        });
    });
</script>

</div>