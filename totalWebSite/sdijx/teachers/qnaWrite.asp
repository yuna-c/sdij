<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 선생님 게시판 > 학습질문답변 질문하기
' 모듈기능: 시대인재 Digital > 선생님 게시판 > 학습질문답변 질문하기
' 파 일 명: qnaWrite.asp
' 작성일자: 
' 작 성 자: 
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/teachers.css?ver=<%=Now()%>">
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S: container -->
    <section id="container" class="board-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>선생님 홈</span>
                        <span>학습질문 / 답변</span>
                        <span class="color-black">학습질문 작성하기</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                            학습질문 작성하기
                        </span>
                        <small>김준식 선생님 수업에 대해<br>궁금한 점을 자세하게 작성해주세요.</small>
                    </h2>
                </div>

                <!-- S : 학습질문 작성하기 -->
                <form id="qnaForm" action="" method="">
                    <div class="form-type1 form-qna">
                        <dl>
                            <dt>질문 유형</dt>
                            <dd>
                                <label class="select">
                                    <select name="qnaType" id="qnaType" onchange="fnQnaType(this);">
                                        <option hidden disabled selected>유형을 선택해주세요.</option>
                                        <option value="1">강좌</option>
                                        <option value="2">교재</option>
                                        <option value="3">학습법</option>
                                        <option value="4">커리큘럼</option>
                                        <option value="5">기타</option>
                                    </select>
                                </label>
                            </dd>

                            <!-- S: 질문 유형이 강좌 일 경우 노출 -->
                            <dt class="qna-type1">질문 강좌</dt>
                            <dd class="qna-type1">
                                <label class="select">
                                    <select name="qnaSel2">
                                        <option hidden disabled selected>강좌를 선택해주세요.</option>
                                        <option value="">수강중인 강좌명</option>
                                    </select>
                                </label>
                            </dd>

                            <dt class="qna-type1">질문 강의</dt>
                            <dd class="qna-type1 row">
                                <span class="col-60">
                                    <label class="select">
                                        <select>
                                            <option hidden disabled selected>강의를 선택해주세요.</option>
                                            <option value="">강의명</option>
                                        </select>
                                    </label>
                                </span>

                                <span class="col-40">
                                    <label class="input-text input-ico">
                                        <i class="ico-clock"></i>

                                        <input type="text" class="qna-time" maxlength="8" placeholder="타임코드 입력">
                                    </label>
                                </span>
                            </dd>
                            <!--// E: 질문 유형이 강좌 일 경우 노출 -->

                            <!-- S: 질문 유형이 교재 일 경우 노출 -->
                            <dt class="qna-type2">질문 교재</dt>
                            <dd class="qna-type2 row">
                                <span class="col-60">
                                    <label class="select">
                                        <select>
                                            <option hidden disabled selected>교재를 선택해주세요.</option>
                                            <option value="">교재명</option>
                                        </select>
                                    </label>
                                </span>

                                <span class="col-40">
                                    <label class="input-text input-ico">
                                        <i class="ico-page"></i>

                                        <input type="tel" placeholder="교재페이지 입력">
                                    </label>
                                </span>
                            </dd>
                            <!--// E: 질문 유형이 교재 일 경우 노출 -->

                            <dt>제목</dt>
                            <dd>
                                <label class="input-text">
                                    <input type="text" name="qnaTitle" id="qnaTitle" placeholder="제목을 입력해주세요.">
                                </label>
                            </dd>

                            <dt>내용</dt>
                            <dd>
                                <div class="textarea">
                                    <textarea name="qnaContent" id="qnaContent" placeholder="내용을 입력해주세요."></textarea>
                                </div>
                            </dd>

                            <dt>첨부파일</dt>
                            <dd>
                                <a href="javascript:void(0)" class="btn" onclick="fileOpen(this);">파일 선택</a>

                                <p class="txt-info">
                                    <i class="ico-alert">!</i> 10MB 이하의 파일을 최대 5개까지 첨부하실 수 있습니다.<br>(exe, zip 등 일부 파일은 첨부 제외)
                                </p>

                                <div class="file-area">
                                    <a href="javascript:void(0)" class="btn btn-gray" onclick="fileDel(this);"><i class="ico-file"></i> 파일명파일명파일명파일명파일명.jpg <i class="ico-close-g"></i></a>
                                    <a href="javascript:void(0)" class="btn btn-gray" onclick="fileDel(this);"><i class="ico-file"></i> 파일명파일명.jpg <i class="ico-close-g"></i></a>
                                    <a href="javascript:void(0)" class="btn btn-gray" onclick="fileDel(this);"><i class="ico-file"></i> 파일명파일명.jpg <i class="ico-close-g"></i></a>
                                    <a href="javascript:void(0)" class="btn btn-gray" onclick="fileDel(this);"><i class="ico-file"></i> 파일명파일명.jpg <i class="ico-close-g"></i></a>
                                    <a href="javascript:void(0)" class="btn btn-gray" onclick="fileDel(this);"><i class="ico-file"></i> 파일명파일명.jpg <i class="ico-close-g"></i></a>
                                </div>
                            </dd>

                            <dt>공개여부</dt>
                            <dd>
                                <label class="input-radio">
                                    <input type="radio" checked="checked" name="qnaOpen">
                                    <i class="ico-radio"></i>
                                    공개
                                </label>

                                <label class="input-radio">
                                    <input type="radio" name="qnaOpen">
                                    <i class="ico-radio"></i>
                                    비공개
                                </label>
                            </dd>

                            <dt>답변알림</dt>
                            <dd>
                                <label class="input-radio">
                                    <input type="radio" checked="checked" name="qnaNoti">
                                    <i class="ico-radio"></i>
                                    SMS 알림받기
                                </label>

                                <label class="input-radio">
                                    <input type="radio" name="qnaNoti">
                                    <i class="ico-radio"></i>
                                    카카오톡 알림받기
                                </label>

                                <label class="input-radio">
                                    <input type="radio" name="qnaNoti">
                                    <i class="ico-radio"></i>
                                    선택안함
                                </label>
                            </dd>
                        </dl>
                    </div>

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="등록하기">
                    </div>
                </form>
                <!--// E : 학습질문 작성하기 -->
            </div>
        </div>        
    </section>
    <!--// E: container -->

