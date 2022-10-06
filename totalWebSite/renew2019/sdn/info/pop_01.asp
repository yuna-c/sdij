<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/layout.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/board.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/reset.css">
<div class="pop-content pop-form dim18">
    <h4 class="pop-tit">
        좌석 예약내역 조회
        <small>
            ※  예약시 입력한 핸드폰번호를 입력하세요
        </small>
    </h4>
    <form action="" method="">
    <table>
        <colgroup>
            <col style="width:80px;">
            <col style="width:auto;">
            <col style="width:100px;">
        </colgroup>
        <tbody>
            <tr>
                <th>이름</th>
                <td colspan="2"><input type="text" class="input-text"></td>
            </tr>
            <tr>
                <th>휴대폰 번호</th>
                <td><input type="text" class="input-text"></td>
                <td><input type="button" class="btn btn-white" value="인증번호 전송"></td>
            </tr>
            <tr>
                <th>인증번호</th>
                <td colspan="2"><div class="cert-form">
                    <input type="text" maxlength="6" class="input-text" placeholder="인증번호">
                    <span class="cert-txt">3:00</span>
                </div></td>
            </tr>
        </tbody>
    </table>

    <div class="dim-btn">
        <button class="btn btn-black btn-confirm" onclick="db_pop('pop_02'); return false;">확인</button>
    </div>
    </form>
</div>

<script type="text/javascript">
    var db_pop = function(url){
        var popWidth =  "665"
        var popHeight =  "650"
        var winHeight = document.body.clientHeight; // 현재창의 높이
        var winWidth = document.body.clientWidth;   // 현재창의 너비
        var winX = window.screenLeft;   // 현재창의 x좌표
        var winY = window.screenTop;    // 현재창의 y좌표

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"",tOpt);

    };

</script>