<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 고객센터 > 1:1 문의 > 1:1 문의 글보기
' 모듈기능 : 시대인재 Digital > 고객센터 > 1:1 문의 > 1:1 문의 글보기
' 파 일 명 : qnaView.asp
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
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/help.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="qna-view-container">
        <div class="wide-layout">
            <div class="page-loc">
                <span>홈</span>
                <span>고객센터</span>
                <span class="color-black">1:1 문의</span>
            </div>

            <h2 class="tit-dep1"><span class="tit">1:1 문의</span></h2>

            <!-- S : 1:1 문의 -->
            <div class="view-type1">
                <div class="tit-area">
                    <h4 class="tit-dep5">게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목</h4>

                    <div class="info-area">
                        <% if false then '답변 대기중 일 경우 %>
                        <span><i class="ico-ellipsis"></i> 답변대기중</span>
                        <% else %>
                        <span class="color-green"><i class="ico-check"></i> 답변완료</span>
                        <% end if %>

                        <span>프리패스</span>
                        <span>2020/01/01</span>
                    </div>
                </div>

                <div class="content-area">
                    질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
                </div>

                <!-- S : 첨부파일이 있을 경우 -->
                <div class="file-area">
                    <span class="tit">첨부파일</span>

                    <a href="javascript:void(0)" class="btn"><i class="ico-file"></i> 파일명파일명.jpg</a>
                </div>
                <!--// E : 첨부파일이 있을 경우 -->
            </div>
            <!--// E : 1:1 문의 -->

            <!-- S : 1:1 답변 -->
            <div class="view-type1 view-reply">
                <h4 class="tit-dep4">
                    <span class="tit">답변</span>
                </h4>

                <div class="tit-area">
                    <h4 class="tit-dep5">답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목</h4>

                    <div class="info-area">
                        <span>답변자</span>
                        <span>2020/01/01</span>
                    </div>
                </div>
                
                <div class="content-area">
                    질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
                </div>

                <!-- S : 첨부파일이 있을 경우 -->
                <div class="file-area">
                    <span class="tit">첨부파일</span> 

                    <a href="javascript:void(0)" class="btn"><i class="ico-file"></i> 파일명파일명.jpg</a>
                </div>
                <!--// E : 첨부파일이 있을 경우 -->
            </div>
            <!--// E : 1:1 답변 -->

            <div class="view-pager">
                <a href="qnaList.asp" class="btn-ico"><i class="ico-list"></i> 목록</a>

                <div class="right">
                    <a href="javascript:void(0);" class="btn-ico"><i class="ico-prev"></i> 이전</a>
                    <a href="javascript:void(0);" class="btn-ico">다음 <i class="ico-next"></i></a>
                </div>
            </div>
        </div>
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->