<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 지원하기 1단계
' 모듈기능 :
' 파 일 명 :
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

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/support.css?ver=<%=now()%>">
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/board.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 콘텐츠 영역 -->
<div class="layout-container pb0">
    <!-- S : 레이아웃 -->
    <div class="content-layout support">
        <h2 class="page-tit border-tit mb20">시대인재 대학생 <br>서포터즈 지원서 작성</h2>

        <!-- S : 안내 영역 -->
        <div class="step-box mb20">
            <h4 class="tit">STEP1. 안내사항</h4>
            <ul class="step">
                <li class="on">1</li>
                <li>2</li>
                <li>3</li>
            </ul>
        </div>

        <ul class="list-dotted">
            <li>시대인재 서포터즈는 2019년 시대인재N 재원생만 지원 가능합니다.</li>
            <li>시대인재 서포터즈는 2020년 1년간 활동합니다.</li>
            <li>향후 일정은 아래와 같이 진행됩니다.</li>
        </ul>

        <div class="img-box">
            <img src="http://img.sdij.com/sd2019/mobile/sdn/support.png" alt="지원 순서 이미지">
        </div>
        <!--// E : 안내 영역 -->

        <!-- S : 인적사항 영역 -->
        <h2 class="table-tit border-none">인적 사항</h2>

        <div class="board-table">
            <div class="form-defult">
                <form action="" method="">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>이름 *</th>
                            <td colspan="3">
                                <div class="form-input">
                                    <input type="text" >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰<br>번호*</th>
                            <td>
                                <div class="form-select">
                                    <select title="휴대폰번호 앞 세자리">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                </div>
                            </td>
                            <td>
                                <div class="form-input">
                                    <input type="text" >
                                </div>
                            </td>
                            <td>
                                <div class="form-input">
                                    <input type="text" >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="3">주소 *</th>
                            <td colspan="2">
                                <div class="form-input">
                                    <input disabled type="text" >
                                </div>
                            </td>
                            <td>
                                <div class="form-input">
                                    <input type="button" value="우편번호 찾기" class="btn btn-black">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="pl5" colspan="3">
                                <div class="form-input">
                                    <input type="text" placeholder="주소">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="pl5" colspan="3">
                                <div class="form-input">
                                    <input type="text" placeholder="나머지 주소">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>이메일 *</th>
                            <td colspan="2">
                                <div class="form-input input-text-mid">
                                    <input type="text">
                                </div>
                                @
                                <div class="form-input input-text-mid">
                                    <input type="text" disabled >
                                </div>
                            </td>
                            <td>
                                <div class="form-select">
                                    <select>
                                        <option value="">선택</option>
                                        <option value="1">직접입력</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="hotmail.com">hotmail.com</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="korea.com">korea.com</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>재원<br>경력*</th>
                            <td colspan="3">
                                <div class="form-select">
                                    <select>
                                        <option value="3개월 미만">3개월 미만</option>
                                        <option value="3개월 이상 6개월 미만">3개월 이상 6개월 미만</option>
                                        <option value="6개월 이상">6개월 이상</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!--// E : form : 입력폼 영역 -->
                </form>
            </div>
        </div>
        <!--// E : 인적사항 영역 -->
        <div class="step-btn float-area mt50">
            <a href="apply_step2.asp" class="btn btn-step-next next_submit">다음</a>
        </div>
    </div>
    <!--// E: 레이아웃 -->
</div>
<!--// E : 콘텐츠 영역 -->

<script type="text/javascript">

</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->
