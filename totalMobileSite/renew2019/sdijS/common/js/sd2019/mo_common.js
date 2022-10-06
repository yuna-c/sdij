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
	$('.tab-list a').on('click', function(e){
		var $tab = $(this).parents('.tab-list');
		var objIndex = -1;

		objIndex = $tab.children('a').index($(this));

		if( objIndex > -1 ){
			e.preventDefault();
			$tab.children('a').removeClass('selected').eq(objIndex).addClass('selected');

			if($tab.children('a').length == $tab.parent().children('.tab-content').length){
				$tab.parent().children('.tab-content').hide().eq(objIndex).show();
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
	});

	$('.tab-type01 li, .tab-type02 a').on('click', function(){
		$(this).addClass('selected').siblings().removeClass('selected');
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

// layer open
function fnOpenLayer(layer){
	var layerName = layer;
	var layerClass = $('.' + layerName);
	console.log(layerClass)
	if( layerClass.show().siblings().not('.dim-bg').length > 0 ){
		layerClass.show().siblings().not('.dim-bg').hide();
	}

	layerClass.parents('.dim-layer').show().parents('body').css({'position':'fixed', 'width':'100%', 'height':'100%', 'left':'0'});

	$('.pop-close, .btn-confirm').on('click', function(){
		layerClass.hide().parents('.dim-layer').hide().parents('body').css({'position':'relative', 'width':'100%', 'height':'auto', 'left':'0'});
	});

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
