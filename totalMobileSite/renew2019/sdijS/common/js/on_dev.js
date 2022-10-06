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
		  .html('<div id="gnb" class="online"><h1><a href="#"><img src="../common/img/logo_sidae_on.png" alt="시대인재" /></a></h1><ul><li class="on"><a href="">서바이벌</a><ul><li><a href="">서바이벌소개</a><a href="">수학</a><a href="">물리 I</a><a href="">화학 I</a><a href="">생명과학 I</a><a href="">생명과학 II</a><a href="">지구과학 I</a><a href="">지구과학 II</a></li></ul></li><li><a href="">studeep</a><ul><li><a href="">studeep</a><a href="">성적분석표<br>deeptail</a><a href="">해설강의<br>deeptail</a><a href="">게시판<br>deeptail</a></li></ul></li><li><a href="">입시 R&D</a><ul><li><a href="">입시정보</a><a href="">학습정보</a><a href="">설명회</a><a href="">컨설팅</a></li></ul></li><li><a href="">고객센터</a><ul><li><a href="">공지사항</a><a href="">자주묻는질문</a><a href="">1:1상담</a><a href="">동영상<br>장애가이드</a></li></ul></li><li class="my"><a href="">마이페이지</a><ul><li><a href="">장바구니<em>(2)</em></a><a href="">구매내역</a><a href="">해설강좌수강</a><a href="">컨설팅내역조회</a><a href="">게시판</a><a href="">회원정보</a></li></ul></li><!-- 장바구니상품이 담겨있을때 class="new"--><li class="login"><a href="">로그인/회원가입</a></li><!-- <li class="logout"><a href="">김시대님</a></li> 로그인시 노출--></ul><button type="button" class="dim"></button></div>')
		  .prependTo($('#wrap'));

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


