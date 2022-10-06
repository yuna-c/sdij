<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->
<script type="text/javascript">
    $(document).ready(function(){
        $('.file-list .delete').each(function(){
            $(this).on('click',function(e){
                 $(this).parent('li').remove();
            })
        })
    })
</script>
<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 응시원서접수 -->
    <div class="content-layout">
        <h2 class="page-tit line">
            시대인재 N 응시원서 <br/>
            접수내역
        </h2>
        <div class="form-detail">
            <ul class="list-dotted mt30">
                <li>최초 등록 후 수정이 불가하므로 정확한 내용을 기입하시기 바랍니다.</li>
                <li>추후 성적표 원본을 대조하므로 반드시 본인의 성적표를 업로드하세요.</li>
            </ul>
            <form action="" method="">
                <table>
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:80%;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="th-txt">전형구분</th>
                            <td>유시험</td>
                        </tr>
                        <tr>
                            <th class="th-txt">계열</th>
                            <td>인문계</td>
                        </tr>
                        <tr>
                            <th class="th-txt">응시과목</th>
                            <td>한국지리, 생활과 윤리</td>
                        </tr>
                        <tr>
                            <th class="th-txt">접수일시</th>
                            <td>2018-01-01</td>
                        </tr>
                        <tr>
                            <th class="th-txt">접수상태</th>
                            <td>정상</td>
                        </tr>
                        <tr>
                            <th class="th-txt">제출된 성적표</th>
                            <td>
                                <ul class="file-list">
                                    <li>
                                      업로드한파일명.jpg
                                    </li>
                                    <li>
                                        추가파일1.png <a href="#" class="delete">지우기</a>
                                    </li>
                                    <li>
                                        추가파일2.png <a href="#" class="delete">지우기</a>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th class="th-txt">추가할 성적표</th>
                            <td>
                                <div class="file">
                                      <input type="file" id="fileup" name="fileup" class="file_hidden">
                                      <label for="fileup">파일찾기</label>
                                </div>
                                <span class="add-txt color_01 small">
                                    jpg, bmp, png 이미지 파일만 업로드 가능
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <!-- S : board-btn -->
                <div class="board-btn txt-center">
                    <input type="submit" class="btn btn-strong btn-black" value="확인">
                </div>
                <!--// E : board-btn -->
            </form>
        </div>
    </div>
    <!--// E : 응시원서접수 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->