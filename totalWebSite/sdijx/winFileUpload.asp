
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width" />

    <meta property="og:url" content="//www.sdij.com/" />
    <meta property="og:image" content="//img.sdij.com/sd2019/pc/logo.png" />
    <meta property="og:title" content="시대인재" />
    <meta property="og:description" content="시대인재대치, 시대인재분당, 시대인재재수종합N, 시대인재북스, 대입전문컨설팅" />
    <meta property="og:site_name" content="시대인재" />
    <meta name="description" content="시대인재대치, 시대인재분당, 시대인재재수종합N, 시대인재북스, 대입전문컨설팅" />
    <meta name="title" content="시대인재" />
    <meta name="keywords" content="9월 모평,수능 대비, 시대인재, 시대인재 서바이벌, 서바이벌 모의고사" />

    <title> 시대인재 </title>
    <link rel="shortcut icon" href="//img.sdij.com/sd2019/favicon.png" type="image/x-icon" />
    <link rel="icon" href="//img.sdij.com/sd2019/favicon_32.png" />
    <link rel="icon" href="//img.sdij.com/sd2019/favicon_32.ico" sizes="32x32" />

    <link rel="stylesheet" type="text/css" href="//www.sdijx.co.kr/common/css/reset.css?ver=<%=Now()%>">
    <script type="text/javascript" src="//www.sdijx.co.kr/common/js/lib/jquery-3.4.1.min.js"></script>

    <style type="text/css">
        [class^='ico']{ display:inline-block; position:relative; top:-1px; background-position:50% 0; background-size:100% 100%; background-repeat:no-repeat; text-indent:-9999px; vertical-align:middle; }
        .ico-file{ width:40px; height:40px; background-image:url(//img.sdij.com/sdijx/common/ico_file.png); }

        .btn{ height:40px; line-height:38px; padding:0 20px; display:inline-block; position:relative; background-color:#fff; border:none; border:1px solid #000; border:1px solid #000; border-radius:20px; font-size:14px; font-weight:700; letter-spacing:-0.44px; text-align:center; vertical-align:top; overflow:hidden; transition:all .3s ease-out .3s; }
        .btn:hover{ background-color:#fff; border-color:#7f7f7f; color:#7f7f7f; transition:all .3s ease-out .3s; }

        .custom-file{ margin:0 -5px; display:flex; }
        .custom-file > *{ margin:0 5px; flex:1; }
        .custom-file .upload-file input{ width:100%; height:40px; line-height:38px; padding:0 20px; display:inline-block; border:none; border-radius:0; background-color:#f2f2f2; border-bottom:1px solid #000; font-size:14px; letter-spacing:-0.5px; vertical-align:top; cursor:default; }
        .custom-file .btn{ width:100px; flex:inherit; cursor:pointer; }
        .custom-file input[type="file"]{ position:absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0); border:0; }

        html, body{ height:100%; }
        .win-wrap{ height:100%; padding:0 40px; display:flex; position:relative; justify-content:center; flex-direction:column; }

        .win-tit{ margin-bottom:20px; font-size:18px; font-weight:500; letter-spacing:-0.5px; }
        .win-tit [class^='ico']:first-child{ display:block; }

        .win-btn{ margin-top:20px; }
        .win-btn .btn{ width:100%; background-color:#000; color:#fff; }
    </style>
</head>
<body>

<div class="win-wrap">
    <h2 class="win-tit">
        <i class="ico-file"></i>
        파일등록
    </h2>

    <div class="custom-file">
        <label class="upload-file">
            <input type="text" disabled="disabled" placeholder="파일을 선택해주세요.">
        </label>

        <label for="pop-file" class="btn">파일 찾기</label>
        <input type="file" id="pop-file">
    </div>

    <div class="win-btn">
        <a href="javascript:void(0)" class="btn">파일 등록</a>
    </div>
</div>

<script>
    $(function(){
        var inputFile = $('#pop-file');

        inputFile.on('change', function(){
            if(window.FileReader){ 
                var filename = $(this)[0].files[0].name; 
            }else{ 
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }

            $(this).siblings('.upload-file').find('input').val(filename);
        });
    });
</script>

</body>
</html>