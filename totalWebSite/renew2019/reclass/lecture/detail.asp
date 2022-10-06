<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > 강좌 상세보기
' 모듈기능 : 강좌 상세보기
' 파 일 명 : detail.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------
%>
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:goBack();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">강좌 상세</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="lecture-container">
        <article class="container-prview content-layout">
            <div class="notice-content">
                <span class="sticker-gray">강좌공지</span>
                <a href="/totalWebSite/renew2019/reclass/board/notice.asp" class="tit-link">[공지] 시대인재 동영상 보강 영상 플레이어 안내</a>
            </div>
        </article>
       
        <!-- S : 강좌 정보 -->
        <article class="container-view content-layout">
            <h4 class="tit-dep4">강좌명</h4>

            <ul class="list-tit float-area">
                <li>
                    <span class="tit">강사명</span>
                    <span class="txt">홍길동 선생님</span>
                </li>
                <li>
                    <span class="tit">과목명</span>
                    <span class="txt">수학(가)</span>
                </li>
                <li>
                    <span class="tit">진행시기</span>
                    <span class="txt">2020-01-01 ~ 2020-01-02</span>
                </li>
                <li>
                    <span class="tit">수강일수</span>
                    <span class="txt">3일</span>
                </li>
            </ul>
        </article>
        <!--// E : 강좌 정보 -->
        
        <!-- S : 강의 리스트 -->
        <article class="container-list content-layout mt1">
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:4.666666667rem;">
                        <col style="width:4.666666667rem;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>강의명</th>
                            <th>수업자료</th>
                            <th>강의수강</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 3 %>
                        <tr>
                            <td>강의명</td>
                            <td class="txt-center">
                                <a href="javascript:void(0)" class="btn btn-black btn-M">다운로드</a>
                            </td>
                            <td class="txt-center">
                                <a href="/totalWebSite/renew2019/reclass/lecture/player.asp" class="btn btn-black btn-M">PLAY</a>
                            </td>
                        </tr>
                        <% next %>
                        <tr>
                            <td class="no-data" colspan="3">강의가 없습니다.</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- S : 플레이어 유의사항 -->
            <h4 class="tit-dep4 mt2">안내사항</h4>
            <div class="table-type1">
                <table>
                    <colgroup>
                        <col style="width:25%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>플레이어 수동설치</th>
                            <td class="txt-left">
                                <ul class="list-dash">
                                    <li>플레이어가 자동 다운로드 되지 않을 경우 프로그램 수동설치를 진행해 주세요</li>
                                    <li>IE : <a href="http://cab.starplayer.skcdn.com/starplayer/starplayer-1.5.21.52.exe" target="_blank" class="txt-link">http://cab.starplayer.skcdn.com/starplayer/starplayer-1.5.21.52.exe</a></li>
                                    <li>IE 외 크롬 브라우저 등 : <a href="http://cab.starplayer.skcdn.com/starplayer/starplayer_agent_1.2.6.71.exe" target="_blank" class="txt-link">http://cab.starplayer.skcdn.com/starplayer/starplayer_agent_1.2.6.71.exe</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>Mac Os 플레이어<br>설치 안내</th>
                            <td class="txt-left">
                                <ul class="list-dash">
                                    <li>최신 버전의 OSX 에서는 gatekeeper 에 의해 설치가 되지 않는 경우 아래와 같이 설치해 주세요.<br>finder → 다운로드 받은 폴더 로 이동 → 아래와 같이 파일 선택 후 투핑거터치 후 → 다음으로 열기 → 설치 프로그램.app (기본) 으로 설치</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--// E : 플레이어 유의사항 -->
        </article>
        <!--// E : 강의 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

<script type="text/javascript" src="/lecture/js/starplayer_app.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    $width = $(window).width();

    if($width < 400  ){
      txtCut(30);
    };
    if($width < 500){
      txtCut(45);
    };

    function txtCut(num){
      $('.revv td span').each(function(){
        var txtCon = ($(this).text()).trim();
        var txtLen =  txtCon.length;
        var limitNum = num;

        if(txtLen>limitNum){
          return $(this).text(txtCon.substring(0,limitNum)+'...')
        }else{
          return $(this).text();
        };
      });
    }
});



    //강의보기 페이지
    //<![CDATA[
    var sp = StarPlayerApp;
    sp.license = "<%=M_STAR_MOBILE_LICENSE%>";
    sp.version = "<%=M_STAR_VERSION%>";
    sp.android_version = "<%=M_STAR_ANDROID_VERSION%>";
    sp.ios_version = "<%=M_STAR_IOS_VERSION%>";

    var app = function(info_url) {
        sp.executeApp(info_url);
    }
    //]]>

    //강의 보기
    var goPlayerMobile = function(vodIdx){
        // console.log(vodIdx);
        app("http://reclass.study/lecture/streaming.asp?vodIdx="+vodIdx+"&mem_id=<%=mem_id%>");
        /*
        <% If mobileTest Then %>
        app("http://reclass.study/lecture/streaming.asp?vodIdx="+vodIdx+"&mem_id=<%=mem_id%>");
        <% Else %>
        alert('모바일 서비스는 추후 오픈됩니다.');
        <% End If %>
        */
        
    }

	// 파일 다운로드
	// var FlieDownload1 = function(file_url, path, fnm, realfnm) {
	// 	location.href = file_url + "/book_file_download.asp?path="+path+"&fnm="+fnm+"&realfnm="+realfnm;
	// };
</script>

<script type="text/javascript">


$(function() {
    
});

function goBack() {

    //history.back();
    location.href = "./list.asp?srchTabCode=<%=srchTabCode%>&list_vcnt=<%=list_vcnt%>";
}

function goPlayer(vodIdx) {

    location.href = "./player.asp?productCode=<%=productCode%>&vodIdx="+vodIdx;
}

// 다운로드
var IfVodFileDown = function(fname) {
    location.href = "http://file.reclass.study/lecFile/file_down.asp?fname=" + fname;
};
</script>

