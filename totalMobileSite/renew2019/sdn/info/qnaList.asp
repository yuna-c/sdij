<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : 1:1 질의 응답 -->
    <div class="content-layout">
        <h2 class="page-tit">1:1 질의 응답</h2>
        <!-- S : 입시분석 -->
            <div class="board-btn txt-right mb20">
                <a href="qnaWrite.asp" class="btn btn-sm btn-black">글쓰기</a>
            </div>
            <div class="board-list">
                <ul>
                    <li>
                        <div class="data-label">
                            <span>공지</span>
                            <span>2019-01-01</span>
                        </div>
                        <div class="data-tit">
                            <a href="javascript:void(0);">
                               real vibe killer
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="data-label">
                            <span>질의응답</span>
                            <span>2019-01-01</span>
                        </div>
                        <div class="data-tit">
                            <a href="javascript:void(0);" onclick="showDim('pw-pop')">
                               헐. 테스트등록
                               <span class="ico ico-rock">비공개 게시물</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="data-label">
                            <span>건의사항  </span>
                            <span>2019-01-01</span>
                        </div>
                        <div class="data-tit">
                            <a href="javascript:void(0);" onclick="showDim('pw-pop')">
                               국어 김상훈 선생님 현강신청
                               <span class="ico ico-rock">비공개 게시물</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="data-label">
                            <span>질의응답</span>
                            <span>2019-01-01</span>
                        </div>
                        <div class="data-tit">
                            <a href="javascript:void(0);" onclick="showDim('pw-pop')">
                               헐. 테스트등록
                               <span class="ico ico-rock">비공개 게시물</span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- S : 페이지 버튼 -->
            <div class="board-pager">
                <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
                <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>

                <div class="pager-num">
                    <% For i=1 To 5 %>
                    <a href="javascript:void(0);" <% If i=1 Then Response.Write " class=""on""" %>><%= i %></a>
                    <% Next %>
                </div>

                <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
                <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
            </div>
            <!--// E : 페이지 버튼 -->
        <!--// E : 입시분석  -->
    </div>
    <!--// E : 1:1 질의 응답 -->
</div>
<!--// E : 컨텐츠 영역 -->
<div class="dim-layer" id="pw-pop">
    <div class="dim-bg"></div>

    <div class="dim-content dim-form divPwd" style="margin-top: 0px; display: block;">
        <h4 class="dim-tit">
            게시글 비밀번호 입력
            <small>비공개 글입니다. 비밀번호를 입력하세요.</small>
        </h4>

        <form data-form="search" id="secretForm" name="secretForm" method="post">
        <table>
            <colgroup>
                <col style="width:300px;">
            </colgroup>
            <tbody>
                <tr>
                    <td><input type="password" class="input-text" name="secret_num"></td>
                </tr>
            </tbody>
        </table>

        <div class="dim-btn txt-center">
            <button class="btn btn-black btn-confirm" onclick="IfPassWordChk();">확인</button>
        </div>
        </form>
        <a href="javascript:void(0);" class="btn-close" onclick="hideDim('pw-pop')">
            <span class="ico ico-close">팝업창 닫기</span>
        </a>
    </div>
</div>


<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">
    function showDim(popName){
        var name = popName;
        $('body').css({
            'overflow' : 'hidden'
        })
        $('#'+name).fadeIn();
    }

     function hideDim(popName){
        var name = popName;
        $('body').css({
            'overflow' : 'initial'
        })
        $('#'+name).fadeOut();
     }

</script>