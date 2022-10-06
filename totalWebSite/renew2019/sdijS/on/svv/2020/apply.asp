<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 서바이벌 모의고사 학원 신청 > 랜딩
' 모듈기능 : 서바이벌 모의고사 학원 신청 > 랜딩
' 파 일 명 : default.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->

<link rel="stylesheet" type="text/css" href="default.css?ver=<%=now()%>" >

<!-- S : wrap -->
<div id="wrap">
	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container survival-a pb80">
            <div class="board-layout">
                <h2 class="page-tit mt50">Survival α 신청하기</h2>

                <!-- S : 신청 폼 영역 -->
                <div class="form-defult form-defult2">
                    <form method="POST" action="" id="frmData" name="frmData">
                    <input type="hidden" name="bsnsType" id="bsnsType" value=""/>

                        <!-- S : 학원 정보 --> 
                        <h4 class="table-tit border-none">학원 정보</h4>
                        <table>
                            <tbody>
                                <tr>
                                    <th rowspan="2">학원명</th>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="acdmNm" id="acdmNm" placeholder="학원명" maxlength="50">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <p class="txt-guide">*다른 학원과의 구분을 위해 학원명 앞에 지역을 넣어주세요 (ex. 대치 시대인재)</p>
                                    </td>
                                </tr>

                                <tr>
                                    <th rowspan="2">비밀번호</th>
                                    <td colspan="3">
                                        <div class="form-input">
											  <input type="password" name="acdmPw" id="acdmPw" style="" placeholder="비밀번호">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <p class="txt-guide color-red">*학원명과 비밀번호로 신청내역 확인이 가능합니다. 비밀번호를 꼭 기억해주세요.</p>
                                    </td>
                                </tr>

                                <tr>
                                    <th>전화번호</th>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="acdmTel" id="acdmTel" placeholder="전화번호" maxlength="20">
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <th rowspan="3">학원주소</th>
                                    <td colspan="2">
                                        <div class="form-input">
                                            <input type="text" name="acdmPost" id="acdmPost" value="" readonly>
                                        </div>
                                    </td>
                                    <td>
                                        <a href="javascript:IfDAumPostCode('acdmPost', 'acdmAddr1');" class="btn btn-black">검색</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="acdmAddr1" id="acdmAddr1" placeholder="주소">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="acdmAddr2" id="acdmAddr2" placeholder="나머지 주소" maxlength="50">
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <th>이전 사용<br>모의고사</th>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="acdmBfrExam" id="acdmBfrExam" maxlength="250">
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <th rowspan="3">학원규모<br>(학생 수)</th>
                                    <th>중등</th>
                                    <th>고등</th>
                                    <th>N수</th>
                                </tr>
                                <tr>
                                    <td style="padding:0.666666667rem;">
                                        <div class="form-input">
                                            <input type="text" name="acdmMStu" id="acdmMStu" onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="acdmHStu" id="acdmHStu" onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="acdmNStu" id="acdmNStu" onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <p class="txt-guide">*학원규모(학생 수), 이전 사용 모의고사 등의 정보는 향후 가맹 학원 지원에 필요한 정보 입니다.</p>
                                    </td>
                                </tr>

                                <tr>
                                    <th>&nbsp;</th>
                                    <th>성함</th>
                                    <th>핸드폰</th>
                                    <th>이메일</th>
                                </tr>
                                <tr>
                                    <th>원장님</th>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="dirNm" id="dirNm" maxlength="10">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="dirHp" id="dirHp" maxlength="20">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="dirEmail" id="dirEmail" maxlength="90">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>담당자</th>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="mngNm" id="mngNm" maxlength="10">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="mngHp" id="mngHp" maxlength="20">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-input">
                                            <input type="text" name="mngEmail" id="mngEmail" maxlength="90">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--// E : 학원 정보 --> 

                        <!-- S : 계약자 정보 --> 
                        <h4 class="table-tit border-none">계약자 정보</h4>
                        <table>
                            <tbody>
                                <tr>
                                    <th>사업자 유형</th>
                                    <td colspan="3">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="chkBsnsType" id="chkBsnsTypeI">
                                            <span class="ico ico-checkbox"></span>
                                            개인사업자
                                        </label>
                                        &nbsp;&nbsp;
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="chkBsnsType" id="chkBsnsTypeC">
                                            <span class="ico ico-checkbox"></span>
                                            법인사업자
                                        </label>
                                    </td>
                                </tr>

                                <tr>
                                    <th>회사명</th>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="bsnsNm" id="bsnsNm" placeholder="회사명" maxlength="50">
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <th>대표자명</th>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="bsnsRep" id="bsnsRep" placeholder="대표자명" maxlength="10">
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <th>사업자<br>등록번호</th>
                                    <td colspan="3">
                                        <div class="form-input">
                                            <input type="text" name="bsnsNum" id="bsnsNum" placeholder="사업자등록번호" maxlength="12" onKeyUp="regBsnsNum(this)">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--// E : 계약자 정보 --> 

                        <!-- S : 서바이벌 모의고사 신청 과목 및 부수 --> 
                        <h4 class="table-tit border-none">서바이벌 모의고사 신청 과목 및 부수</h4>
                        <table id="tblApplyInfo">
                            <tbody>
                                <tr>
                                    <th colspan="2">과목명</th>
                                    <th>신청</th>
                                    <th>신청부수</th>
                                </tr>
                                <tr>
                                    <th colspan="2">수학(가)</th>
                                    <td class="txt-center">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="mathgaFlg" id="mathgaFlg" onclick="fnFormCheck(this)" value="N">
                                            <span class="ico ico-checkbox"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="form-input form-num">
                                            <input type="text" name="mathgaCnt" id="mathgaCnt" readonly onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th colspan="2">수학(나)</th>
                                    <td class="txt-center">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="mathnaFlg" id="mathnaFlg" onclick="fnFormCheck(this)" value="N">
                                            <span class="ico ico-checkbox"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="form-input form-num">
                                            <input type="text" name="mathnaCnt" id="mathnaCnt" readonly onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th colspan="2">영어</th>
                                    <td class="txt-center">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="engFlg" id="engFlg" onclick="fnFormCheck(this)" value="N">
                                            <span class="ico ico-checkbox"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="form-input form-num">
                                            <input type="text" name="engCnt" id="engCnt" readonly onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th rowspan="4">과학</th>
                                    <th>물리Ⅰ</th>
                                    <td class="txt-center">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="phy1Flg" id="phy1Flg" onclick="fnFormCheck(this)" value="N">
                                            <span class="ico ico-checkbox"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="form-input form-num">
                                            <input type="text" name="phy1Cnt" id="phy1Cnt" readonly onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>화학Ⅰ</th>
                                    <td class="txt-center">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="chm1Flg" id="chm1Flg" onclick="fnFormCheck(this)" value="N">
                                            <span class="ico ico-checkbox"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="form-input form-num">
                                            <input type="text" name="chm1Cnt" id="chm1Cnt" readonly onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>생명과학Ⅰ</th>
                                    <td class="txt-center">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="bio1Flg" id="bio1Flg" onclick="fnFormCheck(this)" value="N">
                                            <span class="ico ico-checkbox"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="form-input form-num">
                                            <input type="text" name="bio1Cnt" id="bio1Cnt" readonly onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>지구과학Ⅰ</th>
                                    <td class="txt-center">
                                        <label class="form-checkbox">
                                            <input type="checkbox" name="ert1Flg" id="ert1Flg" onclick="fnFormCheck(this)" value="N">
                                            <span class="ico ico-checkbox"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="form-input form-num">
                                            <input type="text" name="ert1Cnt" id="ert1Cnt" readonly onKeyDown="onlyNumber(this)">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="txt-guide color-red">* 신청 후 수정은 불가 합니다. 정확하게 입력해 주세요.</p>
                        <!--// E : 서바이벌 모의고사 신청 과목 및 부수 -->

                        <!-- S : 개인정보 수집 및 이용 동의 --> 
                        <h4 class="table-tit border-none">개인정보 수집 및 컨텐츠 저작권 관련 동의</h4>
                        <table>
                            <tbody>
                                <tr>
                                    <td colspan="4" style="padding:0.666666667rem;">
                                        <textarea class="textarea" rows="5">
