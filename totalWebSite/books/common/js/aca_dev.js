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
		  .html('<div id="gnb" class="aca"><h1><a href="#"><img src="../common/img/logo_sidae.png" alt="시대인재" /></a></h1><span data-form="select" class="main blue"><select><option>대치</option><option>분당</option></select></span><ul class="blue"><li class="on"><a href="">학원소개</a><ul class="blue"><li><a href="">시대인재소개</a><a href="">오시는길</a><a href="">공지사항</a></li></ul></li><li><a href="">강사소개</a><ul><li><a href="">강사소개</a></li></ul></li><li><a href="">강좌안내</a><ul><li><a href="">강좌안내</a></li></ul></li><li><a href="">강좌예약</a><ul><li><a href="">고3</a><a href="">고2</a><a href="">고1</a></li></ul></li><li><a href="">입시R&D</a><ul><li><a href="">재원성적표</a><a href="">입시정보</a><a href="">설명회</a><a href="">컨설팅</a></li></ul></li><li class="my"><a href="">마이페이지</a><ul><li><a href="">장바구니<em>(2)</em></a><a href="">구매내역</a><a href="">해설강좌수강</a><a href="">컨설팅내역조회</a><a href="">게시판</a><a href="">회원정보</a></li></ul></li><!--<li class="login"><a href="">로그인/회원가입</a></li>--><li class="login"><span>김시대대님</span><button type="button">로그아웃</button></li></ul><button type="button" class="dim"></button></div>')
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
 	// }); 20170717 삭제
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
	$('*[data-form="select"] select').selectOrDie();

	$('*[data-form="select"].main .sod_list span').click(function(){
    	var index = $('*[data-form="select"].main .sod_list span').index(this);
    	if(index == 0){
    		$('*[data-form="select"].main').addClass('blue');
    		$('*[data-form="select"].main + ul').addClass('blue');
    	} else{
    		$('*[data-form="select"].main').removeClass('blue');
    		$('*[data-form="select"].main + ul').removeClass('blue');
    	}
    });
});


