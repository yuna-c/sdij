<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 선생님 게시판 > 수강후기 글보기
' 모듈기능 : 시대인재 Digital > 선생님 게시판 > 수강후기 글보기
' 파 일 명 : reviewView.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/teachers.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="review-container">
        <!-- S : 상단 공지 영역 -->
        <!--#include file="incNoti.asp"-->
        <!--// E : 상단 공지 영역 -->

        <div class="lnb-layout">
            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <div class="content-layout">
                <div class="page-loc">
                    <span>선생님 홈</span>
                    <span class="color-black">수강후기</span>
                </div>

                <h2 class="tit-dep1">
                    <span class="tit">
                        수강후기
                        <em class="sub">346</em>
                    </span>
                    <small>홍길동 선생님의 수업 후기를 남겨주세요.</small>
                </h2>

                <!-- S : 수강후기 -->
                <div class="view-type1">
                    <div class="tit-area">
                        <h4 class="tit-dep5">너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요! 너무너무 좋아요! 최고에요!</h4>
					
                        <div class="info-area">
                            <span>강좌명</span>
							<span>2021/01/08</span>
							<span>강좌 만족도</span>
							<span class="grade">
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
							</span>
							<div class="right">
								<a href="/sdijx/lecture/view.asp" class="txt-link strong">강좌 바로가기</a>
							</div>
                        </div> 

					<!-- 	<div class="grade-area">
							<span class="txt">강좌 만족도</span>
							<span>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
								<i class="ico-star-on"></i>
							</span>
						</div> -->
                    </div>
					
                    <div class="content-area">
                        강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ <br><br>
						강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ 강의 정말 도움 많이 됬습니다! ㅎㅎㅎ
                    </div>
                </div>
                <!--// E : 수강후기 -->

                <div class="view-pager">
                    <a href="dataList.asp" class="btn-ico"><i class="ico-list"></i>목록</a>
					
					<% If true Then '수강후기 일 경우 %>
                    <div class="right">
                        <a href="javascript:void(0);" class="btn-ico"><i class="ico-prev"></i>이전</a>
                        <a href="javascript:void(0);" class="btn-ico">다음<i class="ico-next"></i></a>
                    </div>
					
					<% Else '나의 수강 후기일 경우 %>
					<div class="right">
						<a href="javascript:void(0);" class="color-red" onclick="IfDel()">삭제</a>
						<a href="javascript:void(0);" onclick="IfMod()">수정</a>
					</div>
					<% End If %>
                </div>
            </div>
        </div>        
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->