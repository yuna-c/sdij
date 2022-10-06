jQuery(document).ready(function(){
	// top button
	$('.btn-top').scrollToFixed({
		bottom : 40,
		limit : $('#footer').offset().top
	});

	// gnb button
	$('.btn-gnb').on('click', function(){
		$(this).parents('.gnb-area').next('.nav-area').toggleClass('nav-on');
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

	// all checkbox
	$('.all-check').on('click', function(){
		if( $(this).prop('checked') ){
			$(this).parents('.agree-all').next('.agree-list').find('input[type=checkbox]').prop('checked', true);
		}else{
			$(this).parents('.agree-all').next('.agree-list').find('input[type=checkbox]').prop('checked', false);
		}
	});
});

// scroll animation
function fnScrollObj(obj) {
	$('html,body').animate({ scrollTop: $(obj).offset().top }, 500);
}

// Alert massege
function fnAlertMsg(msg){
	var innerHtml = '<div class="dim-content dim-alert">';
		innerHtml += '<div class="dim-txt">'+msg+'</div>';
		innerHtml += '<div class="dim-btn"><button onclick="fnCloseAlert();return false;" class="btn btn-black btn-confirm">확인</button></div>';
		innerHtml += '</div>';
		
	$('.dim-layer').append(innerHtml);

	fnOpenLayer('dim-alert');

	return false;
}

// Alert title massege
function fnAlertMsgTit(tit, msg){
	var innerHtml = '<div class="dim-content dim-alert dim-tit-alert">';
		innerHtml += '<a href="javascript:void(0);" onclick="fnCloseAlert();return false;" class="btn-close"><span class="ico ico-close">팝업창 닫기</span></a>';
		innerHtml += '<h4 class="dim-tit">'+tit+'</h4>';
		innerHtml += '<div class="dim-txt">'+msg+'</div>';
		innerHtml += '<div class="dim-btn"><button onclick="fnCloseAlert();return false;" class="btn btn-black btn-confirm">확인</button></div>';
		innerHtml += '</div>';
		
	$('.dim-layer').append(innerHtml);

	fnOpenLayer('dim-alert');

	return false;
}

// layer close
function fnCloseAlert(){
	$('.dim-alert').parent('.dim-layer').fadeOut(100);
	$('.dim-alert').remove();	
}

// layer open
function fnOpenLayer(layer){
	var layerName = layer;
	var layerClass = $('.' + layerName);
	var layerSize = (layerClass.outerHeight()/2);

	var innerHtml = '<a href="javascript:void(0);" class="btn-close"><span class="ico ico-close">팝업창 닫기</span></a>';

	layerClass.append(innerHtml);
	layerClass.css('marginTop','-'+layerSize+'px').show().parents('.dim-layer').fadeIn(300);
	
	$('.btn-close, .btn-confirm').on('click', function(){
		$('.btn-close').remove();
		layerClass.hide().parents('.dim-layer').fadeOut(100);
	}); 

	return false;
}