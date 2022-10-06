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
		  .html('<div id="gnb" class="book"><h1><a href="#"><img src="../common/img/logo_sidae_books.png" alt="시대인재" /></a></h1><ul><li><a href="">고객센터</a><ul><li><a href="">공지사항</a><a href="">자주묻는질문</a><a href="">1:1상담</a><a href="">동영상<br>장애가이드</a></li></ul></li><li class="on my"><a href="">마이페이지</a><ul><li><a href="">장바구니<em>(2)</em></a><a href="">구매내역</a><a href="">해설강좌수강</a><a href="">컨설팅내역조회</a><a href="">게시판</a><a href="">회원정보</a></li></ul></li><li class="login"><span>김시대님</span><button type="button">로그아웃</button></li></ul><button type="button" class="dim"></button></div>')
		  .prependTo($('#wrap'));
	// 2017-08-21 스크립트 수정 S
 	$('#gnb ul li a').mouseover(function(){
 		$('#gnb ul li ul').show();
 		$('#gnb .dim').show()
 	});
 	// 2017-08-21 스크립트 수정 E
 	// $('#gnb *[data-form="select"]').mouseover(function(){
 	// 	$('#gnb ul li ul').show();
 	// 	$('#gnb .dim').show()
 	// });
 	$('#gnb ul li.login').mouseover(function(){
 		$('#gnb ul li ul').hide();
 		$('#gnb .dim').hide()
 	});
 	// $('#header').mouseleave(function(){
	 // 	$('#gnb ul li > ul').hide();	
	 // 	$('#gnb .dim').hide()
	 // }); 20170717 삭제
	 // 2017-08-21 스크립트 추가 S
	 $('#gnb > ul').mouseleave(function(){
	 	$('#gnb ul li > ul').hide();	
	 	$('#gnb .dim').hide()
	 });
	 // 2017-08-21 스크립트 추가 E
	$('#gnb .dim').mouseover(function(){
	 	$('#gnb ul li > ul').hide();	
	 	$(this).hide()
	 });
});


