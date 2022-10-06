<div class="modal-container modal-S modal-password">
    <div class="modal-content">
        <h3 class="modal-tit">
            <i class="ico-lock"></i>

            회원 확인을 위해<br>
            비밀번호를 입력해주세요.
        </h3>

        <label class="input-text mt20">
            <input type="password" placeholder="비밀번호 입력">
        </label>
    </div>

    <div class="modal-btn">
        <a href="javascript:void(0)" onclick="fnCloseModal('.modal-password')" class="btn btn-gray">닫기</a>
        <a href="javascript:void(0)" onclick="fnTabOpen(this);" class="btn btn-black">확인</a>
    </div>
</div>

<script>
    function fnTabOpen(obj){
        // var $this = $(obj);

        // $this.parents('.modal-wrap').prev('#container').find('.tab-content').show();
        fnCloseModal('.modal-password');
    }
</script>