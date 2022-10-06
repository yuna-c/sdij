$(document).ready(function(){

	//설명회 팝업
	/*내용없을경우 활성화 안되게 Fn*/
	// $('.show-btn').each(function(){
  	// 	$(this).on('click',function(){

  	// 		var pop = $(this).parent('li').siblings('.hide-pop');
  	// 		var $popTxt = pop.text();

  	// 		if((($popTxt.trim()).length) > 0){
  	// 				$(this).parents('li').toggleClass('active');
	// 				$(this).parents('li').siblings('').removeClass('active')
  	// 		};
  	// 	});
	// });


	$('.show-btn').on('click',function(){
		$(this).parents('li').toggleClass('active');
		$(this).parents('li').siblings('').removeClass('active')
	});


	// top button
	if( $('.btn-top').length > 0 ) $('.btn-top').scrollToFixed({ bottom : 10, zIndex : 99 });

	if( $('.page-btn').length > 0 ){
		$('.page-btn').scrollToFixed({ bottom : 0, zIndex : 999 });
		$('.btn-top').hide();
	};

	// gnb button
	$('.btn-gnb').on('click', function(){
		if( $('#container').is('.nav-on') === true ){
			// $('html, body, #wrap, #container').css('height','auto');
			$('#container').removeClass('nav-on');
		}else{
			// $('html, body, #wrap, #container').css('height','100%');
			$('#container').addClass('nav-on');
		}
	});

	// board pager
	$('.board-pager .pager-num a, .board-date .btn').on('click', function(){
		$(this).addClass('on').siblings().removeClass('on');
	});


	// tab click
	$('.tab-list a').on('click', function(){
		var $tab = $(this).parents('.tab-list');
		var objIndex = -1;

		objIndex = $tab.children('a').index($(this));

		// tab alert 처리 할 경우 class="alert"
		if( $(this).hasClass('alert') ){
			return false;
		}else{
			if( objIndex > -1 ){
				$tab.children('a').removeClass('selected').eq(objIndex).addClass('selected');

				if($tab.children('a').length == $tab.parent().children('.tab-content').length){
					$tab.parent().children('.tab-content').hide().eq(objIndex).show();
				}
			}
		}
	});

	// dep-tab click
	$('.dep1-tab ul > li').on('click', function(){
		var $tab = $(this).parents('.dep1-tab');
		var objIndex = $tab.find('li').index(this);

		$tab.find('li').removeClass('selected').eq(objIndex).addClass('selected');

		if($tab.find('li').length == $tab.parent().children('.tab-content').length){
			$tab.parent().children('.tab-content').hide().eq(objIndex).show();
		}
	});

	$('.grade-tab > .fr li a').on('click', function(e){
		$(this).parent().addClass('selected').siblings().removeClass('selected');
	});

	// toggle list
	$('.list-toggle dt a').on('click', function(){
		var $tab = $(this).parent();

		if( $tab.hasClass('selected') === true ){
			$tab.removeClass('selected');
			$tab.next().slideUp(300);
			
		}else{
			$tab.siblings('dt').removeClass('selected')
			$tab.addClass('selected');
			$tab.parent().children('dd').slideUp(300);
			$tab.next().slideDown(300);
		}

		if( $tab.parent().hasClass('list-toggle2') === true ){
			setTimeout(function(){
				fnScrollObj($tab);
			}, 350);

		}

		if( $tab.parent().hasClass('list-toggle') === true && $tab.hasClass('selected') === true ){
			setTimeout(function(){
				fnScrollObj($tab);
			}, 350);
		}
	});

	$('.tab-type01 li, .tab-type02 a').on('click', function(){
		$(this).addClass('selected').siblings().removeClass('selected');
	});

	//20201119 탭 리뉴얼	
	$('.tab-new1 > ul > li, .tab-new2 > ul > li').on('click', function(){	
		var $tab = $(this).parent().parent(),
			objIndex = $(this).parent().children().index(this);

		$(this).addClass('selected').siblings().removeClass('selected');

		if( $tab.children().children().length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(objIndex).show();
		}
	});

	// 약관동의 all checkbox
	$('.all-check').on('click', function(){
		if( $(this).prop('checked') ){
			$(this).parents('.agree-all').next('.agree-list').find('input[type=checkbox]').prop('checked', true);
		}else{
			$(this).parents('.agree-all').next('.agree-list').find('input[type=checkbox]').prop('checked', false);
		}
	});

	// // datepicker
	// var toDay = new Date();
	// var dates = $(".datepicker").each(function(){
	// 	$(this).datepicker({
	// 		dateFormat : 'yy-mm-dd',
	// 		prevText : '이전 달',
	// 		nextText : '다음 달',
	// 		monthNames : ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
	// 		monthNamesShort : ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
	// 		dayNames : ['일', '월', '화', '수', '목', '금', '토'],
	// 		dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
	// 		dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
	// 		showMonthAfterYear : true,
	// 		yearSuffix : ' / ',
	// 		showButtonPanel : true,
	// 		currentText : '오늘 날짜',
	// 		closeText : '닫기',
	// 		showOtherMonths : true,
	// 		changeMonth : true,
	// 		changeYear : true,
	// 		maxDate : toDay,
	// 		showAnim : "slideDown",
	// 	});
	// });

	//  input file
	if( $('.form-file').length > 0 ){
		$(".form-file input[type='file']").on("change", function(){
			var fileName = $(this).val().split("\\").pop();
			$(this).siblings("span.file-name").addClass('on').html(fileName);
		});
	};

	// form-multi
	$('.form-multi input').on('click', function(){
		$(this).parent().addClass('on').siblings().removeClass('on');
	});

});

