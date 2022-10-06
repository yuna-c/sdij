<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재-2019리뉴얼 재종반
' 모듈기능 : 부엉이 라이브러리
' 파 일 명 : jj_library.asp
' 작성일자 : 2019-01-05
' 작 성 자 : 박범일
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
    ' 해당 페이지 쿼리문 정의
	'arrParams = Array( _
	'	DbCon.makeParam("@APP_SEQ",            adInteger,  adParamInput, 0,   extra_app_seq), _
	'	DbCon.makeParam("@CHR_CD",             adInteger,  adParamInput, 0,   extra_chr_cd), _
	'	DbCon.makeParam("@LEC_CD",             adInteger,  adParamInput, 0,   extra_lec_cd), _
	'	DbCon.makeParam("@STD_DVC",            adChar,     adParamInput, 6,   extra_std_dvc), _
	'	DbCon.makeParam("@USER_ID",            adVarChar,  adParamInput, 20,  user_id), _
	'	DbCon.makeParam("@PLAYER_ID",          adVarChar,  adParamInput, 50,  player_id), _
	'	DbCon.makeParam("@CONTENT_DURATION",   adSmallInt, adParamInput, 0,   content_duration), _
	'	DbCon.makeParam("@CURRENT_POSITION",   adSmallInt, adParamInput, 0,   current_position), _
	'	DbCon.makeParam("@PLAYED_TIME",        adSmallInt, adParamInput, 0,   played_time), _
	'	DbCon.makeParam("@STRONG_PLAYED_TIME", adSmallInt, adParamInput, 0,   strong_played_time), _
	'	DbCon.makeParam("@TRACKER_TIME",       adSmallInt, adParamInput, 0,   tracker_time), _
	'	DbCon.makeParam("@TRACKER_DATA",       adVarChar,  adParamInput, 20,  tracker_data), _
	'	DbCon.makeParam("@CONTENT_URL",        adVarChar,  adParamInput, 200, content_url), _
	'	DbCon.makeParam("@EXTRA_DATA",         adVarChar,  adParamInput, 100, extra_data), _
	'	DbCon.makeParam("@BEGIN_LOCALTIME",    adDate,     adParamInput, 7,   begin_localtime), _
	'	DbCon.makeParam("@END_LOCALTIME",      adDate,     adParamInput, 7,   end_localtime), _
	'	DbCon.makeParam("@EXCEPTION",          adChar,     adParamInput, 1,   exception) _
	')

	'Call DbCon.ExecSP("P_PLAYER_LOG", arrParams, DBSDIJLMS)



'------------------------------
' ETC
'------------------------------



%>

