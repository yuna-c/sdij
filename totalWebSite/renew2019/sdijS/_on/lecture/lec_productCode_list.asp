<!--#include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 강좌 > 강좌리스트
' 모듈기능 : 강좌 > 강좌리스트
' 파 일 명 : lec_list.asp
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
gubunText       = ""
loginFlg        = "N"
pageSize        = 10
TOTAL_CNT       = 0
initGubunCd     = "BEST"
initDomCd       = "2001"

page            = fncRequestForm("page")
grade           = fncRequestForm("grade")
course          = fncRequestForm("course")
courseDetail    = fncRequestForm("courseDetail")
studyStep       = fncRequestForm("studyStep")


listStyle		= fncRequest("listStyle") '-- 강좌표시 형식 (list:리스트, card:카드형, image:이미지형)
If listStyle = "" Then
	listStyle = "list"
End If


If grade = "" Then
	grade = "go3"
End If

'//- 과목
'207	국어
'208	수학
'209	영어
'210	과학



'------------------------------
' QUERY
'------------------------------

'//- 학년 선택시 필수
gradeStr = " and lec.tblLectureIDX in ("
gradeStr = gradeStr & "SELECT tblLectureIDX                    "
gradeStr = gradeStr & "  FROM tblLectureItem WITH(NOLOCK)      "
gradeStr = gradeStr & " WHERE relateGroup = 'userGrade'        "
If grade = "go12" Then
	gradeStr = gradeStr & "   AND relatedIDX in ('212001','212002') " '//- 고1,2
else
	gradeStr = gradeStr & "   AND relatedIDX in ('212003','212004') " '//- 고3.n수
End If
gradeStr = gradeStr & "   AND isdel = 'N' ) "






'------------------------------
' ETC
'------------------------------






%>

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->
	<form method="post" action="" id="sForm" name="sForm" action = "/totalWebSite/renew2019/sdijS/_on/lecture/lec_list.asp">
		<input type="hidden" name="grade" id="grade" value="<%=grade%>">
		<input type="hidden" name="course" id="course" value="<%=course%>">
		<input type="hidden" name="courseDetail" id="courseDetail" value="<%=courseDetail%>">
		<input type="hidden" name="studyStep" id="studyStep" value="<%=studyStep%>">
	</form>

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container">
            <div class="content-layout">
                <div class="board-layout mt50">
                    <!-- S : dep1-tab -->
                    <ul class="dep1-tab">
                        <li class="<%=iif(grade = "go3","selected","")%>"><a href="javascript: void(0)" onclick="goAction('grade', 'go3')">고3</a></li>
                        <li class="<%=iif(grade = "go12","selected","")%>"><a href="javascript: void(0)" onclick="goAction('grade', 'go12')">고2/1</a></li>
                    </ul>
                    <!--// E : dep1-tab -->

                    <!-- S : 강좌 리스트 -->
						<% If listStyle = "card" Then %>
						<!--#include virtual="/totalWebSite/renew2019/sdijS/_on/lecList/inc.lecListCard.asp"-->
						<% ElseIf listStype = "image" Then %>
						<!--#include virtual="/totalWebSite/renew2019/sdijS/_on/lecList/inc.lecListImage.asp"-->
						<% Else%>
						<!--#include virtual="/totalWebSite/renew2019/sdijS/_on/lecList/inc.lecList.asp"-->
						<% End If  %>
                    <!--// E : 강좌 리스트 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 
<script type="text/javascript">
$(function(){
	// 강좌목록채우기

});

function addCart() {
	if (confirm('선택하신 상품을 장바구니에 추가 하시겠습니까?'))
	{
		var frm = document.frmProductList;
		frm.mode.value = 'ajax';

		var serializedData = $(frm).serialize();
		$.ajax({
				url: "/_pay/cart/xhrCartAdd.asp",
				type: "POST",
				data: serializedData,
				dataType: 'html',
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
					if (confirm('장바구니에 담았습니다. 장바구니로 이동하시겠습니까?'))
					{
						location.href='/_pay/cart/cart.asp';
					} else {
						console.log(result);
					}
				},
				error:function(rst){
					alert(rst);
				}
			});

	}
}

function goCheckOut() {
	if (confirm('선택하신 상품을 바로 구매하시겠습니까?'))
	{
		/*var frm = document.frmProductList;
		frm.mode.value = 'checkout';
		frm.action='href="/_pay/cart/cart_proc.asp"';
		frm.submit();*/


		var frm = document.frmProductList;
		frm.mode.value = 'checkout';

		var serializedData = $(frm).serialize();
		$.ajax({
				url: "/_pay/cart/xhrCartAdd.asp",
				type: "POST",
				data: serializedData,
				dataType: 'html',
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
					location.href='/_pay/cart/cartFix.asp'; //나중에 결제로 이동
				},
				error:function(rst){
					alert(rst);
				}
			});
	 }
}
</script>

<script type="text/javascript">
	function goAction(name, value){
		$("#sForm #"+name).val(value)
		$("#sForm").submit();
	}
</script>
// E : 페이지별 스크립트 -->