// scroll animation
function fnScrollObj(obj){
	$('html,body').animate({ scrollTop: $(obj).offset().top }, 500);
}

function fnCloseAlert(){

		var layerClass = $('.dim-alert')

		layerClass.hide().parents('.dim-layer').hide().parents('body').css({'position':'relative', 'width':'100%', 'height':'auto', 'left':'0'});

		layerClass.remove()

}

function fnAlertMsg(msg){
	$('.dim-alert').show();

	var innerHtml = '<div class="dim-content dim-alert">';
		innerHtml += '<div class="dim-txt">'+msg+'</div>';
		innerHtml += '<div class="dim-btn"><button onclick="fnCloseAlert();return false;" class="btn btn-black btn-confirm">확인</button></div>';
		innerHtml += '</div>';

	$('.dim-layer').append(innerHtml);

	fnOpenLayer('dim-alert');
	return false;
	alert('실행')
}

function fnAlertMsgTit(tit, msg){
	$('.dim-alert').show();

	var innerHtml = '<div class="dim-content dim-alert dim-tit-alert">';
		innerHtml += '<span class="btn-close" onclick="fnCloseAlert();return false;" ><span class="ico ico-close">팝업창 닫기</span></span>';
		innerHtml += '<h4 class="dim-tit">'+tit+'</h4>';
		innerHtml += '<div class="dim-txt">'+msg+'</div>';
		innerHtml += '<div class="dim-btn"><button onclick="fnCloseAlert();return false;" class="btn btn-black btn-confirm">확인</button></div>';
		innerHtml += '</div>';

	$('.dim-layer').append(innerHtml);

	fnOpenLayer('dim-alert');
	return false;
	alert('실행')
}

