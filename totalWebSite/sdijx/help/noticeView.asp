<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 고객센터 > 공지사항 > 글보기
' 모듈기능 : 시대인재 Digital > 고객센터 > 공지사항 > 글보기
' 파 일 명 : noticeView.asp
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
    <section id="container" class="notice-view-container mt40">
        <div class="wide-layout">
            <div class="page-loc">
                <span>홈</span>
                <span>고객센터</span>
                <span class="color-black">공지사항</span>
            </div>

            <h2 class="tit-dep1">
                <span class="tit">공지사항</span>
            </h2>

            <!-- S : 공지사항 -->
            <div class="view-type1">
                <div class="tit-area">
                    <h4 class="tit-dep5">게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목</h4>

                    <div class="info">
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
            <!--// E : 공지사항 -->

            <div class="view-pager">
                <a href="noticeList.asp" class="btn-ico"><i class="ico-list"></i> 목록</a>

                <div class="right">
                    <a href="javascript:void(0);" class="btn-ico"><i class="ico-prev"></i> 이전</a>
                    <a href="javascript:void(0);" class="btn-ico">다음 <i class="ico-next"></i></a>
                </div>
            </div>
        </div>
    </section>
    <!--// E : container -->


<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->