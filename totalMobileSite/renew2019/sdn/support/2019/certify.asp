<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 2019 대학생 서포터즈 > 본인인증
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
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 콘텐츠 영역 -->
<div class="layout-container pb0">
    <!-- S : 레이아웃 -->
    <div class="content-layout support">
        <h2 class="page-tit">시대인재 대학생 <br>서포터즈 지원</h2>

        <p class="mb10">지원서를 작성하려면 본인 인증이 필요합니다.</p>
        <div class="board-table mb20">
            <div class="form-defult">
            <!-- S : 인증 폼 영역 -->
            <form method="post">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>이름*</th>
                            <td colspan="3">
                                <div class="form-input">
                                    <input type="text" >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="2">휴대폰<br>번호*</th>
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
                                    <input type="text" title="휴대폰번호 가운데 네자리" maxlength="4" >
                                </div>
                            </td>
                            <td>
                                <div class="form-input">
                                    <input type="text" title="휴대폰번호 뒤 네자리" maxlength="4" >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="pt15">
                                <div class="cert-form">
                                    <div class="form-input">
                                        <input type="text" placeholder="인증번호" >
                                    </div>
                                    <span class="cert-txt">3:00</span>
                                </div>
                            </td>
                            <td><input type="button" value="확인" class="btn btn-black btn-strong"></td>
                        </tr>
                    </tbody>
                </table>
                </form>
                <!--// E : 인증 폼 영역 -->
            </div>
        </div>
        <p class="mb20">※ 2019년 시대인재N 재수종합에 재원했던 학생만 지원 가능합니다.</p>
        <div class="btn-group txt-center board-btn">
            <a href="apply_step1.asp" class="btn btn-black btn-lg">확인</a>
        </div>
    </div>
    <!--// E: 레이아웃 -->
</div>
<!--// E : 콘텐츠 영역 -->

<script type="text/javascript">

</script>
<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->