// layer open
function fnOpenLayer(layer){
	var layerName = layer;
	var layerClass = $('.' + layerName);

	// 해당 dim 만 띄울수 있게 dim1 , dim2 클래스명으로 제어
	if( layerClass.show().siblings().not('.layer-bg').length > 0 || layerClass.show().siblings().not('.dim-bg').length > 0 ){
		layerClass.show().siblings().not('.layer-bg, .layer-content, .dim-bg').hide();
	}

	layerClass.parents('.dim-layer').show().parents('body').css({'position':'fixed', 'width':'100%', 'height':'100%', 'left':'0'});

	// position 값으로 닫기 제어합니다
	$('.pop-close, .btn-confirm').on('click', function(){
		layerClass.hide().parents('.dim-layer').hide().parents('body').css({'position':'relative', 'width':'100%', 'height':'auto', 'left':'0'});
	});

	// search - filter 닫기
	$('.btn-cancle').on('click', function(){
		var cl = this.classList.contains('init')

		if (cl) {
			return false
		} else {
			layerClass.hide().parents('.dim-layer').hide().parents('body').css({'position':'relative', 'width':'100%', 'height':'auto', 'left':'0'});
		}
	});

	return false;
}

// layer close
function fnCloseLayer(obj){
	var layerClass = $(obj);
	layerClass.parents('.dim-full').hide().parents('.dim-layer').hide().parents('body').css({'position':'relative', 'width':'100%', 'height':'auto', 'left':'0'});

	return false;
}

function fnCloseLayer2(obj){
	var layerClass = $(obj);
	layerClass.hide().parents('.dim-layer').hide().parents('body').css({'position':'relative', 'width':'100%', 'height':'auto', 'left':'0'});

	return false;
}