시대인재는 원활한 서비스 제공을 위하여 아래와 같이 개인정보를 수집 /이용 하고자 합니다. 내용을 자세히 읽으신 후 동의 여부를 결정하여 주십시오.

[수집항목] 학원명 및 학원 소재지 /전화번호, 원장님 및 담장자 이름 /휴대전화 번호 /이메일주소
[수집목적] 모의고사 구매 및 계약과 관련하여 수집
[개인정보의 보유 및 이용기간] 사용 목적이 종료되는 시점 혹은 1년 이내 폐기
* 개인정보 수집 및 이용 동의를 하지 않을 경우 관련 서비스의 제한이 있을 수 있습니다.

[서바이벌 모의고사 저작권 및 활용에 대한 안내]
구매하시는 Survival α 모의고사는 신청하신 학원에서만 활용해야 하며, 이를 복제 하여 다른 학원 /온라인 등에서 활용할 경우 법적 제재를 받을 수 있습니다. 
                                        </textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <label class="radio">
                                            <input type="radio" name="rdoAgreeInfo" id="rdoAgreeInfoY" value="Y" checked>
                                            <span>동의합니다.</span>
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="rdoAgreeInfo" id="rdoAgreeInfoN" value="N">
                                            <span>동의하지 않습니다.</span>
                                        </label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--// E : 개인정보 수집 및 이용 동의 -->

                        <div class="board-btn txt-center">
                            <a href="javascript:cancleForm();" class="btn btn-lightgray">취소</a>
                            <a href="javascript:submitForm();" class="btn btn-black">신청하기</a>
                        </div>
                    </form>
                </div>
                <!--// E : 신청 폼 영역 -->
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
    <!--// E : container -->
