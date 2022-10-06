<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->




<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>


    <!-- S : 합격자 조회  리스트 -->
    <div class="board-layout">
        <h2 class="page-tit border-tit">합격자 조회  리스트</h2>
        <!--ul class="list-dotted">
            <li>응시원서는 제출 후 수정, 취소가 불가능하며 파일 업로드 및 접수상태 조회만 가능합니다.</li>
            <li>접수내역의 전형명을 클릭하면 상세 조회가 가능합니다.</li>
            <li>문의처 - 합격자 발표 관련 : 02-538-2321, 접수 및 환불 관련 : 1522-0568</li>
        </ul-->
        <div class="board-list pt30">
            <table>
                <colgroup>
                    <col width="20%" />
                    <col width="50%" />
                    <col width="30%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>접수내역</th>
                        <th>접수일</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 6 %>
                    <tr>
                        <td>1</td>
                        <td>
                            <div class="tit-txt txt-left">
                                <a href="#">
                                    자연계 유시험
                                </a>
                            </div>
                        </td>
                        </td>
                        <td>
                            2019-01-10
                        </td>
                    </tr>
                    <% Next %>
                </tbody>
            </table>
        </div>

        <!-- S : board-pager : 페이지 버튼 -->
        <div class="board-pager">
            <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>

            <div class="pager-num">
                <% For i=1 To 3 %>
                <a href="javascript:void(0);" <% If i=1 Then Response.Write " class=""on""" %>><%= i %></a>
                <% Next %>
            </div>

            <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
        </div>
        <!--// E : board-pager : 페이지 버튼 -->
    </div>
    <!--// E : 합격자 조회  리스트 -->


</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : dim-layer -->
<div class="dim-layer">
    <div class="dim-bg"></div>

    <!-- S : dim3 : 설명회 신청조회 -->
    <div class="dim-content dim-form dim3">
        <h4 class="dim-tit">설명회 신청조회 </h4>

        <form action="" method="">
        <table>
            <colgroup>
                <col style="width:80px;">
                <col style="width:auto;">
                <col style="width:100px;">
            </colgroup>
            <tbody>
                <tr>
                    <th>이름</th>
                    <td colspan="2"><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>휴대폰 번호</th>
                    <td><input type="text" class="input-text"></td>
                    <td><input type="button" class="btn btn-white" value="인증번호 전송"></td>
                </tr>
                <tr>
                    <th>인증번호</th>
                    <td colspan="2"><div class="cert-form">
                        <input type="text" maxlength="6" class="input-text" placeholder="인증번호">
                        <span class="cert-txt">3:00</span>
                    </div></td>
                </tr>
            </tbody>
        </table>

        <div class="dim-btn"><button class="btn btn-black btn-confirm">확인</button></div>
        </form>
    </div>
    <!--// E : dim3 : 설명회 신청조회 -->

    <!-- S : dim4 : 문자수신 DB등록 -->
    <div class="dim-content dim-form dim4">
        <h4 class="dim-tit">
            문자수신 DB 등록
            <small>DB에 등록하시면 설명회/강좌 안내 문자를 수신할 수 있습니다.<br>인증받은 핸드폰 번호가 시대인재 문자 DB로 저장됩니다.</small>
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
                    <th>이름</th>
                    <td colspan="2"><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>휴대폰 번호</th>
                    <td><input type="text" class="input-text"></td>
                    <td><input type="button" class="btn btn-white" value="인증번호 전송"></td>
                </tr>
                <tr>
                    <th>인증번호</th>
                    <td colspan="2"><div class="cert-form">
                        <input type="text" maxlength="6" class="input-text" placeholder="인증번호">
                        <span class="cert-txt">3:00</span>
                    </div></td>
                </tr>
                <tr>
                    <th>학교</th>
                    <td colspan="2"><input type="text" class="input-text"></td>
                </tr>
                <tr>
                    <th>학년</th>
                    <td colspan="2">
                        <select class="select">
                            <option value="선택">선택</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>계열</th>
                    <td colspan="2">
                        <select class="select">
                            <option value="선택">선택</option>
                        </select>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="dim-agree">
            <h4 class="tit">개인정보 수집 및 활동 동의 (필수)</h4>
            <div class="dim-box">ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</div>
            <div class="txt-center">
                <label class="radio">
                    <input type="radio">
                    <span>동의</span>
                </label>
                <label class="radio">
                    <input type="radio">
                    <span>동의하지 않음</span>
                </label>
            </div>
        </div>

        <div class="dim-btn"><button class="btn btn-black btn-confirm">확인</button></div>
        </form>
    </div>
    <!--// E : dim4 : 문자수신 DB등록 -->
</div>
<!--// E : dim-layer -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->