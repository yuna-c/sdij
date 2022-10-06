
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <meta property="og:url" content="http://reclass.study/">
    <meta property="og:image" content="">
    <meta property="og:title" content="시대인재N">
    <meta property="og:description" content="시대인재N">
    <meta name="description" content="시대인재N">
    <meta name="title" content="시대인재N">
    <meta name="keywords" content="시대인재N">

    <title> 시대인재N </title>
    <link rel="shortcut icon" href="http://devdigital.sdij.com/favicon.png" type="image/x-icon">
    <link rel="icon" href="http://devdigital.sdij.com/favicon_32.png">
    <link rel="icon" href="http://devdigital.sdij.com/favicon_32.ico" sizes="32x32">

    <!-- S :css -->
    <link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/digital/common/css/reset.css?ver=<%=now()%>">
	<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/digital/common/css/layout.css?ver=<%=now()%>">
    <link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/digital/common/css/board.css?ver=<%=now()%>">
    <!--// E :css -->

    <!-- S :js -->
    <script type="text/javascript" src="/totalWebSite/renew2019/digital/common/js/lib/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/totalWebSite/renew2019/digital/common/js/common.js"></script>
    <!--// E :js -->

    <style type="text/css">
        .btn-L{ height:2rem; line-height:1.933333333rem; font-size:0.866666667rem; }
        .custom-file input[type="file"]{ position:absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0); border:0; }
        .custom-file .btn{ width:6.666666667rem; height:1.8rem; line-height:1.733333333rem; border-radius:0; font-size:0.666666667rem; cursor:pointer; }
        .custom-file .upload-file{ width:100%; height:1.666666667rem; line-height:1.6rem; padding:0 0.666666667rem; display:inline-block; border:none; border-radius:0; background-color:#f2f2f2; border-bottom:1px solid #000; font-size:0.6rem; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box; letter-spacing:-.05em; }
    </style>
</head>
<body>

<div id="wrap">
    <!-- S :container -->
    <section id="container" class="file-container mt50">
        <!-- S :파일찾기 -->
        <article class="content-layout">
            <div class="form-type1">
                <dl>
                    <dt>파일첨부</dt>
                    <dd>
                        <div class="custom-file flex-area">
                            <input class="upload-file" disabled="disabled">

                            <label for="pop-file" class="btn">파일찾기</label>
                            <input type="file" id="pop-file">
                        </div>
                    </dd>
                </dl>
            </div>

            <div class="txt-center mt1">
                <input type="submit" class="btn btn-black btn-L" value="파일등록">
            </div>
        </article>
        <!--// E :파일찾기 -->
    </section>
    <!--// E :container -->

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

            $(this).siblings('.upload-file').val(filename);

        });
    });
</script>

</body>
</html>
