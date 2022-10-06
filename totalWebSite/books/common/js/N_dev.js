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
		  .html('<div id="gnb" class="N"><h1><a href="#"><img src="../common/img/logo_sidae_N.png" alt="시대인재" /></a></h1><ul><li class="up"><a href="">시대인재 N 소개</a><ul><li><a href="">오시는길</a><a href="">공지사항</a><a href="" class="new">명예의 전당</a></li></ul></li><li><a href="">시대인재 N 시스템</a><ul><li><a href="">커리큘럼</a><a href="">부엉이라이브러리</a><a href="">실전모의평가</a></li></ul></li><li><a href="">상담/접수</a><ul><li><a href="">모집요강</a><div class="depth_gnb"><a href="">응시원서접수</a><ul><li><a href="#">-	신설 시작반 (자연)</a></li><li><a href="#">-	신설 시작반 (인문 ) </a></li><li><a href="#">-	정규반 (대기접수) </a></li></ul></div></li></ul></li><li><a href="">입시R&D</a><ul><li><a href="">컨설팅</a></li></ul></li><li class="my"><a href="">마이페이지</a><ul><li><a href="">장바구니<em>(2)</em></a><a href="">구매내역</a><a href="">해설강좌수강</a><a href="">컨설팅내역조회</a><a href="">게시판</a><a href="">회원정보</a></li></ul></li><!-- 장바구니상품이 담겨있을때 class="new"--><li class="login"><a href="">로그인/회원가입</a></li><!-- <li class="logout"><a href="">김시대님</a></li> 로그인시 노출--></ul><button type="button" class="dim"></button></div>')/* 2018-05-14 마크업 수정 */
		  .prependTo($('#wrap'));

 	$('#gnb ul li a').mouseover(function(){
 		$('#gnb ul li > ul').show();/*> 20180514추가*/
 		$('#gnb .dim').show()
 	});

 	$('#gnb ul li.login').mouseover(function(){
 		$('#gnb ul li > ul').hide();/*> 20180514추가*/
 		$('#gnb .dim').hide()
 	});
 	// $('#header').mouseleave(function(){
	 // 	$('#gnb ul li > ul').hide();	
	 // 	$('#gnb .dim').hide()
	 // }); 

	 $('#gnb > ul').mouseleave(function(){
	 	$('#gnb ul li > ul').hide();	/*> 20180514추가*/
	 	$('#gnb .dim').hide()
	 });

	$('#gnb .dim').mouseover(function(){
	 	$('#gnb ul li > ul').hide();	/*> 20180514추가*/
	 	$(this).hide()
	 });


});


