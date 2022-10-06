/*************************************************************************
* @ 서비스명		: sidaeInjae Total Web Site
* @ 파일명 		: /common/js/common.js
* @ 페이지설명 	: Common.js
* @ 작성자 			: 김은옥 (publisher@to-be.co.kr)
* @ 작성일 			: 2017-03-27
************************** 수정이력 ****************************************
* 번호 		작업자 			변경내용 
*_________________________________________________________________________
* 김은옥 	최초작성 
*************************************************************************/

/*************************************************************************************************
 *
 * Layout Style
 *
 *************************************************************************************************/
 $(function(){
	// 헤더
	if($('body').attr('data-depth1') == 'launching'){
		var header = $(document.createElement( 'header' ))
		.attr('id','header')
		.html('<div id="gnb"><h1>Be the 시대인재 무료신청</h1></div>')
		.prependTo($('#wrap'));
	}
	else if($('#wrap').attr('data-popup') == 'pop'){
		var header = $(document.createElement( 'header' ))
		.attr('id','header')
		.prependTo($('#wrap'))
		.css('display','none');
	}
	else{
		var header = $(document.createElement( 'header' ))
		.attr('id','header')
		.html('<div id="gnb"><h1><a href="#"><img src="../common/img/logo_sidae.png" alt="시대인재" /></a></h1></div>')
		.prependTo($('#wrap'));
	}

	// 푸터
	if($('#wrap').attr('data-popup') == 'pop'){
		var footer = $(document.createElement( 'footer' ))
		.attr('id','footer')
		.appendTo($('#wrap'))
		.css('display','none');
	}
	else{
		var footer = $(document.createElement( 'footer' ))
		.attr('id','footer')
		.html('<div class="inner"><h3>시대인재</h3><div><span>주소 : 135-500 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온 우) 06279</span> | <span>대표이사 : 오우석</span> | <span>사업자등록번호 : 429-88-00534</span> | <span>대표번호 : 02-2051-2378</span><br><p>Copyright (주)하이컨시. All Right Reserved.</p></div></div>')
		.appendTo($('#wrap'));
	}

});


