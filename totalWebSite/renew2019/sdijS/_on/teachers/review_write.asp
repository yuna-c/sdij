<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 선생님 > 리뷰작성하기
' 모듈기능 : 선생님 > 리뷰작성하기
' 파 일 명 : review_write.asp
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
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incHeader.asp"-->

	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container mypage-container">
            <div class="content-layout">
                <div class="board-layout">
                    <h2 class="dep1-tit">
                        리뷰 작성하기
                        <small>생생한 강의 후기를 작성 해주세요!</small>
                    </h2>
                    
                    <!-- S : 리뷰 작성하기 -->
                    <div class="form-defult form-defult2">
                        <form action="" method="">
                        <table>
                            <colgroup>
                                <col style="width:150px;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>과목 및 강사명</th>
                                    <td>
                                        <div class="form-select">
                                            <select>
                                                <option hidden disabled selected>과목</option>
                                                <option value="">과목명</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-select">
                                            <select>
                                                <option hidden disabled selected>강사명</option>
                                                <option value="">강사명</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>강좌명</th>
                                    <td colspan="2">
                                        <div class="form-select">
                                            <select>
                                                <option hidden disabled selected>질문하고 싶은 강좌를 선택해 주세요</option>
                                                <option value="">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>해시태그</th>
                                    <td colspan="2">
                                        <div class="form-input">
                                            <input type="text" placeholder="#해시태그는 최대 5개까지 입력 가능합니다">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>만족도</th>
                                    <td colspan="2">
                                        <div class="review-info">
                                            <a href="javascript:void(0);" class="ico ico-star2 ico-star2-on">별점 1점</a>
                                            <a href="javascript:void(0);" class="ico ico-star2">별점 2점</a>
                                            <a href="javascript:void(0);" class="ico ico-star2">별점 3점</a>
                                            <a href="javascript:void(0);" class="ico ico-star2">별점 4점</a>
                                            <a href="javascript:void(0);" class="ico ico-star2">별점 5점</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>제목</th>
                                    <td colspan="2">
                                        <div class="form-input">
                                            <input type="text">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>내용</th>
                                    <td colspan="2">
                                        <div class="form-textarea">
                                            <textarea></textarea>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="board-btn txt-center mt50">
                            <input type="submit" value="작성하기" class="btn btn-black btn-lg">
                            <a href="#" class="btn btn-lg">취소</a>
                        </div>
                        </form>
                    </div>
                    <!--// E : 리뷰 작성하기 -->
                </div>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
	<!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
$(function(){
    //별점 스크립트
    $('.review-info .ico-star2').on('click', function(){
        $(this).siblings('a').removeClass('ico-star2-on');
        $(this).addClass('ico-star2-on').prevAll('a').addClass('ico-star2-on');
        return false;
    }); 
});

</script>
<!--// E : 페이지별 스크립트 -->