<!--#include virtual="/totalWebSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<link rel="stylesheet" type="text/css" href="css/library.css">

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">
        부엉이 라이브러리
        <small>
            부엉이 라이브러리는 수업시간을 제외한 모든 시간을 위한 공부공간입니다.<br>
            부엉이 라이브러리로 등원 후 수업할 때만 강의실로 이동합니다.
        </small>
    </h2>

    <div class="board-layout">
        <div class="library-top">
            <span>공부공간은 중요한 곳</span>
            <ul>
                <li>
                    <em>01</em>
                    그래서 <br/>
                    시대인재는 치열한 R&amp;D 과정을 통해
                </li>
                <li>
                    <em>02</em>
                    목적을 이해하고 <br/>
                    목적가치를 실현시켜주는 전문공간을
                </li>
                <li>
                    <em>03</em>
                    만점이 실현되는<br/>
                    공부가 가장 잘 되는 곳을 구현합니다.
                </li>
            </ul>
        </div>
        <div class="library-box relative">
            <div class="slide-container mb70">
                <div class="cycle-slideshow"
                    data-cycle-fx="scrollHorz"
                    data-cycle-timeout="3000"
                >
                    <img src="http://img.sdij.com/sd2019/pc/sdn/library-rolling-01.png" alt="라이브러리 이미지">
                    <img src="http://img.sdij.com/sd2019/pc/sdn/library-rolling-02.png" alt="라이브러리 이미지">

                    <div class="cycle-pager"></div>
                </div>
            </div>

            <div class="float-area mb60">
                <div class="line-t fl">
                    강인한 자기주도<br/>
                    학습에 최적화
                </div>
                <div class="fl">
                    <p class="mb10 b">시설</p>
                    <ul class="list-dotted mb30">
                        <li>
                            프리미엄 독서실이나 독학재수 책상 이상의 <br>
                            맞춤제작 개인 책장 + 책상(지정석) + 시디즈 의자 (24시까지 선택 자습 가능)
                        </li>
                        <li>
                            장시간 몰입도를 극대화하는 색온도 / 밝기 조절 전체조명 시스템
                        </li>
                    </ul>
                    <p class="mb10 b">라이브러리 관리의 장인</p>
                    <ul class="list-dotted mb30">
                        <li>
                            자습실 안에서 만큼은 연중지속 공부가 잘 되는 최적의 면학 분위기로 <br>
                            주변 분위기에 학생 스스로도 공부가 잘 되는 자습실 구현
                        </li>
                        <li>
                            학습 상담 / 생활 관리 매니져
                        </li>
                        <li>
                            개인별 자습 몰입도 주간 리포트 발송
                            <a href="javascript: void(0);" onclick="sdijPop2('jj_library_pop.asp', 'jj_library_pop', 789, 880);" alt="개인별 자습 몰입도 주간 리포트 발송 더보기" title="개인별 자습 몰입도 주간 리포트 발송 더보기">more</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="float-area">
                <div class="line-t fl">
                    본인 중심의 개인별 <br>
                    Care &amp; Review
                </div>
                <div class="fl mb60">
                    <p class="mb10 b">최우수 질문조교(국/영/수/탐) 1:1 질의응답</p>
                    <ul class="list-dotted mb30">
                        <li>
                            강사 이상으로 킬러문항의 원활한 해결이 가능한 (최상위권 학생들에게 <br>
                            질의응답 만족도 최고의) 최우수 질문조교 / 선생님
                        </li>
                        <li>
                            개인별로 충분한 질의응답 시간 배정
                        </li>
                    </ul>
                    <p class="mb10 b">개인별 1:1 입시컨설팅</p>
                    <ul class="list-dotted mb30">
                        <li>
                            희망자에 한 상세 성적표를 바탕으로 한 방향성 중간점검
                        </li>
                        <li>
                            시대인재 입시평가이사 이민하
                        </li>
                        <li>
                            시대인재 입시평가연구소장 정이규
                        </li>
                        <li>시대인재 입시 R&amp;D센터 (로미오 팀장 / 물량공급 팀장 / 프리오드 팀장)</li>
                    </ul>
                </div>
            </div>

            <div class="float-area">
                <div class="line-t fl">
                    한 단계 대학 <br>
                    레벨 Up System <br>
                    (수시/정시 컨설팅)
                </div>
                <div class="fl mb60">
                    <p class="mb10 b">
                        시대인재 최정예 입시팀의 정시 1:1 컨설팅을 통한 성공가능성 극대화 <br>
                        (부엉이 라이브러리 재원생 전원)
                    </p>
                    <ul class="list-dotted mb30">
                        <li>
                            커트라인 / 대기번호 통계 추정에 있어 비교불가 전국 최고의 <br>
                            정시 / 수시 컨설팅 수초 이내 전타임 마감
                        </li>
                        <li>
                            개인별로 충분한 질의응답 시간 배정
                        </li>
                    </ul>
                    <p class="mb10 b">시대인재 입시 컨설턴트</p>
                    <ul class="list-dotted mb30">
                        <li>
                             시대인재 입시평가이사 이민하
                        </li>
                        <li>
                            시대인재 입시평가연구소장 정이규
                        </li>
                        <li>
                            시대인재 입시 R&amp;D센터 (로미오 팀장 / 물량공급 팀장 / 프리오드 팀장)
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="board-layout">
        <div class="txt-box">
			<img src="<%=URL_IMG%>/sd2019/pc/sdn/library.jpg" alt="부엉이 라이브러리" usemap="#library-link">
			<map name="library-link" id="library-link">
				<area alt="개인별 자습 몰입도 주간 리포트 발송 더보기" title="개인별 자습 몰입도 주간 리포트 발송 더보기" href="#" onclick="sdijPop2('jj_library_pop.asp', 'jj_library_pop', 789, 880);" shape="rect" coords="272,1311,333,1343">
			</map>
		</div>
    </div>

    <div class="txt-box">
        <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library1.png" alt=" ">
        <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library2.png" alt=" ">
        <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library3.png" alt=" ">
        <img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library4.png" alt=" ">
    </div>

    <!-- S : 관련 컨텐츠 -->
	<!--include virtual="/totalWebSite/renew2019/common/include/inc.relation.asp"-->
    <!--// E : 관련 컨텐츠 -->
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->