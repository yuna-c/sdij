jQuery(document).ready(function(){


	//설명회 팝업
	$('.show-btn').on('click',function(){
		$(this).parents('li').toggleClass('active');
		$(this).parents('li').siblings('').removeClass('active')
	})

	// top button
	$('.btn-top').scrollToFixed({
		bottom : 40
	});

	// gnb button
	$('.btn-gnb').on('click', function(){
		$(this).parents().next().toggleClass('nav-on');
	});

	// board pager
	$('.board-pager .pager-num a').on('click', function(){
		$(this).addClass('on').siblings().removeClass('on');
	});


	// tab click
	$('.tab-list a').on('click', function(e){
		var $tab = jQuery(this).parents('.tab-list');
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

	$('.grade-tab > .fr li a').on('click', function(e){
		$(this).parent().addClass('selected').siblings().removeClass('selected');
	});

	// toggle list
	$('.list-toggle dt a').on('click', function(){
		var $tab = $(this).parent();

		if( $tab.hasClass('selected') === true ){
			$tab.removeClass('selected');
			$tab.next().slideUp(500);
		}else{
			$tab.siblings('dt').removeClass('selected')
			$tab.addClass('selected');
			$tab.parent().children('dd').slideUp(500);
			$tab.next().slideDown(500);
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


});

// scroll animation
function fnScrollObj(obj) {
	$('html,body').animate({ scrollTop: $(obj).offset().top }, 500);
}