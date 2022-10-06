<%
'-----------------------------------------------------------------------
' 업 무 명 : 온라인 > 검색 > 검색 페이지 > 인기/검색결과 카드형 강좌 리스트
' 모듈기능 : 온라인 > 검색 > 검색 페이지 > 인기/검색결과 카드형 강좌 리스트
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






'------------------------------
' QUERY
'------------------------------





'------------------------------
' ETC
'------------------------------






%>

<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/search.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container">
        <div class="content-layout">
            <h2 class="dep2-tit">인기강좌</h2>

            <!-- S : 인기강좌 리스트 -->
            <div class="list-lec-type1">
                <ul class="float-area">
                    <% for i = 1 to 10 %>
                    <li>
                        <a href="#">
                            <div class="img-area">
                                <img src="https://via.placeholder.com/265x220" alt="선생님 이미지">

                                <div class="data-btn">
                                    <button type="button" onclick="confirm('내 PASS강좌에 강좌를 추가하시겠습니까?')"><i class="ico ico-plus-lec">PASS강좌 추가하기</i></button>
                                </div>
                            </div>

                            <div class="tit-area">
                                <div class="data-tit">
                                    강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 
                                </div>
                                <div class="data-info">
                                    <span>박종민</span>
                                    <span>99강 예정</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <% next %>
                </ul>
            </div>
            <!--// E : 인기강좌 리스트 -->

            <h2 class="dep2-tit">전체강좌</h2>
            <!-- S : 전체강좌 리스트 -->
            <div class="list-lec-type2">
                <ul>
                    <% for i = 1 to 10 %>
                    <li>
                        <div class="sticker-area">
                            <div class="data-sticker">
                                <span class="sticker">BEST</span>
                                <span class="sticker">NEW</span>
                            </div>

                            <div class="data-btn">
                                <button type="button" onclick="confirm('내 PASS강좌에 강좌를 추가하시겠습니까?')" class="btn btn-sm2">추가하기</button>
                            </div>
                        </div>

                        <a href="#">        
                            <div class="tit-area">
                                <div class="data-tit">
                                    강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 강좌명 
                                </div>
                                <div class="data-info">
                                    <span>박종민</span>
                                    <span>99강 예정</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <% next %>
                </ul>

                <div class="board-btn">
                    <button type="button" class="btn-more">더 보기</button>
                </div>
            </div>
            <!--// E : 전체강좌 리스트 -->
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