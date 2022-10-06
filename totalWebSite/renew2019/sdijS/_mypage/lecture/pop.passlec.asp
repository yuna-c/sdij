<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 내강좌 > PASS 강좌 추가
' 모듈기능 : 마이페이지 > 내강좌 > PASS 강좌 추가
' 파 일 명 : pop.passlec.asp
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

<body>
<div class="pop-content">
    <h4 class="dep1-tit mt0 mb30 border-none">
        Pass 강좌 추가하기
        <small>원하는 Pass 강좌를 추가 해보세요!</small>
    </h4>

    <!-- S : 강좌 리스트 -->
    <div class="board-list lec-list">
        <table>
            <colgroup>
                <col style="width:120px;">
                <col style="width:auto;">
                <col style="width:100px;">
                <col style="width:60px;">
            </colgroup>
            <thead>
                <tr>
                    <th>강사명</th>
                    <th>강좌명</th>
                    <th>개강일</th>
                    <th>
                        <label class="form-checkbox">
                            <input type="checkbox" class="check-all">
                            <span class="ico ico-checkbox"></span>
                        </label>
                    </th>
                </tr>
            </thead>
            <tbody>
                <% For i = 1 To 6 %>
                <tr>
                    <td>홍길동<% = i %></td>
                    <td><div class="tit-txt">
                        강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명
                    </div></td>
                    <td>2019-07-07</td>
                    <td>
                        <label class="form-checkbox">
                            <input type="checkbox">
                            <span class="ico ico-checkbox"></span>
                        </label>
                    </td>
                </tr>
                <% next %>
            </tbody>
        </table>
    </div>
    <!--// E : 강좌 리스트 -->

    <!-- S : 페이지 버튼 -->
	<div class="board-pager">
        <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
        <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>
        
        <div class="pager-num">
            <a href="javascript:void(0);" class="on">1</a>
            <a href="javascript:void(0);">2</a>
            <a href="javascript:void(0);">3</a>
            <a href="javascript:void(0);">4</a>
            <a href="javascript:void(0);">5</a>
            <a href="javascript:void(0);">6</a>
            <a href="javascript:void(0);">7</a>
            <a href="javascript:void(0);">8</a>
            <a href="javascript:void(0);">9</a>
            <a href="javascript:void(0);">10</a>
        </div>

        <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
        <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
    </div>
    <!--// E : 페이지 버튼 -->

    <!-- S : 강좌 리스트 -->
    <div class="board-list more-list">
        <div class="add-lec">
            <table>
                <colgroup>
                    <col style="width:120px;">
                    <col style="width:auto;">
                    <col style="width:100px;">
                    <col style="width:60px;">
                </colgroup>
                <tbody>
                    <tr class="no-data">
                        <td colspan="4">
                            선택된 강좌가 없습니다.
                        </td>
                    </tr>
                    <% For i = 1 To 6 %>
                    <tr>
                        <td>홍길동</td>
                        <td><div class="tit-txt">
                            강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명
                        </div></td>
                        <td>2019-07-07</td>
                        <td>
                            <button type="button"><span class="ico ico-date-close">리스트 삭제</span></button>
                        </td>
                    </tr>
                    <% next %>
                </tbody>
            </table>
        </div>

        <div class="control-lec">
            <table>
                <colgroup>
                    <col style="width:120px;">
                    <col style="width:auto;">
                    <col style="width:160px;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>
                            <button class="btn-control">리스트 닫기 <span class="ico ico-snb-top"></span></button>
                        </th>
                        <td class="txt-left">
                            <strong>총 4개</strong>의 강좌가 선택 되었습니다.
                        </td>
                        <td>
                            <input type="submit" class="btn btn-mid" value="추가하기">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!--// E : 강좌 리스트 -->
</div>

<script type="text/javascript">

$(function(){
    // 체크박스 all
    $('.check-all').on('click', function(){
        $(this).parents('table').children('tbody').find('input[type="checkbox"]').prop('checked', this.checked);
    });

    $('.btn-control').on('click', function(){
        if( $(this).find('.ico').hasClass('ico-snb-bottom') === true ){
            $(this).html('리스트 닫기 <span class="ico ico-snb-top"></span>');
            $(this).parents('.control-lec').prev().slideDown(500);
            // console.log(1);
        }else{
            $(this).html('리스트 열기 <span class="ico ico-snb-bottom"></span>');
            $(this).parents('.control-lec').prev().slideUp(500);
            // console.log(2);
        }
    });
});

</script>
</body>
</html>