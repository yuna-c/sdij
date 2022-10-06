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
	else if($('body').attr('data-depth1') == 'on'){
		var header = $(document.createElement( 'header' ))
		.attr('id','header')
		.html('<button type="button" class="m_logo sdijon"><img src="../common/img/ci_on.png" alt="시대인재"></button><div class="head_btn"><button type="button" class="mypage on">마이메뉴</button><button type="button" class="menu">메뉴</button></div><div id="navi"><a href="#">시대인재</a><a href="#" class="sdijon on">시대인재 ON</a><a href="#" class="N">시대인재 N</a><a href="#" class="book">시대인재 Books</a></div>')
		.prependTo($('#wrap'));

		var laypop1 = $(document.createElement( 'div' ))
		.attr('data-popup','laypop')
		.attr('class','type1')
		.html('<div class="top"><div class="logo sdijon"><img src="../common/img/ci_on.png" alt="시대인재"></div><div class="head_btn"><a href="#">홈페이지</a><button type="button" class="close">닫기</button></div></div><div class="bottom"><ul data-list="type16" class="sdijon"><li class="on"><button type="button">서바이벌</button><ul><li><a href="#">서바이벌 시놉시스</a><a href="#" class="on">수학</a><a href="#">물리 I</a><a href="#">화학 I</a><a href="#">생명과학 I</a><a href="#">생명과학 II</a><a href="#">지구과학 I</a><a href="#">지구과학 II</a></li></ul></li><li><button type="button">Studeep</button><ul><li><a href="#">Studeep</a><a href="#">채점하기</a><a href="#">성적분석 부엉이포스트</a><a href="#">해설강의 미정미정미정</a><a href="#">수강후기 딥인사이드</a></li></ul></li><li><button type="button">입시 R&D</button><ul><li><a href="#">입시정보</a><a href="#">학습정보</a><a href="#">설명회</a><a href="#">컨설팅</a></li></ul></li><li><button type="button">고객센터</button><ul><li><a href="#">공지사항</a><a href="#">자주묻는질문</a><a href="#">1:1상담</a><a href="#">동영상 장애가이드</a></li></ul></li></ul></div>')/* 2017-09-18 스크립트 수정 */
		.appendTo($('#wrap'));

		var laypop2 = $(document.createElement( 'div' ))
		.attr('data-popup','laypop')
		.attr('class','type2')
		.html('<div class="top"><p class="user"><img src="../common/img/user_img.png" alt="회원사진">김시대님</p><div class="head_btn"><a href="#" class="setting">설정</a><button type="button" class="close">닫기</button></div></div><div class="bottom"><ul data-list="type16" class="mypage"><li><a href="#">장바구니 <span class="f_color3">(2)</span></a></li><li><a href="#">주문/배송조회</a></li><li><a href="#">해설강좌수강</a></li><li><a href="#">컨설팅내역조회</a></li><li><a href="#">내 게시물 보기</a></li><li><a href="#">고객센터</a></li><li><a href="#">1:1문의</a></li><li><a href="#">로그아웃</a></li></ul></div>')
		.appendTo($('#wrap'));
	}
	else if($('body').attr('data-depth1') == 'books'){
		var header = $(document.createElement( 'header' ))
		.attr('id','header')
		.html('<button type="button" class="m_logo books"><img src="../common/img/ci_books.png" alt="시대인재"></button><div class="head_btn"><button type="button" class="mypage on">마이메뉴</button></div><div id="navi"><a href="#">시대인재</a><a href="#" class="sdijon">시대인재 ON</a><a href="#" class="N">시대인재 N</a><a href="#" class="book on">시대인재 Books</a></div>')
		.prependTo($('#wrap'));

		var laypop2 = $(document.createElement( 'div' ))
		.attr('data-popup','laypop')
		.attr('class','type2')
		.html('<div class="top"><p class="user"><img src="../common/img/user_img.png" alt="회원사진">김시대님</p><div class="head_btn"><a href="#" class="setting">설정</a><button type="button" class="close">닫기</button></div></div><div class="bottom"><ul data-list="type16" class="mypage"><li><a href="#">장바구니 <span class="f_color3">(2)</span></a></li><li><a href="#">주문/배송조회</a></li><li><a href="#">해설강좌수강</a></li><li><a href="#">컨설팅내역조회</a></li><li><a href="#">내 게시물 보기</a></li><li><a href="#">고객센터</a></li><li><a href="#">1:1문의</a></li><li><a href="#">로그아웃</a></li></ul></div>')
		.appendTo($('#wrap'));
	}
	else if($('body').attr('data-depth1') == 'N'){
		var header = $(document.createElement( 'header' ))
		.attr('id','header')
		.html('<button type="button" class="m_logo sdijN"><img src="../common/img/ci_N.png" alt="시대인재"></button><div class="head_btn"><button type="button" class="mypage on">마이메뉴</button><button type="button" class="menu">메뉴</button></div><div id="navi"><a href="#">시대인재</a><a href="#" class="sdijon">시대인재 ON</a><a href="#" class="N on">시대인재 N</a><a href="#" class="book">시대인재 Books</a></div>')
		.prependTo($('#wrap'));

		var laypop1 = $(document.createElement( 'div' ))
		.attr('data-popup','laypop')
		.attr('class','type1')
		.html(' <div class="top"><div class="logo sdijN"><img src="../common/img/ci_N.png" alt="시대인재"></div><div class="head_btn"><a href="#">홈페이지</a><button type="button" class="close">닫기</button></div></div><div class="bottom"><ul data-list="type16" class="sdijN"><li class="up"><button type="button">시대인재N 소개</button><ul><li><a href="#">오시는길</a><a href="#">공지사항</a></ul></li><li><button type="button">시대인재N 시스템</button><ul><li><a href="#">커리큘럼</a><a href="#" class="on">부엉이라이브러리</a><a href="#">실전모의고사</a></li></ul></li><li><button type="button">상담/접수</button><ul><li><a href="#" class="mid" data-popup="sample">응시원서접수</a><ul class="depth_gnb"><li><a href="#">- 신설 시작반 (자연)</a></li><li><a href="#">-	신설 시작반 (인문 ) </a></li><li><a href="#">-	정규반 (대기접수) </a></li></ul></li></ul></li><li><button type="button">입시R&D</button><ul><li><a href="#">컨설팅</a></li></ul></li></ul></div>')/*20180514수정*/
		.appendTo($('#wrap'));

		var laypop2 = $(document.createElement( 'div' ))
		.attr('data-popup','laypop')
		.attr('class','type2')
		.html('<div class="top"><p class="user"><img src="../common/img/user_img.png" alt="회원사진">김시대님</p><div class="head_btn"><a href="#" class="setting">설정</a><button type="button" class="close">닫기</button></div></div><div class="bottom"><ul data-list="type16" class="mypage"><li><a href="#">장바구니 <span class="f_color3">(2)</span></a></li><li><a href="#">주문/배송조회</a></li><li><a href="#">해설강좌수강</a></li><li><a href="#">컨설팅내역조회</a></li><li><a href="#">내 게시물 보기</a></li><li><a href="#">고객센터</a></li><li><a href="#">1:1문의</a></li><li><a href="#">로그아웃</a></li></ul></div>')
		.appendTo($('#wrap'));
		/*20180514추가부분
		var laypop3 = $(document.createElement( 'div' ))
		.attr('data-popup','type1')
		.attr('class','popup3')
		.html('<div class="pop_wrap"><div data-box="pop_content"><div class="content_text"><ul class="depth_list"><li><a href="#">2018 정규반</a></li><li><a href="#">2018 신설반 자연계</a></li><li><a href="#">2018 신설반 인문계</a></li></ul></div></div><div class="btn_wrap"><button type="button" data-btn="navy" class="close">닫기</button></div></div><button class="dim"></button>')
		.appendTo($('#wrap'));
		20180514 추가끝*/
	}
	else {
		var header = $(document.createElement( 'header' ))
		.attr('id','header')
		.html('<button type="button" class="m_logo"><img src="../common/img/ci.png" alt="시대인재"></button><div class="head_btn"><button type="button" class="mypage on">마이메뉴</button><button type="button" class="menu">메뉴</button></div><div id="navi"><a href="#" class="on">시대인재</a><a href="#" class="sdijon">시대인재 ON</a><a href="#" class="N">시대인재 N</a><a href="#" class="book">시대인재 Books</a></div>')
		.prependTo($('#wrap'));

		var laypop1 = $(document.createElement( 'div' ))
		.attr('data-popup','laypop')
		.attr('class','type1')
		.html('<div class="top"><div class="logo"><img src="../common/img/ci.png" alt="시대인재"></div><div class="head_btn"><a href="#">홈페이지</a><button type="button" class="close">닫기</button></div></div><div class="bottom"><div data-tab="type1" class="m_menu"><button type="button" id="deachi" class="on">대치</button><button type="button" id="bundang">분당</button></div><ul data-list="type16" class="tab_noshow deachi" style="display:block"><li><button type="button">학원소개</button><ul><li><a href="#">시대인재소개</a><a href="#">오시는길</a><a href="#">공지사항</a></li></ul></li><li><a href="#">강사소개</a></li><li><a href="#">시간표</a></li><li><button type="button">입시R&D</button><ul><li><a href="#">재원성적표</a><a href="#">입시정보</a><a href="#">설명회</a><a href="#">컨설팅</a></li></ul></li></ul><ul data-list="type16" class="tab_noshow bundang"><li><button type="button">학원소개</button><ul><li><a href="#">시대인재소개</a><a href="#">오시는길</a><a href="#">공지사항</a></li></ul></li><li><a href="#">강사소개</a></li><li><a href="#">시간표</a></li><li><button type="button">입시R&D</button><ul><li><a href="#">재원성적표</a><a href="#">입시정보</a><a href="#">설명회</a><a href="#">컨설팅</a></li></ul></li></ul></div>')
		.appendTo($('#wrap'));

		var laypop2 = $(document.createElement( 'div' ))
		.attr('data-popup','laypop')
		.attr('class','type2')
		.html('<div class="top"><p class="user"><img src="../common/img/user_img.png" alt="회원사진">김시대님</p><div class="head_btn"><a href="#" class="setting">설정</a><button type="button" class="close">닫기</button></div></div><div class="bottom"><ul data-list="type16" class="mypage"><li><a href="#">장바구니 <span class="f_color3">(2)</span></a></li><li><a href="#">주문/배송조회</a></li><li><a href="#">해설강좌수강</a></li><li><a href="#">컨설팅내역조회</a></li><li><a href="#">내 게시물 보기</a></li><li><a href="#">고객센터</a></li><li><a href="#">1:1문의</a></li><li><a href="#">로그아웃</a></li></ul></div>')
		.appendTo($('#wrap'));
	}

	$('.sdijN li').on('click',function(){
		$(this).each(function(){
			$(this).children('button').siblings('ul').show();
			$(this).siblings('li').find('ul').hide();
		})
	})


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
		.html('<div class="inner"><div><p><b>시대인재 학원 : 02-552-2373(고3), 02-554-2373(고1/2)<br>시대인재 온/북스 : 1522-0568</b><br>대표이사 : 오우석<br>사업자등록번호 : 429-88-00534<br>주소 : 우)06279 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워) (주)하이컨시온<em class="line">footer line</em>통신판매업신고 : 제2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R">정보확인</a><br>학원설립/운영등록번호 : 제12226호 시대인재온원격학원 <a href="#">정보확인</a><br>신고기관명 : 서울특별시 강남서초교육지원청</p><em>Copyright (주)하이컨시온. All Right Reserved.</em></div><a href="#" class="view_pc">PC버전</a></div><a href="#wrap" class="go_top">맨 위로</a>')/* 2017-11-16 마크업 수정 */
		.appendTo($('#wrap'));
	}
	$('.m_logo').click(function(){
		$(this).toggleClass('on');
		$('#navi').toggle();
	});

	$('#header .head_btn .menu').click(function(){
		$('*[data-popup="laypop"].type1').show();
		$('body').addClass('stop_1');
		$('#wrap').addClass('stop_1');
		$('footer').hide();
	});
	$('#header .head_btn .mypage').click(function(){
		$('*[data-popup="laypop"].type2').show();
		$('body').addClass('stop_2');
		$('#wrap').addClass('stop_2');
		$('footer').hide();
	});

	/*20180514추가부분
	$('*[data-popup]').click(function(){
    var pop = $(this).attr("id");
    $('.' + pop).show();
    var popH = $('.' + pop).children('.pop_wrap').height(),
    popMgT = popH/2;
    $('.' + pop).children('.pop_wrap').css('margin-top',-popMgT);
  });

	$('*[data-popup="type1"].popup3 .close').click(function(){
		$(this).parents('*[data-popup="type1"].popup3').hide();
	});

	20180514 추가끝*/

	$('*[data-popup="laypop"].type1 .close').click(function(){
		$(this).parents('*[data-popup="laypop"].type1').hide();
		$('body').removeClass('stop_1');
		$('#wrap').removeClass('stop_1');
		$('footer').show();
	});
	$('*[data-popup="laypop"].type2 .close').click(function(){
		$(this).parents('*[data-popup="laypop"].type2').hide();
		$('body').removeClass('stop_2');
		$('#wrap').removeClass('stop_2')
		$('footer').show();
	});

});