</div>
<!--// E : wrap -->
</body>
</html>

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">

$(function(){
    $("input[name='chkBsnsType']").on("click",function(){
        if(this.id="chkBsnsTypeI"){
            $("#bsnsType").val("개인사업자");
        }
        else if(this.id="chkBsnsTypeC"){
            $("#bsnsType").val("법인사업자");
        }
    });


});

function regBsnsNum(obj) {
    var str = obj.value.toString();
    if(str != "") {
        var len = str.replace(/[^0-9]/g,"").length;
        //obj.value = str.replace(/[^0-9]/g,"").replace(/([0-9]{3})([0-9]{2})([0-9]{5})$/,"$1-$2-$3");
        if(len >= 5) {
            obj.value = str.replace(/[^0-9]/g,"").replace(/([0-9]{3})([0-9]{2})/,"$1-$2-");
        }
        else if(len >= 3) {
            obj.value = str.replace(/[^0-9]/g,"").replace(/([0-9]{3})/,"$1-");
        }
        
    }
}

function fnFormCheck(obj){
    var $this = $(obj);

    if( $this.prop('checked') === true ){
        $this.parents('td').next('td').find('input').prop('readonly', false);
        $this.val("Y");
    }else{
        $this.parents('td').next('td').find('input').prop('readonly', true);
        $this.val("N");
    }
}

function cancleForm() {
    if(confirm("신청을 취소하시겠습니까?")){
        location.href="./";
    }
}

function onlyNumber(obj) {
	var code = event.which;
	// 48~57 숫자 
	// 96~ 105 키패드 숫자 
	// 8 백스페이스
	// 9 tab
	// 13 enter
	// 35 36 home end
	// 37 39 방향키 <>
	// 46 delete
	// 110,190 소수점
	if((code >= 48 && code <= 57) || (code >= 96 && code <= 105) 
			|| code == 8 || code == 9 || code == 13	|| code == 35 
			|| code == 36 || code == 37	|| code == 39 || code == 46)
	{
		return;
	}else{
		event.returnValue = false;
		event.preventDefault();
	}
	obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, "");
}

