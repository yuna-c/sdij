<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/layout.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/board.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/reset.css">
<!-- S : dim16 : ���д���� / �հ��� ��ȸ -->
    <div class="pop-content pop-form dim16">
        <h4 class="pop-tit">2020 �ô����� N �������<br>���д���� / �հ��� ��ȸ</h4>

        <form action="" method="">
        <table>
            <colgroup>
                <col style="width:80px;">
                <col style="width:auto;">
                <col style="width:100px;">
            </colgroup>
            <tbody>
                <tr>
                    <th>�̸�</th>
                    <td colspan="2"><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>�޴��� ��ȣ</th>
                    <td><input type="text" class="input-text"></td>
                    <td><input type="button" class="btn btn-white" value="������ȣ ����"></td>
                </tr>
                <tr class="info-txt">
                    <th>&nbsp;</th>
                    <td colspan="2">* ������ �Է��ߴ� �޴��� ��ȣ�� �Է��ϼ���</td>
                </tr>
                <tr>
                    <th>������ȣ</th>
                    <td colspan="2"><div class="cert-form">
                        <input type="text" maxlength="6" class="input-text" placeholder="������ȣ">
                        <span class="cert-txt">3:00</span>
                    </div></td>
                </tr>
            </tbody>
        </table>

        <div class="dim-btn"><button onclick="db_pop('pop_03'); return false;" class="btn btn-black">Ȯ��</button></div>
        </form>
    </div>
    <!--// E : dim16 : ���д���� / �հ��� ��ȸ -->

<script type="text/javascript">
    var db_pop = function(url){
        var popWidth =  "700"
        var popHeight =  "650"
        var winHeight = document.body.clientHeight; // ����â�� ����
        var winWidth = document.body.clientWidth;   // ����â�� �ʺ�
        var winX = window.screenLeft;   // ����â�� x��ǥ
        var winY = window.screenTop;    // ����â�� y��ǥ

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"���ڼ���DB���",tOpt);

    };
</script>