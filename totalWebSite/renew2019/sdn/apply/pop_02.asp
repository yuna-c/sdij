<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/layout.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/board.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/reset.css">
<!-- S : dim16 : 장학대상자 / 합격자 조회 -->
    <div class="pop-content pop-form dim16">
        <h4 class="pop-tit">2020 시대인재 N 재수종합<br>장학대상자 / 합격자 조회</h4>

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
                <tr class="info-txt">
                    <th>&nbsp;</th>
                    <td colspan="2">* 접수시 입력했던 휴대폰 번호를 입력하세요</td>
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

        <div class="dim-btn"><button onclick="db_pop('pop_03'); return false;" class="btn btn-black">확인</button></div>
        </form>
    </div>
    <!--// E : dim16 : 장학대상자 / 합격자 조회 -->

<script type="text/javascript">
    var db_pop = function(url){
        var popWidth =  "700"
        var popHeight =  "650"
        var winHeight = document.body.clientHeight; // 현재창의 높이
        var winWidth = document.body.clientWidth;   // 현재창의 너비
        var winX = window.screenLeft;   // 현재창의 x좌표
        var winY = window.screenTop;    // 현재창의 y좌표

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"문자수신DB등록",tOpt);

    };
</script>