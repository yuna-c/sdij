<!--include virtual="/totalMobileSite/renew2019/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 고객센터 > 메인 > FAQ
' 모듈기능 : 고객센터 > 메인 > FAQ
' 파 일 명 : faq.asp
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
<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/sdijS/common/css/sd2019/cs.css?ver=<%=now()%>">
<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incHeader.asp"-->

    <!-- S : 컨텐츠 영역 -->
    <div class="layout-container fixed-container test">
        <div class="content-layout">
            <div class="board-layout">
                <h2 class="dep1-tit">시대인재 FAQ</h2>

                <!-- S : FAQ검색창 -->
				<div class="gray-box faq">

	                <div class="search-faq">
	                    <div class="search-area white">
	                        <input type="text" placeholder="검색어입력폰트">
	                        <button type="button" class="btn-search"><span class="ico ico-search2">검색하기</span></button>
	                    </div>
	                    <div class="hash-area mt10">
	                        <span class="sticker-faq mr10">추천검색어</span>
	                        <a href="#" class="hash-txt">#강의듣는법</a>
							<a href="#" class="hash-txt">#A.Pass</a>
							<a href="#" class="hash-txt">#월결제</a>
							<a href="#" class="hash-txt">#서바이벌</a>
	                    </div>
	                </div>
				</div>
				<!--// E : FAQ검색창 -->

                <!-- S : tab-type03 -->
                <div class="tab-type03 faq mt30 mb30">
                    <ul class="float-area">
                        <li class="selected">
                            <a href="#" class="tab-a">
    						 <span class="ico ico-pass block m-auto"></span>
    							프리패스
    						</a>
                        </li>
                        <li>
    						<a href="#" class="tab-a">
    						 <span class="ico ico-video block m-auto"></span>
    							강좌
    						</a>
    					</li>
    					<li>
    						<a href="#" class="tab-a">
    						 <span class="ico ico-textbook block m-auto"></span>
    							교재
    						</a>
    					</li>
    					<li>
    						<a href="#" class="tab-a">
    						 <span class="ico ico-etc block m-auto"></span>
    							기타
    						</a>
    					</li>
                    </ul>
                </div>
                <!-- //E : tab-type03 -->

                <!-- S : board-view : 게시글 뷰 -->
                <div class="board-view">
                    <dl class="list-toggle accordion">
                        <dt class="selected">
                            <a href="javascript:void(0);">
                                <span class="block color-gray fs12">교재구성</span>
                                <span class="block color-darkgray">교재 관련 자주하는 질문 타이틀 입니다.</span>
                            </a>
                        </dt>
                        <dd class="on circle-faq">
                            <span class="block mt5">교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다.</span>
                        </dd>
                        <dt>
                            <a href="javascript:void(0);">
                                <span class="block color-gray fs12">교재구성</span>
                                <span class="block color-darkgray">교재 관련 자주하는 질문 타이틀 입니다.</span>
                            </a>
                        </dt>
                        <dd class="circle-faq">
                            <span class="block mt5">교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다.</span>
                        </dd>
                        <dt>
                            <a href="javascript:void(0);">
                                <span class="block color-gray fs12">교재구성</span>
                                <span class="block color-darkgray">교재 관련 자주하는 질문 타이틀 입니다. 두줄 노출일땐 이렇게</span>
                            </a>
                        </dt>
                        <dd class="circle-faq">
                            <span class="block mt5">교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다. 교재구성에 관한 답변입니다.</span>
                        </dd>
                    </dl>

                    <div class="board-btn mt10">
                        <button type="button" class="btn-more">더 보기</button>
                    </div>
                </div>
                <!--// E : board-view : 게시글 뷰 -->

                <div class="black-box faq mt50">
					<ul>
						<li>
							<span class="data-txt">고객센터 1:1 문의</span>
							<a href="qna_write.asp"><span class="data-sub mr20">1:1 문의하기 ></span></a>
                            <a href="qna_list.asp"><span class="data-sub">1:1 문의내역 ></span></a>
						</li>
						<li>
							<span class="data-txt">시대인재S 공지사항</span>
							<a href="qna_list.asp"><span class="data-sub">공지사항 전체보기 ></span></a>
						</li>
						<li class="border-none">
							<span class="data-txt">시대인재S 고객센터 1234-5678</span>
							<span class="data-sub">평일 10:00 - 18:00(주말/공휴일 휴무)</span>
						</li>
					</ul>
				</div>
            </div>
        </div>
    </div>
    <!--// E : 컨텐츠 영역 -->


<!--#include virtual="/totalMobileSite/renew2019/sdijS/common/include/incFooter.asp"-->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--

$(function(){
    $('.tab-type03 li').on('click', function(e){
        var $tab = $(this).parent();
        var objIndex = $tab.children('li').index($(this));

        if( objIndex > -1 ){
            $tab.children('li').removeClass('selected').eq(objIndex).addClass('selected');
            $tab.parents('.board-tab').children('.tab-content').hide().eq(objIndex).show();
        }
    });
});

//-->
</script>
<!--// E : 페이지별 스크립트 -->

<style>

</style>
