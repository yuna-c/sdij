$(document).ready(function(){

	//설명회 팝업
	$('.show-btn').on('click',function(){
		$(this).parents('tr').toggleClass('active');
		$(this).parents('tr').siblings('').removeClass('active')
	})

	// top button
	//  2019.04.12 푸터가 없는 경우가 있기 때문에 class 확인 후 실행 하도록 수정
	if( $('#footer_top_btn').hasClass('btn-top') == true )
	{
		$('.btn-top').scrollToFixed({
			bottom : 40,
			limit : function(){
				var limit = $('#footer').offset().top - $(this).outerHeight(true) - 20;
				return limit;
			},
			zIndex : 10
		});
	}

	// gnb button
	$('.btn-gnb').on('click', function(){
		$(this).parents('#header').toggleClass('nav-on');
	});

	$('.nav-bg').on('click', function(){
		if( $('.nav').is(':visible') ){
			$(this).parents('#header').removeClass('nav-on');
		}
	});

	// board pager
	$('.board-pager .pager-num a, .board-date .btn').on('click', function(){
		$(this).addClass('on').siblings().removeClass('on');
	});

	// tab click
	$('.tab-list a').on('click', function(){
		var $tab = $(this).parents('.tab-list');
		var objIndex = $tab.children('a').index(this);

		$tab.children('a').removeClass('selected').eq(objIndex).addClass('selected');

		if( $tab.children('a').length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(objIndex).show();
		}
	});

	// dep-tab click
	$('.dep1-tab > li, .dep2-tab > li, .dep3-tab > a').on('click', function(){
		var $tab = $(this).parent();
		var objIndex = $tab.children().index(this);

		$tab.children().removeClass('selected').eq(objIndex).addClass('selected');

		if( $tab.children().length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(objIndex).show();
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
	// FAQ 테이블 열고 닫기
	$('.board-list tr.title').on('click', function(){
		var $tab = $(this);

		if( $tab.hasClass('selected') === true ){
			$tab.parent().children('tr.content').hide();
			$tab.removeClass('selected');
		}else if ( $tab.hasClass('selected') === false ) {
			$tab.siblings('tr.title').removeClass('selected');
			$tab.siblings('tr.content').hide();
			$tab.next().show();
			$tab.next().find('div').slideDown(500);

			$tab.addClass('selected');
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

	//placeholder
	// 이 부분에서 자꾸 오류남 이건 주석처리 해야지 됨
	$('input, textarea').placeholder();

	//slide-tab
	$('.slide-tab .slide').on('click', function(e){
		$(this).addClass('selected').siblings().removeClass('selected');
	});

	// datepicker
	var toDay = new Date();
	var dates = $(".datepicker").each(function(){
		$(this).datepicker({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
			monthNamesShort : ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
			dayNames : ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
			showMonthAfterYear : true,
			// yearSuffix : ' / ',
			showButtonPanel : true,
			currentText : '오늘 날짜',
			closeText : '닫기',
			showOtherMonths : true,
			changeMonth : true,
			changeYear : true,
			maxDate : toDay,
			showAnim : "slideDown",
		});
	});

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

	// btn-tootip
	$('.btn-tootip').on('click', function(){
		var $tootipLayer = $(this).next('.tootip-layer');

		if( $tootipLayer.length > 0 ){
			var posTop = $(this).height() + 5;

			$(this).parent().addClass('relative');
			$tootipLayer.css('top', posTop).show();

			$tootipLayer.find('.btn-close').on('click', function(){
				$tootipLayer.hide();
			});

			$(document).mouseup(function(e){
				if ( !$tootipLayer.is(e.target) && $tootipLayer.has(e.target).length === 0 ){
					$tootipLayer.hide();
				}
			});
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

	$('.btn-close, .btn-confirm, .pop-close').on('click', function(){
		$('.btn-close').remove();
		layerClass.hide().parents('.dim-layer').fadeOut(100);
	});

	return false;
}
