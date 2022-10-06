<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재-2019리뉴얼 template
' 모듈기능 : 템플릿 파일
' 파 일 명 : @renew_template.asp
' 작성일자 : 2018/12/26
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

<!--#include virtual="/totalMobileSite/renew2019/common/include/incMeta.asp"-->
<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<script type="text/javascript" src="/totalMobileSite/renew2019/common/js/swiper.min.js"></script>
<link rel="stylesheet" href="/totalMobileSite/renew2019/common/css/swiper.min.css">

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <h2 class="page-tit">부엉이 라이브러리</h2>
        <div class="txt-center mb40">
          수업시간을 제외한 모든 시간을 위한 공부공간 <br/>
          라이브러리로 등원 후 수업할 때만 강의실로 이동합니다.
        </div>
        <div class="library-list mb90">
          <span class="line-t no-top">공부공간은 중요한 곳</span>
          <ul class="gray-line mb40">
            <li class="fir">
              그래서 시대인재는 <br/>
              치열한 R&amp;D 과정을 통해
            </li>
            <li class="sec">
              목적을 이해하고 목적가치를 <br/>
              실현시켜주는 전문공간을
            </li>
            <li class="thir">
              만점이 실현되는 공부가 <br/>
              가장 잘 되는 곳을 구현합니다.
            </li>
          </ul>
          <!--swiper slide S-->
          <div class="swiper-container library mb30">
             <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <img src="http://img.sdij.com/sd2019/mobile/sdn/library_img_01.png" alt="라이브러리 이미지1">
                </div>
                <div class="swiper-slide">
                  <img src="http://img.sdij.com/sd2019/mobile/sdn/library_img_02.png" alt="라이브러리 이미지2">
                </div>
             </div> 
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
          </div>
          <script>
          var swiper = new Swiper('.swiper-container', {
              pagination: '.swiper-pagination',
              nextButton: '.swiper-button-next',
              prevButton: '.swiper-button-prev',
              paginationClickable: true,
              spaceBetween: 30,
              centeredSlides: true,
              autoplay: 2500,
              autoplayDisableOnInteraction: false
          });
          </script>
          <!--swiper slide E-->
          <span class="line-t">강인한 자기주도 학습에 최적화</span>
          <div class="dot-box">
            <span>시설</span>
            <ul class="dot_txt mb30">
              <li>
                프리미엄 독서실이나 독학재수 책상 이상의  <br/>
                맞춤제작 개인 책장 + 책상(지정석) + 시디즈 의자  <br/>
                (24시까지 선택자습 가능)
              </li>
              <li>
                  장시간 몰입도를 극대화하는 <br/>
                  색온도 / 밝기 조절 전체조명 시스템
              </li>
            </ul>
            <span>라이브러리 관리의 장인</span>
            <ul class="dot_txt">
              <li>
                  자습실 안에서만큼은 <br/>
                 연중지속 공부가 잘 되는 최적의 면학 분위기로 <br/>
                 주변 분위기에 학생 스스로도 공부가 잘 되는 자습실 구현
              </li>
              <li>
                학습 상담 / 생활 관리 매니저
              </li>
              <li>
                개인별 자습 몰입도 주간 리포트 발송
                <a href="javascript: void(0);" class="under-t b" onclick="window.open('http://img.sdij.com/sd2019/pc/sdn/sample.png');">more</a>
              </li>
            </ul>
          </div>

          <span class="line-t">본인 중심의 개인별 Care &amp; Review</span>
          <div class="dot-box">
            <span>최우수 질문조교 (국/영/수/탐) 1:1 질의응답</span>
            <ul class="dot_txt mb30">
              <li>
                 강사 이상으로 킬러문항의  <br/>
               원활한 해결이 가능한 (최상위권 학생들에게 <br/>
               질의응답 만족도 최고의) 최우수 질문조교 / 선생님
              </li>
              <li>
                 개인별로 충분한 질의응답 시간 배정
              </li>
            </ul>
            <span>개인별 1:1 입시컨설팅</span>
            <ul class="dot_txt">
              <li>
                  희망자에 한 상세 성적표를 바탕으로 한 방향성 중간점검
              </li>
              <li>
                  시대인재 입시평가이사 이민하
              </li>
              <li>
                 시대인재 입시평가연구소장 정이규
              </li>
              <li>
                 시대인재 입시 R&amp;D 센터 <br/>
                 (로미오 팀장 / 물량공급 팀장 / 프리오드 팀장)
              </li>
            </ul>
          </div>

          <span class="line-t">
            한 단계 대학 레벨 UP SYSTEM <br/>
            (수시 / 정시 컨설팅)
          </span>
          <div class="dot-box mb30">
            <span>
              시대인재 최정예 입시팀의 <br/>
              정시 1:1 컨설팅을 통한 성공 가능성 극대화 <br/>
              (부엉이 라이브러리 재원생 전원)
            </span>
            <ul class="dot_txt mb30">
              <li>
                  커트라인 / 대기번호 통계 추정에 있어 <br/>
                  비교불가 전국 최고의 <br/>
                  정시 / 수시 컨설팅 수초 이내 전타임 마감
              </li>
            </ul>
            <span>시대인재 입시 컨설턴트</span>
            <ul class="dot_txt">
              <li>
                  시대인재 입시평가이사 이민하
              </li>
              <li>
                  시대인재 입시평가연구소장 정이규
              </li>
              <li>
                시대인재 입시 R&amp;D 센터 <br/>
                 (로미오 팀장 / 물량공급 팀장 / 프리오드 팀장)
              </li>
            </ul>
          </div>
		
		<h2 class="page-tit border-tit">공부공간</h2>

		<div class="txt-box">
			<img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library1.png" alt=" ">
			<img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library2.png" alt=" ">
			<img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library3.png" alt=" ">
			<img src="http://img.sdij.com/sd2019/pc/sdn/2019/07/jj_library4.png" alt=" ">
		</div>
    </div>
</div>
<script type="text/javascript">
window.onload = function(){
      var thumnail = document.getElementById('slideImg');
      //var thumnailImg = thumnail.getElementsByTagName('img');
      var btn = document.getElementById('slideBtn');
      var btnA = btn.getElementsByTagName('a');

      for(var i=0,len=btnA.length;i<len;i++){
          btnA[i].idx = i;
          btnA[i].onmouseover = function(){
              displayManager(this.idx);
          }
      };

      var currentNum = 0;

      function displayManager(num){
         if(num != currentNum){
              thumnailImg[currentNum].style.display = "none"
              thumnailImg[num].style.display ="block"
              btnA[currentNum].className = ""
              btnA[num].className ="active"
         }
          currentNum = num;

      };

      function idxManager(){

        var tempNum = currentNum+1;

          if(tempNum > btnA.length-1){
              tempNum = 0;
          };

          displayManager(tempNum);
       };

       setInterval(idxManager,5000);  //10초
}
</script>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->