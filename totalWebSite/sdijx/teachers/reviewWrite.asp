<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 선생님 게시판 > 수강후기 작성하기
' 모듈기능: 시대인재 Digital > 선생님 게시판 > 수강후기 작성하기
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
    <section id="container" class="review-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>선생님 홈</span>
                        <span>수강후기</span>
                        <span class="color-black">수강후기 작성하기</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                            수강후기 작성하기
                        </span>
                        <small>홍길동 선생님 수업은 어떠셨나요?<br>자유로운 후기를 남겨 주세요.</small>
                    </h2>
                </div>

                <!-- S : 수강후기 작성하기 -->
                <form id="qnaForm" action="" method="">
                    <div class="form-type1">
                        <dl>
							<dt>강좌 만족도</dt>
							<dd>
								<div class="grade">
									<a href="javascript:void(0);"><i class="ico-star-on"></i></a>
									<a href="javascript:void(0);"><i class="ico-star"></i></a>
									<a href="javascript:void(0);"><i class="ico-star"></i></a>
									<a href="javascript:void(0);"><i class="ico-star"></i></a>
									<a href="javascript:void(0);"><i class="ico-star"></i></a>
								</div>
							</dd>
                            <dt class="qna-type1">강좌 선택</dt>
                            <dd class="qna-type1">
                                <label class="select">
                                    <select name="">
                                        <option hidden disabled selected>강좌를 선택해주세요.</option>
                                        <option value="">수강중인 강좌명</option>
										<option value="">수강중인 강좌명2</option>
                                    </select>
                                </label>
                            </dd>
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
                        </dl>
                    </div>

                    <div class="btn-area txt-right mt20">
                        <input type="submit" class="btn btn-black btn-L" value="등록하기">
                    </div>
                </form>
                <!--// E : 수강후기 작성하기 -->
            </div>
        </div>        
    </section>
    <!--// E: container -->

<script type="text/javascript">
    $(function(){
		 // 별점 클릭 시
		 $('.grade a').on('click', function(){
			$(this).parent().children('a').removeClass('ico-star-on');
			$(this).addClass('ico-star-on').prevAll('a').addClass('ico-star-on');
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
                    location.href="/totalWebSite/sdijx/teachers/reviewList.asp"
                });
            }
        });
   });

   // 질문 유형 선택
   function fnQnaType(obj){
        if( obj.value == '1' || obj.value == '2' ) $('[class*="qna-type"]').css('display', 'none').siblings('.qna-type' + obj.value).css('display', 'flex');
        else $('[class*="qna-type"]').css('display', 'none');
    }

</script>

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->