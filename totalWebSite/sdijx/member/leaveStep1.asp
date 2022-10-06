<%
'-----------------------------------------------------------------------
' 업 무 명: 시대인재 Digital > 멤버 > 회원탈퇴
' 모듈기능: 시대인재 Digital > 멤버 > 회원탈퇴
' 파 일 명: leave.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/member.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S: container -->
    <section id="container" class="leave-container">
        <div class="wide-layout float-area">
            <div class="content-layout form-layout">
                <div class="tit-area">
                    <div class="page-loc">
                        <span>회원탈퇴</span>
                        <span class="color-black">탈퇴조건</span>
                        <span>탈퇴완료</span>
                    </div>

                    <h2 class="tit-dep1">
                        <span class="tit">
                            회원탈퇴
                        </span>
                        <small>시대인재 회원탈퇴를 신청하기전<br>안내 사항을 확인해주세요.</small>
                    </h2>
                </div>

                <div class="info-layout">
                    <i class="ico-alert"></i>

                    <h3 class="tit-dep2">
                        <span class="tit">꼭 확인해주세요.</span>
                        <small>중요한 내용이므로 회원탈퇴를 신청하기전 꼭 확인해주세요.</small>
                    </h3>
                </div>

                <h3 class="tit-dep4">탈퇴조건</h3>
                <div class="table-type2">
                    <table>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th>탈퇴조건</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>이용한 서비스 전체 내역</th>
                                <td>회원 탈퇴 후 복구 불가</td>
                            </tr>
                            <tr>
                                <th>결제 정보</th>
                                <td>전자상거래법 제6조 제3항에서 정한 일정기간동안 보존</td>
                            </tr>
                            <tr>
                                <th>최근 구매한 교재가 있는 경우</th>
                                <td>교환/환불 기간인 7일 이후부터 탈퇴 가능</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="form-type1">
                    <dl>
                        <dt class="blind">탈퇴조건동의</dt>
                        <dd class="agree-type2">
                            <ul class="list-agree">
                                <li>
                                    <label class="input-checkbox">
                                        <input type="checkbox" id="leaveAgree1" name="leaveAgree1" onchange="fnCheck(this);">
                                        <span class="ico-checkbox"></span>
                                        회원 탈퇴 후 임의 해지 및 재가입 방지를 목적으로 1년간 회원의 성명, 휴대폰번호, 아이디, 비밀번호, 이메일 등의 식별 정보를 보관합니다. 회원 탈퇴 시 개인정보는 개인정보 취급방침에 따라 처리됩니다.
                                    </label>
                                </li>

                                <li>
                                    <label class="input-checkbox">
                                        <input type="checkbox" id="leaveAgree2" name="leaveAgree2" onchange="fnCheck(this);">
                                        <span class="ico-checkbox"></span>
                                        회원탈퇴후 재가입시에는 기존에 사용했던 아이디로는 재가입이 불가능합니다.
                                    </label>
                                </li>

                                <li>
                                    <label class="input-checkbox">
                                        <input type="checkbox" id="leaveAgree3" name="leaveAgree3" onchange="fnCheck(this);">
                                        <span class="ico-checkbox"></span>
                                        회원 탈퇴 즉시 회원정보에 등록된 이메일로 탈퇴 완료 메일이 발송 됩니다.<br>
                                        (이메일 주소 미입력 한 경우 휴대전화번호로 문자 발송 됩니다.)
                                    </label>
                                </li>
                            </ul>
                        </dd>

                        <dd class="agree-type1">
                            <label class="input-checkbox">
                                <input type="checkbox" id="leaveAgreeAll" name="leaveAgreeAll" onchange="fnAllCheck(this);">
                                <span class="ico-checkbox"></span>
                                시대인재 사이트를 탈퇴하기 위한 탈퇴 조건과 안내사항을 모두 읽었으며, 이에 동의합니다.
                            </label>
                        </dd>
                    </dl>
                </div>

                <div class="btn-area txt-right mt20">
                    <a href="leaveStep2.asp" class="btn btn-black btn-L">다음</a>
                </div>
            </div>
        </div>        
    </section>
    <!--// E: container -->

<!-- S : script -->
<script type="text/javascript">
    // 전체 체크 확인
    function fnAllCheck(obj){
        var $this = $(obj),
            thisCheck = $this.is(':checked');

        $this.parents('dd').prev().find('input[type="checkbox"]').prop('checked', thisCheck);
    }

    // 일반 약관 체크 확인
    function fnCheck(obj){
        var $this = $(obj);

        if( $this.parents('dd').find('input[type="checkbox"]:checked').length > 2 ) $this.parents('dd').next().find('input[type="checkbox"]').prop('checked', true);
        else $this.parents('dd').next().find('input[type="checkbox"]').prop('checked', false);
    }
</script>
<!--// E : script -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"--> 