<script type="text/javascript">
    $(function(){
        // 타임코드 입력 시 
        $('.qna-time').keydown(function(e){
            $text = $(this);

            if( $text.val().length === 2 ){
                $text.val($text.val() + ':');
            }
            if( $text.val().length === 5 ){
                $text.val($text.val() + ':');
            }            
        });

        $('#qnaForm').validate({
            // debug: true, // submit X

            // 규직
            rules: {
                qnaType: {
                    required: true
                },
                qnaTitle: {
                    required: true,
                    minlength: 2
                },
                qnaContent: {
                    required: true,
                    minlength: 5
                }
            },

            // 메시지
            messages: {
                qnaType: {
                    required: '질문 유형을 선택해주세요.'
                },
                qnaTitle: {
                    required: '제목을 입력해주세요.',
                    minlength: '제목은 2자 이상 입력해주세요.'
                },
                qnaContent: {
                    required: '내용을 입력해주세요.',
                    minlength: '내용은 5자 이상 입력해주세요.'
                }
            },

            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                error.appendTo( element.parents('dd') );
            },

            highlight: function(element, errorClass){
                $(element).parents('dd').addClass('error');
            },

            unhighlight: function(element, errorClass){
                $(element).parents('dd').removeClass('error');
            },

            submitHandler: function(){
                modalDialog.alert('문의가 등록되었습니다.', function(){
                    location.href="/totalWebSite/sdijx/teachers/qnaList.asp"
                });
            }
        });
   });

   // 질문 유형 선택
   function fnQnaType(obj){
        if( obj.value == '1' || obj.value == '2' ) $('[class*="qna-type"]').css('display', 'none').siblings('.qna-type' + obj.value).css('display', 'flex');
        else $('[class*="qna-type"]').css('display', 'none');
    }

    //파일 찾기
    function fileOpen(obj){
        var $this = $(obj);

        if( $this.parent().find('.file-area').children().length > 0 && $this.parent().find('.file-area').is(':visible') === false ){
            $this.parent().find('.file-area').show();
        }

        if( $this.parent().find('.file-area').children().length < 5 ){
            fnOpenWindow('/sdijx/winFileUpload.asp', '파일 찾기', '400', '260');
        }else{
            modalDialog.alert('파일은 <span class="txt-line">최대 5개</span>까지 등록 가능합니다.');
        }
    }

    //파일 삭제
    function fileDel(obj){
        var $this = $(obj);

        if( $this.parent().children().length === 1 ){
            $this.parent().hide();
            $this.remove();
        }else{
            $this.remove();
        }
    }
</script>

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->