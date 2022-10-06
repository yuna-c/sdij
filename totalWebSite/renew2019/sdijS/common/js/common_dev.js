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
	var header = $(document.createElement( 'header' ))
		  .attr('id','header')
		  .html('<div id="gnb"><h1><a href="#"><img src="../common/img/logo_sidae.png" alt="시대인재" /></a></h1><ul><li class="on"><a href="">학원소개</a><ul><li><a href="">시대인재소개</a><a href="">오시는길</a><a href="">공지사항</a></li></ul></li><li><a href="">강사소개</a><ul><li><a href="">강사소개</a></li></ul></li><li><a href="">시간표</a><ul><li><a href="">시간표</a></li></ul></li><li><a href="">컨설팅</a><ul><li><a href="">컨설팅 신청</a><a href="">신청조회</a></li></ul></li><li><a href="">설명회</a><ul><li><a href="">설명회 신청</a><a href="">신청조회</a></li></ul></li>\<li class="my"><a href="">마이페이지</a><ul><li><a href="">마이페이지</a><a href="">장바구니<em>(2)</em></a><a href="">구매내역</a><a href="">강좌수강</a><a href="">학원수강내역</a><a href="">컨설팅</a><a href="">게시판</a><a href="">회원정보</a></li></ul></li><li class="login"><a href="">로그인/회원가입</a></li><!-- <li class="login"><span>김시대대님</span><button type="button">로그아웃</button></li> --></ul><button type="button" class="dim"></button></div>')
		  .prependTo($('#wrap'));

	// 푸터
	var footer = $(document.createElement( 'footer' ))
		.attr('id','footer')
		.html('<div class="inner"><h3>시대인재</h3><div><span>주소 : 135-500 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온 우) 06279</span> | <span>대표이사 : 오우석</span> | <span>사업자등록번호 : 429-88-00534</span><br><p><span>대표번호 : 02-2051-2378</span> | &nbsp; Copyright (주)하이컨시온. All Right Reserved.</p></div></div>')
		.appendTo($('#wrap'));

	// GNB
	var header = $(document.createElement( 'div' ))
		  .attr('id','sideMenu')
		  .html('<ul><li class="on"><a href="">시대인재</a></li><li><a href="">시대인재 on</a></li><li><a href="">시대인재 book</a></li></ul>')
		  .appendTo($('#footer'));	

 	$('#gnb ul li').mouseover(function(){
 		$('#gnb ul li ul').show();
 		$('#gnb .dim').show()
 	});
 	$('#gnb ul li.login').mouseover(function(){
 		$('#gnb ul li ul').hide();
 		$('#gnb .dim').hide()
 	});
 	$('#header').mouseleave(function(){
	 	$('#gnb ul li > ul').hide();	
	 	$('#gnb .dim').hide()
	 });
	$('#gnb .dim').mouseover(function(){
	 	$('#gnb ul li > ul').hide();	
	 	$(this).hide()
	 });

});


