<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 게시판 > 1:1 문의하기
' 모듈기능 : 보충강좌 서비스 > 게시판 > 1:1 문의하기
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
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

 <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">1:1 문의하기</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <!-- S : 1:1 문의 -->
        <article class="container-view content-layout">
            <div class="table-type1 form-type1">
                <table>
                    <colgroup>
                        <col style="width:25%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>질문유형</th>
                            <td>
                                <div class="form-radio">
                                    <label class="input-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        <span class="color-blue">강좌</span>
                                    </label>

                                    <label class="input-radio">
                                        <input type="radio">
                                        <span class="ico ico-radio"></span>
                                        <span class="color-purple">기타</span>
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>질문강좌</th>
                            <td>
                                <div class="select">
                                    <select>
                                        <option hidden="" disabled="" selected="">질문하고 싶은 강좌를 선택해 주세요</option>
                                        <option>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                        <option>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                        <option>강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>
                                <div class="input-text">
                                    <input type="text">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <div class="textarea">
                                    <textarea rows="5"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>파일첨부</th>
                            <td>
                                <div class="input-file">
                                    <input type="button" class="btn" value="파일찾기" onclick="fileOpen(this);">

                                    <div class="file-info">
                                        * 10MB 이하의 파일을 최대 5개까지 첨부하실 수 있습니다.<br>
                                        (exe, zip 등 일부 파일은 첨부 제외)
                                    </div>
                                </div>

                                <ul class="list-file" style="display:none;">
                                    <li>
                                        <span>파일명파일명파일명1.jpg</span>
                                        <button type="button" class="btn btn-del" onclick="fileDel(this);">삭제</button>
                                    </li>
                                    <li>
                                        <span>파일명파일명파일명2.jpg</span>
                                        <button type="button" class="btn btn-del" onclick="fileDel(this);">삭제</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="table-btn mt1 txt-center">
                <a href="qna.asp" class="btn btn_gray btn-L">취소</a>
                <input type="submit" class="btn btn-black btn-L" value="등록">
            </div>
        </article>
        <!--// E : 1:1 문의 -->
    </section>
    <!--// E : container -->

	<script>
    //파일 찾기
    function fileOpen(obj){
        var $this = $(obj);

        if( $this.parent('.input-file').next('.list-file').children().length > 0 && $this.parent('.input-file').next('.list-file').is(':visible') === false ){
            $this.parent('.input-file').next('.list-file').show();
        }

        if( $this.parent('.input-file').next('.list-file').children().length < 5 ){
            window.open('https://file.reclass.study/pop.file.asp', '파일찾기', 'width=500, height=200, menubar=no, status=no, toolbar=no');
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

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->