/*-----------------------------------------------------------------------
 업 무 명 : 강좌리스트 작업
 모듈기능 : divClass에 선언된 dom으로 lectureList의 강좌리스트를 뿌린다.
 작성일자 : 2019-10-24
 작 성 자 : 다니엘
 변수내용 : divClass dom 정보 lectureList 상품코드 , 로 구분
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/

function fnLectureList(divClass,productList){
	$.ajax({
		url: "/_on/lecList/leclistAjax.asp",
		type: "POST",
		data: "productList="+productList,
		dataType: 'html',
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		success: function (result) {


			var HTML  = "<div class='board-btn page-btn'>                                             ";
				HTML += "	<button  class='btn btn-lightgray' onclick='addCart();'>장바구니</button>            ";
				HTML += "	<button class='btn btn-black' onclick='goCheckOut();'>바로구매</button>";
				HTML += "</div>                                                                             ";

			$(divClass).html(result).append(HTML);


		},
		error:function(rst){
			console.log(rst)
//			alert(rst);
		}
	});
}



/*-----------------------------------------------------------------------
 업 무 명 : 강좌리스트 작업
 모듈기능 : divClass에 선언된 dom으로 lectureList의 강좌리스트를 뿌린다.
 작성일자 : 2019-11-03
 작 성 자 : 다니엘
 변수내용 : divClass dom 정보 lectureList 상품코드 , 로 구분
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/

function fnLectureCardList(divClass,productList){
	$.ajax({
		url: "/_on/lecList/leclistCardAjax.asp",
		type: "POST",
		data: "productList="+productList,
		dataType: 'html',
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		success: function (result) {
								
			$(divClass).html(result)//.append(HTML);

		},
		error:function(rst){
			console.log(rst)
//			alert(rst);
		}
	});
}






/*-----------------------------------------------------------------------
 업 무 명 : 강좌리스트 작업
 모듈기능 : divClass에 선언된 dom으로 lectureList의 강좌리스트를 뿌린다.
 작성일자 : 2019-11-03
 작 성 자 : 다니엘
 변수내용 : divClass dom 정보 lectureList 상품코드 , 로 구분
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/

function fnLectureImgeList(divClass,productList){
	$.ajax({
		url: "/_on/lecList/leclistImgeAjax.asp",
		type: "POST",
		data: "productList="+productList,
		dataType: 'html',
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		success: function (result) {
			$(divClass).html(result)//.append(HTML);
		},
		error:function(rst){
			console.log(rst)
//			alert(rst);
		}
	});
}





/*-----------------------------------------------------------------------
 업 무 명 : 장바구니로 보내기
 모듈기능 : 장바구니로 보내기
 작성일자 : 2019-10-24
 작 성 자 : 다니엘
 변수내용 :
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
function addCart() {
	var inputChk = 0
	$("input[name=tblProductIDX]").each(function(i){
		if($(this).prop("checked") == true){
			inputChk++;
		}
	});

	if(inputChk == 0){
		alert("강좌상품을 선택해주세요");
		return;
	}


	if (confirm('선택하신 상품을 장바구니에 추가 하시겠습니까?'))
	{
		//var frm = document.frmProductList;


		var frm = document.createElement("form");
		frm.method = "post";
		var input = null
		//- 선택된 강좌만 넘기자
		$("input[name=tblProductIDX]").each(function(i){
			if($(this).prop("checked") == true){
				input = null;
				input = document.createElement("input");
				$(input).attr("type","hidden");
				$(input).attr('name','tblProductIDX');
				$(input).attr("value",$(this).val());
				frm.appendChild(input);
			}
		});


		$("input[name=relationProductIDX]").each(function(i){
			if($(this).prop("checked") == true){
				input = null;
				input = document.createElement("input");
				$(input).attr("type","hidden");
				$(input).attr('name','relationProductIDX');
				$(input).attr("value",$(this).val());
				frm.appendChild(input);
				inputChk++;
			}
		});

		//- mode생성
		input = null;
		input = document.createElement("input");
		$(input).attr("type","hidden");
		$(input).attr('name','mode');
		$(input).attr("value","ajax");
		frm.appendChild(input);

		var serializedData = $(frm).serialize();
		$.ajax({
				url: "/_pay/cart/xhrCartAdd.asp",
				type: "POST",
				data: serializedData,
				dataType: 'html',
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
					if (confirm('장바구니에 담았습니다. 장바구니로 이동하시겠습니까?'))
					{
						location.href='/_pay/cart/cart.asp';
					} else {
						console.log(result);
					}
				},
				error:function(rst){
					alert(rst);
				}
			});

	}
}

/*-----------------------------------------------------------------------
 업 무 명 : 바로구매로 보내기
 모듈기능 : 바로구매로 보내기
 작성일자 : 2019-10-24
 작 성 자 : 다니엘
 변수내용 :
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
function goCheckOut() {

	var inputChk = 0
	$("input[name=tblProductIDX]").each(function(i){
		if($(this).prop("checked") == true){
			inputChk++;
		}
	});

	if(inputChk == 0){
		alert("강좌상품을 선택해주세요");
		return;
	}


	if (confirm('선택하신 상품을 바로 구매하시겠습니까?'))
	{
		/*var frm = document.frmProductList;
		frm.mode.value = 'checkout';
		frm.action='href="/_pay/cart/cart_proc.asp"';
		frm.submit();*/

		var frm = document.createElement("form");
		frm.method = "post";
		var input = null
		//- 선택된 강좌만 넘기자
		$("input[name=tblProductIDX]").each(function(i){
			if($(this).prop("checked") == true){
				input = null;
				input = document.createElement("input");
				$(input).attr("type","hidden");
				$(input).attr('name','tblProductIDX');
				$(input).attr("value",$(this).val());
				frm.appendChild(input);
			}
		});


		$("input[name=relationProductIDX]").each(function(i){
			if($(this).prop("checked") == true){
				input = null;
				input = document.createElement("input");
				$(input).attr("type","hidden");
				$(input).attr('name','relationProductIDX');
				$(input).attr("value",$(this).val());
				frm.appendChild(input);
				inputChk++;
			}
		});

		//- mode생성
		input = null;
		input = document.createElement("input");
		$(input).attr("type","hidden");
		$(input).attr('name','mode');
		$(input).attr("value","checkout");
		frm.appendChild(input);
//		frm.mode.value = 'checkout';

		var serializedData = $(frm).serialize();
		$.ajax({
				url: "/_pay/cart/xhrCartAdd.asp",
				type: "POST",
				data: serializedData,
				dataType: 'html',
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success: function (result) {
					location.href='/_pay/cart/cartFix.asp'; //나중에 결제로 이동
				},
				error:function(rst){
					alert(rst);
				}
			});
	 }
}
