<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/layout.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/board.css">
<link rel="stylesheet" href="/totalWebSite/renew2019/common/css/reset.css">
<div class="pop-content pop-form dim18">
    <h4 class="pop-tit">
        �¼� ���೻�� ��ȸ
        <small>
            ��  ����� �Է��� �ڵ�����ȣ�� �Է��ϼ���
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
                <th>�̸�</th>
                <td colspan="2"><input type="text" class="input-text"></td>
            </tr>
            <tr>
                <th>�޴��� ��ȣ</th>
                <td><input type="text" class="input-text"></td>
                <td><input type="button" class="btn btn-white" value="������ȣ ����"></td>
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

    <div class="dim-btn">
        <button class="btn btn-black btn-confirm" onclick="db_pop('pop_02'); return false;">Ȯ��</button>
    </div>
    </form>
</div>

<script type="text/javascript">
    var db_pop = function(url){
        var popWidth =  "665"
        var popHeight =  "650"
        var winHeight = document.body.clientHeight; // ����â�� ����
        var winWidth = document.body.clientWidth;   // ����â�� �ʺ�
        var winX = window.screenLeft;   // ����â�� x��ǥ
        var winY = window.screenTop;    // ����â�� y��ǥ

        var popX = winX + (winWidth - popWidth)/2;
        var popY = winY + (winHeight - popHeight)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"",tOpt);

    };

</script>