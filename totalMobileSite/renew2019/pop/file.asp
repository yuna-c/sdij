
<meta name="viewport" content="width=device-width, initial-scale=1, minmum-scale=1, mixmum-scale=1">
<script type="text/javascript">
$(function(){
    var fileTarget = $('*[data-form="file"] .file_hidden');
    fileTarget.on('change', function(){ // ���� ����Ǹ�
    if(window.FileReader){ // modern browser
        var filename = $(this)[0].files[0].name;
    } else { // old IE
        var filename = $(this).val().split('/').pop().split('\\').pop(); // ���ϸ� ����
    } // ������ ���ϸ� ����
    $(this).siblings('.file_name').val(filename); });
});
</script>
<!-- S : ������ ���� -->
<div data-popup="pop" style="width:100%;max-width:640px;border: 1px solid #000000;">
    <div style="padding: 5% 4%">
        <h1 style="font-size:24px;color:#000000;margin:0 0 30px 0">���ϵ��</h1>
        <form name="fileForm" id="fileForm" method="post">
            <input type="hidden" name="sTagNm"    value="self_pic_fname">
            <input type="hidden" name="sFileNm"   value="">
            <input type="hidden" name="sFolderCd" value="">
            <input type="hidden" name="sFolderNm" value="jaejong/exam_app_face">
            <input type="hidden" name="sGubun"    value="face">
            <fieldset style="border: 0;margin:0;padding:0">
                <dl style="margin:0;position: relative;padding: 0 0 30px 0;overflow:hidden;">
                    <dt style="display:inline-block; width:23%;color: #000000;left: 0;top: 10px;padding: 0;line-height: 40px;font-size: 14px;min-width:55px">���ϵ��</dt>
                    <dd style="display:inline-block; width:75%; margin:0">
                        <span data-form="file" style="display:block;">
                            <input type="text" readonly="readonly" class="file_name" style="padding: 0 20px;font-size: 14px;margin: 0 10px 0 0;width:57%;height: 40px;border: 1px solid #000000;box-sizing: border-box;">
                            <input type="file" id="sFile" name="sFile" class="file_hidden" accept='image/*' style="position: absolute;width: 1px;height: 1px;padding: 0; margin: -1px;overflow: hidden;clip: rect(0,0,0,0);border: 0;">
                            <label for="sFile" data-btn="whitegray" style="font-size: 14px;color: #fff;text-align: center; border-radius: 0; font-weight:600;width:36%;vertical-align: top;height: 40px;line-height: 40px; display: inline-block; padding: 0;cursor: pointer;border:1px #000000 solid; box-sizing: border-box; color:#000000;">����ã��</label>
                        </span>
                    </dd>
                </dl>
            </fieldset>


        </form>
        <div style="text-align: right;">
            <button type="submit" data-btn="navy" onclick="IfFileUp()" style="cursor:pointer;height: 40px;line-height: 40px;font-size:18px;background: #000000;display: inline-block;padding: 0;width: 120px;color: #fff;text-align: center;border-radius: 0;vertical-align: top;border:0">Ȯ��</button>
        </div>
    </div>
</div>
<!--// E : ������ ���� -->
<script type="text/javascript">

// WEB <-> FILE ���� ���� ó��
document.domain = "sdij.com" ;

$(function(){
    var fileTarget = $('*[data-form="file"] .file_hidden');
    fileTarget.on('change', function() {
        if(window.FileReader) {
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop(); // ���ϸ� ����
        }

        $(this).siblings('.file_name').val(filename);
    });
});


// ���ε� ���� ������ ����
var IfFileUp = function(){

    var sFile = $("input[name='sFile']").val();

    if (sFile == "") {
        alert("����� ������ �����ϼ���.");
    }

    $("#fileForm").ajaxForm({
        url: "/file_proc.asp",
        enctype: "multipart/form-data", // ���⿡ url�� enctype�� �� �������־�� �ϴ� �κ��̸� multipart�� ���������� ������ controller�� ������ ���� �� ����
        contentType : "application/x-www-form-urlencoded; charset=UTF-8",
        async: false,
        dataType: "json",
        success: function(msg) {
            if (msg.status == "200") {
                // �θ�â�� ���ε��� ���� ��� ����Ʈ�� �߰� �� �� �ֵ���, ���� �߰� �Լ� ȣ��
                // �θ�â �����Լ� ȣ�� -> javascript:file_add(������, ���ϸ�)
                //$(opener.document.location).attr("href", "javascript:file_add(msg.resultFile);");
                opener.location.href = "javascript:file_add('self_pic_fname','"+ msg.resultFile +"');";
                self.close();
            } else {
                alert(msg.result);
            }
        },
        error : function(data, msg) {
            alert("�����ڿ��� �����ϼ���.(" + msg + ")");
        }
    });

    $("#fileForm").submit();
};
</script>