function submitForm() {
    if($("#acdmNm").val()=="") {
        $("#acdmNm").focus();
        alert("학원명을 입력하세요.");
        return false;
    }
    if($("#acdmPw").val()=="") {
        $("#acdmPw").focus();
        alert("비밀번호를 입력하세요.");
        return false;
    }
    if($("#acdmTel").val()=="") {
        $("#acdmTel").focus();
        alert("전화번호를 입력하세요.");
        return false;
    }
    if($("#acdmPost").val()=="" || $("#acdmAddr1").val()=="") {
        alert("학원주소를 입력하세요.");
        return false;
    }
    if($("#acdmAddr2").val()=="") {
        $("#acdmAddr2").focus();
        alert("나머지 주소를 입력하세요.");
        return false;
    }
    if($("#acdmBfrExam").val()=="") {
        $("#acdmBfrExam").focus();
        alert("이전 사용 모의고사를 입력하세요.");
        return false;
    }
    if($("#acdmMStu").val()=="") {
        $("#acdmMStu").focus();
        alert("학생 수(중등)를 입력하세요.");
        return false;
    }
    if($("#acdmHStu").val()=="") {
        $("#acdmHStu").focus();
        alert("학생 수(고등)를 입력하세요.");
        return false;
    }
    if($("#acdmNStu").val()=="") {
        $("#acdmNStu").focus();
        alert("학생 수(N수)를 입력하세요.");
        return false;
    }
    if($("#dirNm").val()=="") {
        $("#dirNm").focus();
        alert("원장님 성함을 입력하세요.");
        return false;
    }
    if($("#dirHp").val()=="") {
        $("#dirHp").focus();
        alert("원장님 핸드폰을 입력하세요.");
        return false;
    }
    if($("#dirEmail").val()=="") {
        $("#dirEmail").focus();
        alert("원장님 이메일을 입력하세요.");
        return false;
    } else {
        var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        if(!regExp.test($("#dirEmail").val())){
            $("#dirEmail").focus();
            alert("이메일 형식이 아닙니다.");
            return false;
        }
    }
    if($("#mngNm").val()=="") {
        $("#mngNm").focus();
        alert("담당자 성함을 입력하세요.");
        return false;
    }
    if($("#mngHp").val()=="") {
        $("#mngHp").focus();
        alert("담당자 핸드폰을 입력하세요.");
        return false;
    }
    if($("#mngEmail").val()=="") {
        $("#mngEmail").focus();
        alert("담당자 이메일을 입력하세요.");
        return false;
    } else {
        var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        if(!regExp.test($("#mngEmail").val())){
            $("#mngEmail").focus();
            alert("이메일 형식이 아닙니다.");
            return false;
        }
    }
    if($("input[name='chkBsnsType']:checked").length<1) {
        alert("사업자 유형을 선택하세요.");
        return false;
    }
    if($("input[name='chkBsnsType']:checked").length>1) {
        alert("사업자 유형을 1개만 선택하세요.");
        return false;
    }
    if($("#bsnsNm").val()=="") {
        $("#bsnsNm").focus();
        alert("회사명을 입력하세요.");
        return false;
    }
    if($("#bsnsRep").val()=="") {
        $("#bsnsRep").focus();
        alert("대표자명을 입력하세요.");
        return false;
    }
    if($("#bsnsNum").val()=="") {
        $("#bsnsNum").focus();
        alert("사업자등록번호를 입력하세요.");
        return false;
    }
    if($("#tblApplyInfo input[type='checkbox']:checked").length <= 0) {
        alert("신청 과목 및 신청부수를 입력하세요.");
        return false;
    }
    var arrApplys = [["mathgaFlg","mathnaFlg","engFlg","phy1Flg","chm1Flg","bio1Flg","ert1Flg"]
                    ,["mathgaCnt","mathnaCnt","engCnt","phy1Cnt","chm1Cnt","bio1Cnt","ert1Cnt"]
                    ,["수학(가)","수학(나)","영어","물리Ⅰ","화학Ⅰ","생명과학Ⅰ","지구과학Ⅰ"]];
    for(var i=0; i<arrApplys[0].length; i++) {
        if($("#"+arrApplys[0][i]).prop("checked") && $("#"+arrApplys[1][i]).val()=="") {
            $("#"+arrApplys[1][i]).focus();
            alert(arrApplys[2][i]+" 신청부수를 입력하세요.");
            return false;
        }
    }
    if($("#rdoAgreeInfoY").prop("checked")==false) {
        alert("개인정보 수집 및 컨텐츠 저작권 관련에 동의해주세요.");
        return false;
    }


    if(confirm("신청하시겠습니까?")){
        $.ajax({
            type: "POST",
            url: "./apply_proc.asp",
            timeout: 5000,
            data: $("#frmData").serialize(),
            contentType : "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            dataType: "json",
            success: function(msg) {
                alert(msg.result);
                if (msg.status == "200") {
                    document.location.href = "./";
                }
            },
            error : function(data, msg) {
                alert("관리자에게 문의하세요.(" + msg + ")");
            }
        });
        
    }
}
</script>
<!--// E : 페이지별 스크립트 -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->
