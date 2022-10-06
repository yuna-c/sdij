<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 단과(대치/목동/분당) 강의실 입실번호 발급 시스템
' 모듈기능 : 신청 상세/완료
' 파 일 명 : detail.asp
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
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!-- S : 페이지별 css -->
<link rel="stylesheet" type="text/css" href="css/default.css?ver=<%=now()%>">
<style>
    @media print{
        .detail-container .tit-print{ display:block !important; }
        .detail-container .tit-dep1, .detail-container .table-type1 .table-btn{ display:none; }
    }
</style>
<!--// E : 페이지별 css -->
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

<!-- S : container -->
<div id="container" class="detail-container">
    <!-- S : 발급 상세 -->
    <div class="container-list content-layout">
        <h2 class="tit-dep1">
            시대인재 강의실 입실번호 발급이<br>
            완료되었습니다.
        </h2>

        <h2 class="tit-dep1 tit-print" style="display:none;">홍길동님 입실번호 발급 내역</h2>

        <div class="table-type1 table-mobile">
            <table>
                <colgroup>
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>분원</th>
                        <th>선생님</th>
                        <th>수업명</th>
                        <th>수업 회차</th>
                        <th>수업 일시</th>
                        <th>번호신청 일시</th>
                        <th>입실번호</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td data-th="분원">대치</td>
                        <td data-th="선생님">현우진</td>
                        <td data-th="수업명" class="txt-left">【현우진T 확통 특강】 토 PM 1:30</td>
                        <td data-th="수업 회차">4</td>
                        <td data-th="수업 일시">2020-01-01</td>
                        <td data-th="번호신청 일시">2020-01-01 오후 11:00</td>
                        <td data-th="입실번호">A03</td>
                    </tr>
                </tbody>
            </table>

            <div class="table-btn mt1 txt-right">
                <a href="javascript:void(0);" onclick="javascript:window.print();" class="btn btn-M btn-gray">인쇄하기</a>
                <a href="default.asp" class="btn btn-M btn-black">리스트</a>
            </div>
        </div>
    </div>
    <!--// E : 발급 상세 -->
</div>
<!--// E : container -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->