<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 가이드 
' 모듈기능 : 가이드
' 파 일 명 : index.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="guide.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="guide-container">
        <!-- S : 컨텐츠 -->
		<div class="wide-layout">
			<h2 class="tit-dep1">Html guide</h2>
						
			<div class="tab-type1 tab-border">
                <ul>
					<li class="selected"><a href="javascript:void(0);" title="기본 규칙">기본 규칙</a></li>
					<li><a href="javascript:void(0);" title="기본 레이아웃">기본 레이아웃</a></li>
					<li><a href="javascript:void(0);" title="default">default</a></li>
					<li><a href="javascript:void(0);" title="form">form</a></li>
					<li><a href="javascript:void(0);" title="tab">tab</a></li> 
                    <li><a href="javascript:void(0);" title="list">list</a></li>
					<li><a href="javascript:void(0);" title="board">board</a></li> 
					<li><a href="javascript:void(0);" title="board">table</a></li> 
					<li><a href="javascript:void(0);" title="visual">visual</a></li> 
                </ul>
            </div>

            <!-- S : 기본 규칙 -->
            <div class="tab-content tab-on">
            	<!--#include File="incTab1.asp"-->
            </div>
			<!--// E : 기본 규칙 -->
			
			<!-- S : 기본 레이아웃 -->
            <div class="tab-content">
            	<!--#include File="incTab2.asp"-->
            </div>
            <!--// E : 기본 레이아웃 -->

			<!-- S : default -->
            <div class="tab-content">
				<!--#include File="incTab3.asp"-->
            </div>
			<!--// E : default -->

			<!-- S : form -->
            <div class="tab-content">
				<!--#include File="incTab4.asp"-->
			</div>
			<!--// E : form -->		

			<!-- S : tab -->
            <div class="tab-content">
				<!--#include File="incTab5.asp"-->
			</div>
			<!--// E : tab -->	

			<!-- S : list -->
            <div class="tab-content">
				<!--#include File="incTab6.asp"-->
			</div>
			<!--// E : list -->
			
			<!-- S : board -->
            <div class="tab-content">
				<!--#include File="incTab7.asp"-->
			</div>
			<!--// E :board -->	

			<!-- S : table -->
            <div class="tab-content">
				<!--#include File="incTab8.asp"-->
			</div>
			<!--// E :table -->	

			<!-- S : visual -->
            <div class="tab-content">
				<!--#include File="incTab9.asp"-->
			</div>
			<!--// E : visual -->
		</div> 
        <!--// E : 컨텐츠 -->
    </section>
    <!--// E : container -->

<script>
//datepicker
$(function(){
	// input date value="오늘 날짜"
	fnTimeNow();
});

// 검색 필터 클릭 시 
function fnSearchFilter(obj, btnObj){
	var $obj = $(obj);
	var $btnObj = $(btnObj);

	// 월별 전체 클릭 시
	if( $obj.hasClass('check-all') === true ){
		var $checked = $obj.prop('checked');
		console.log($obj.parent().parent());
		$obj.parent().parent().find('input[type="checkbox"]').prop('checked', $checked);
	}

	// 필터 개수 표기
	var num = $obj.parents('.popover-container').find('input[type="checkbox"]:checked').not('.check-all').length;

	if( num === 0 ){
		$btnObj.removeClass('selected');
	}else{
		$btnObj.addClass('selected').children('.num').text(num);
	}
}
</script>

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->2020-10-28