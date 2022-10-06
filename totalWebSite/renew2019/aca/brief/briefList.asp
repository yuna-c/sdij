<!--#include virtual="/renew2019/common/include/incHeader.asp"-->




<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">설명회</h2>

    <!-- S : 설명회 리스트 -->
    <div class="board-layout">
        <div class="board-list pt30">
            <!-- S : board-btn -->
            <div class="board-btn">
                <a href="javascript:void(0);" onclick="fnOpenLayer('dim3'); return false;" class="btn btn-sm btn-gray">신청조회</a>
                <a href="javascript:void(0);" onclick="fnOpenLayer('dim4'); return false;" class="btn btn-mid btn-gray">문자수신 DB등록</a>
            </div>
            <!--// E : board-btn -->

            <!-- S : 탭 버튼 -->
            <div class="board-tab">
                 <div class="tab-list mb30">
                    <a href="javascript:void(0);" class="selected">N수</a>
                    <a href="javascript:void(0);">예비고3</a>
                    <a href="javascript:void(0);">예비고2</a>
                    <a href="javascript:void(0);">예비고1</a>
                    <a href="javascript:void(0);">기타</a>
                </div>
            </div>
            <!-- E : 탭 버튼 -->

            <!-- S : 과목 탭 버튼 -->
             <div class="board-tab mb50">
                   <div class="tab-list border mb0">
                      <a href="javascript:void(0);" class="selected">【이과】 의대 면접 /자소서 /학생부 설명회</a>
                      <a href="javascript:void(0);">【이과】 개정 과학탐구 설명회</a>
                  </div>
              </div>
            <!-- E : 과목 탭 버튼 -->


            <table>
                <colgroup>
                    <col style="width:100px;">
                    <col style="width:70px;">
                    <col style="width:auto;">
                    <col style="width:210px;">
                    <col style="width:150px;">
                    <col style="width:110px;">
                </colgroup>
                <thead>
                    <tr>
                        <th>대상학년</th>
                        <th>계열</th>
                        <th>제목</th>
                        <th>일자</th>
                        <th>장소</th>
                        <th>지원하기</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 6 %>
                    <tr>
                        <td>예비고3</td>
                        <td>이과</td>
                        <td class="tit-box show-btn">
                            <div class="tit-txt">
                                <a href="#">
                                 제목제목제목제목제목제목제목제목제목제목제목제목
                                </a>
                            </div>
                        </td>
                        <td>2019-01-01 (화) 11시 00분</td>
                        <td>시대인재 2관 2층</td>
                        <td>
                            <% if true then '신청가능 %>
                            <a href="#" class="txt-link">설명회 신청</a>
                            <% else %>
                            <a href="javascript:void(0);" class="txt-link txt-end">마감</a>
                            <% end if %>
                        </td>
                    </tr>
                    <tr class="hide-pop">
                        <td colspan="6">
                            내용
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
                <% For i=1 To 10 %>
                <a href="javascript:void(0);" <% If i=1 Then Response.Write " class=""on""" %>><%= i %></a>
                <% Next %>
            </div>

            <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
        </div>
        <!--// E : board-pager : 페이지 버튼 -->
    </div>
    <!--// E : 설명회 리스트 -->

    <!-- S : 관련 컨텐츠 -->
    <div class="gallery-list gallery-content">
        <ul class="float-area">
            <li>
                <a href="#">
                    <span class="menu-txt">관련컨텐츠1</span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="menu-txt">관련컨텐츠2</span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="menu-txt">관련컨텐츠3</span>
                    <span class="more-txt">more &gt;</span>
                </a>
            </li>
        </ul>
    </div>
    <!--// E : 관련 컨텐츠 -->
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

<!--#include virtual="/renew2019/common/include/incFooter.asp"-->