<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 게시판 > 학습질문답변 글쓰기
' 모듈기능 : 시대인재 Digital > 게시판 > 학습질문답변 글쓰기
' 파 일 명 : qna_write.asp
' 작성일자 : 
' 작 성 자 : 
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
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="bbs-container">
        <div class="content-layout">
            <div class="page-loc">                   
                <a href="qna_list.asp">학습질문답변</a>
            </div>

            <h2 class="tit-dep1 tit-border">질문하기</h2>

            <!-- S : 학습질문답변 글쓰기 -->
            <article class="qna-write-article">
                <div class="form-type1">
                    <dl>
                        <dt>질문유형</dt>
                        <dd>
                            <div class="form-radio">
                                <label class="input-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    <span>강좌</span>
                                </label>

                                <label class="input-radio">
                                    <input type="radio">
                                    <span class="ico ico-radio"></span>
                                    <span>기타</span>
                                </label>
                            </div>
                        </dd>

                        <dt>질문강좌</dt>
                        <dd>
                            <div class="select">
                                <select>
                                    <option hidden="" disabled="" selected="">질문하고 싶은 강좌를 선택해 주세요</option>
                                    <option>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                    <option>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                    <option>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                </select>
                            </div>
                        </dd>

                        <dt>제목</dt>
                        <dd>
                            <div class="input-text">
                                <input type="text">
                            </div>
                        </dd>

                        <dt>내용</dt>
                        <dd>
                            <div class="textarea">
                                <textarea rows="5"></textarea>
                            </div>
                        </dd>

                        <dt>파일첨부</dt>
                        <dd>
                            <div class="form-file">
                                <div class="input-file">
                                    <input type="button" class="btn btn-M" value="파일 선택" onclick="fileOpen(this);">
                                </div>

                                <div class="list-file">
                                    <button type="button" class="btn btn-M btn-gray" onclick="fileDel(this);">
                                        파일명파일명파일명1.jpg
                                        <i class="ico-close"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="txt-info">
                                * 10MB 이하의 파일을 최대 5개까지 첨부하실 수 있습니다.<br>(exe, zip 등 일부 파일은 첨부 제외)
                            </div>
                        </dd>
                    </dl>
                </div>

                <div class="list-btn txt-right">
                    <a href="qna_list.asp" class="btn btn-L">취소</a>
                    <a href="javascript:void(0);" class="btn btn-L btn-black">작성하기</a>
                </div>
            </article>
            <!--// E : 학습질문답변 글쓰기 -->
        </div>
    </section>
    <!--// E : container -->

<script type="text/javascript">
    //파일 찾기
    function fileOpen(obj){
        var $this = $(obj);

        if( $this.parent('.input-file').next('.list-file').children().length > 0 && $this.parent('.input-file').next('.list-file').is(':visible') === false ){
            $this.parent('.input-file').next('.list-file').show();
        }

        if( $this.parent('.input-file').next('.list-file').children().length < 5 ){
            window.open('http://dgtfile.sdij.com/pop.file.asp', '파일찾기', 'width=500, height=200, menubar=no, status=no, toolbar=no');
        }else{
            alert("파일은 최대 5개까지 첨부 하실 수 있습니다.");
        }
    }

    //파일 삭제
    function fileDel(obj){
        var $this = $(obj);

        if( $this.parents('.list-file').children().length === 1 ){
            $this.parents('.list-file').hide();
            $this.parent().remove();
        }else{
            $this.parent().remove();
        }
    }
</script>

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->