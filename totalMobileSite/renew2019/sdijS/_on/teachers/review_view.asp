<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 수강후기 글보기
' 모듈기능 : 선생님 > 수강후기 글보기
' 파 일 명 : review_view.asp
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

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container">
        <div class="content-layout">
            <h2 class="dep1-tit">수강후기</h2>

            <div class="board-layout">
                <!-- S : 수강후기 보기 -->
                <div class="board-view board-view2">
                    <table>
                        <colgroup>
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <!-- S : 타이틀 -->
                            <tr>
                                <th>
                                    <div class="sticker-info">
                                        <% '베스트 아이콘 %>
                                        <span class="sticker-board sticker-orange">best</span>

                                        <div class="review-box">
                                            <span class="ico ico-star ico-star-on">별점 1점</span>
                                            <span class="ico ico-star ico-star-on">별점 2점</span>
                                            <span class="ico ico-star">별점 3점</span>
                                            <span class="ico ico-star">별점 4점</span>
                                            <span class="ico ico-star">별점 5점</span>
                                        </div>
                                    </div>

                                    <div class="board-tit">
                                        재원생 부엉이 포스트 성적 열람 방법 안내 타이틀 무한대로 노출 됩니다. 길게 쓰진 않겠지만 타이틀은 전부 노출 됩니다.
                                    </div>

                                    <div class="board-info">
                                        <span>홍길동</span>
                                        <span>2019-01-01</span>
                                    </div>
                                </th>
                            </tr>
                            <!--// E : 타이틀 -->
                        </thead>
                        <tbody>
                            <!-- S : 강좌내용 -->
                            <tr class="lec-info">
                                <td>
                                    <div class="tit mb5">홍길동 선생님</div>

                                    강좌명

                                    <div class="btn-info">
                                        <a href="#" class="btn">OT</a>
                                        <a href="#" class="btn">맛보기</a>
                                        <a href="#" class="btn btn-black">강좌 바로가기</a>
                                    </div>
                                </td>
                            </tr>
                            <!--// E : 강좌내용 -->

                            <!-- S :내용 -->
                            <tr>
                                <td class="txt-box">
                                    <div class="hash-info">
                                        <b>#글자제한수는없나요</b>
                                        <b>#글자제한수는없나요</b>
                                        <b>#글자제한수는없나요</b>
                                        <b>#글자제한수는없나요</b>
                                        <b>#글자제한수는없나요</b>
                                    </div>

                                    내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                                    <img src="http://via.placeholder.com/950x100" alt=" ">
                                </td>
                            </tr>
                            <!--// E :내용 -->

                            <!-- S : 첨부파일 -->
                            <tr>
                                <td class="txt-file">
                                    <span>첨부파일</span>
                                    <span class="ico ico-file2"></span>
                                    <button type="button" class="color-darkgray link-file">file30ile30ile30ile30ile30ile30ile30ile30ile30ile30ile30ile30ile30ile30ile3027491.png</button>
                                </td>
                            </tr>
                            <!--// E : 첨부파일 -->
                        </tbody>
                    </table>

                    <!-- S : board-btn -->
                    <div class="board-btn mt30">
                        <a href="/totalMobileSite/renew2019/sdijS/_on/teachers/review_list.asp" class="btn">리스트</a>
                    </div>
                    <!--// E : board-btn -->
                </div>
                <!--// E : 수강후기 보기 -->
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){

});

//-->
</script>
<!--// E : 페이지별 스크립트 -->
