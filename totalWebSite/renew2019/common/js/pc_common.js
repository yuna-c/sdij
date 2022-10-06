jQuery(document).ready(function(){

	//설명회 팝업
	$('.show-btn').on('click',function(){
		$(this).parents('tr').toggleClass('active');
		$(this).parents('tr').siblings('').removeClass('active')
	})
	// top button
	/*
	$('.btn-top').scrollToFixed({
		bottom : 40,
		limit : $('#footer').offset().top,
		zIndex : 10
	});
	*/
	// gnb button
	$('.btn-gnb').on('click', function(){
		$(this).parents('#header').toggleClass('nav-on');
	});

	$('.nav-bg').on('click', function(){
		$(this).parents('#header').removeClass('nav-on');
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

	$('.grade-tab > .fr li a').on('click', function(){
		$(this).parent().addClass('selected').siblings().removeClass('selected');
	});

	$('.tab-type01 li, .tab-type02 .tab-area a').on('click', function(){
		$(this).addClass('selected').siblings().removeClass('selected');
	});

	// toggle list
	$('.list-toggle dt a').on('click', function(){
		var $tab = $(this).parent();

		if( $tab.hasClass('selected') === true ){
			$tab.next().slideUp(500);
			$tab.removeClass('selected');
		}else{
			$tab.siblings('dt').removeClass('selected');
			$tab.parent().children('dd').slideUp(500);
			$tab.next().slideDown(500);
			$tab.addClass('selected');
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

	//placeholder
	// 이 부분에서 자꾸 오류남 이건 주석처리 해야지 됨
	//$('input, textarea').placeholder();

	//slide-tab
	$('.slide-tab .slide').on('click', function(e){
		$(this).addClass('selected').siblings().removeClass('selected');
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
	
	layerClass.css({'marginTop':'-' + layerSize + 'px', 'visibility':'visible'}).show().parents('.dim-layer').fadeIn(300);
	//layerClass.css('marginTop','-'+layerSize+'px').show().parents('.dim-layer').fadeIn(300);
	//{'marginTop':'-' + layerSize + 'px', 'visibility':'visible'}

	$('.btn-close, .btn-confirm').on('click', function(){
		$('.btn-close').remove();
		layerClass.hide().parents('.dim-layer').fadeOut(100);
	});

	return false;
}


