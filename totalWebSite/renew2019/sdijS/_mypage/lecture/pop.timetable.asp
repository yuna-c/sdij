<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 내강좌 > 시간표 보기
' 모듈기능 : 마이페이지 > 내강좌 > 시간표 보기
' 파 일 명 : pop.timetable.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



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
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">
<style type="text/css">
    @media print{
        .pop-content *{ -webkit-print-color-adjust:exact; }
        .board-btn{ display:none; }
    }
</style>

<body>
<div class="pop-content">
    <h4 class="dep1-tit mt0 mb30">시간표</h4>

    <div class="board-table time-table">
        <table>
            <caption>시간표</caption>
            <!-- <colgroup>
                <col width="70px">
                <col width="80px">
                <col width="70px">
                <col width="120px">
                <col width="auto">
                <col width="100px">
            </colgroup> -->
            <thead>
                <tr>
                    <th class="color-gray" scope="col">시간</th>
                    <th scope="col">월</th>
                    <th scope="col">화</th>
                    <th scope="col">수</th>
                    <th scope="col">목</th>
                    <th scope="col">금</th>
                    <th class="color-gray" scope="col">토</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>1교시</th>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td class="today"><!-- 해당 요일 class="today" 추가 -->
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>2교시</th>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td class="today"><!-- 해당 요일 class="today" 추가 -->
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>3교시</th>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td class="today"><!-- 해당 요일 class="today" 추가 -->
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>4교시</th>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td class="today"><!-- 해당 요일 class="today" 추가 -->
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>
                        <p class="color-block">수학</p>
                        <p class="color-gray">홍길동</p>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>5-7교시</th>
                    <td colspan="6">
                        <b>자습시간</b>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="board-btn mt30 txt-center">
        <button type="button" class="btn btn-black btn-mid" onclick="window.print();">인쇄하기</button>
    </div>
</div>
</body>
</html>