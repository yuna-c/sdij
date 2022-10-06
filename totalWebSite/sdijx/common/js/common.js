$(function(){
	$('#wrap').on('scroll touchmove mousewheel');
	
	// swiper slide
	// type1 Pagination, btn
    if( $('.swiper-slide-type1').length > 0 ){
        var swiper = new Swiper('.swiper-slide-type1', {
			observer: true, //탭 안에서 새로고침
			observeParents: true,
			autoplay: {
				delay: 3000,
			},
			navigation: {
				prevEl: '.swiper-btn .btn-prev',
				nextEl: '.swiper-btn .btn-next',
			},
			pagination: {
				el: '.swiper-pager',
			},
			loop: true,
		});
	}

	/* tab click
	$('.tab-type1 > ul > li, .tab-type2 > ul > li, .tab-type3 > ul > li').on('click', function(){
		var $this = $(this),
			$tab = $this.parents('.tab-type1'),
			thisIndex = $tab.children().children().index($this);

		$this.addClass('selected').siblings().removeClass('selected');

		if( $tab.find('li').length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(thisIndex).show();
		}
	});
	*/
	// tab click
	$('.tab-type > ul > li, .tab-type1 > ul > li, .tab-type2 > ul > li, .tab-type3 > ul > li').on('click', function(){
		var $this = $(this),
			$tab = $this.parent().parent(),
			thisIndex = $tab.children().children().index($this);

		$this.addClass('selected').siblings().removeClass('selected');

		if( $tab.find('li').length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(thisIndex).show();
		}
	});


	// list toggle
	$('.toggle-type1 dt a, .toggle-type2 dt .tit-area').on('click', function(){
		var $tab = $(this).parent();

		if( $tab.hasClass('selected') === true ){
			$tab.removeClass('selected');
			$tab.next().slideUp(500);
		}else{
			$tab.siblings('dt').removeClass('selected');
			$tab.addClass('selected');
			$tab.parent().children('dd').slideUp(500);
			$tab.next().slideDown(500);
		}
	});
	
	// datepicker
	if( $('.input-date').length > 0 ){
		$('.input-date input').each(function(){
			$(this).datepicker();
		});
	}


	//IE 11,10 readonly
	if( $('.input-text > input[type="text"][readonly]').length > 0 ){
		$('.input-text > input[type="text"][readonly]').on('mousedown focus', function(e){
			e.preventDefault();
			$(this).blur();
			return false;
	   });
	}
});

function fnOpenGnb(obj){
    var $this = $(obj);

    if( $('#header').hasClass('gnb-on') === true ){
        $('#header').removeClass('gnb-on');
        $('.gnb-menu > li').removeClass('selected');
        
    }else{
		$('#header').addClass('gnb-on');
		
		$('.gnb .gnb-1depth').off().on('click', function(){		
			if( $(this).parent().hasClass('selected') === true ){
				$(this).parent().removeClass('selected');
			}else{
				$(this).parent().addClass('selected').siblings().removeClass('selected');
			}
		});
		
		$('.header-bg').on('click', function(){
	
			$('#header').removeClass('gnb-on');
			$('.gnb-menu > li').removeClass('selected');
		});
	}
}

// scroll animation
function fnAniScroll(obj, time){
	var aniTime = 500;
	if( typeof time !== 'undefined' ) aniTime = time;
	$('#wrap').animate({ scrollTop: $(obj).offset().top + $('#wrap').scrollTop() }, aniTime);
}

function fnOpenWrap(){
	$('#wrap').off('scroll touchmove mousewheel', function(e){
		e.preventDefault();
		e.stopPropagation();
		return false;
	});
}

function fnCloseWrap(){
	$('#wrap').on('scroll touchmove mousewheel');
}

// modal open
function fnOpenModal(obj){ // fnOpenModal(오픈하고 싶은 class or id)
	var $modal = $(obj);

	if( $modal.siblings().not('.modal-bg').length > 0 ) $modal.siblings().not('.modal-bg').hide();

	fnOpenWrap();

	$modal.show();

	if( !$modal.parents('.modal-wrap').is(':visible') ){
		$modal.parents('.modal-wrap').fadeIn(500);
	}	

	$('.btn-close').on('click', function(){
		$modal.hide().parents('.modal-wrap').fadeOut(500);
	});

	return false;
}

// modal close
function fnCloseModal(obj){ // fnCloseModal(닫고 싶은 class or id)
	var $modal = $(obj);

	$modal.hide().parents('.modal-wrap').fadeOut(500);
	fnCloseWrap();

	return false;
}

// popover open
function fnOpenPopover(obj, pos){ // fnOpenPopover(오픈하고 싶은 class or id)
	var $popover = $(obj),
		$posObj = $(pos),

		$posTop = $posObj.offset().top + $('#wrap').scrollTop() + $posObj.height() + 10,
		$posLeft = $posObj.offset().left;

	if( $popover.siblings().length < 0 ) $popover.siblings().hide();

	$posObj.addClass('on');

	if( isMobile() ){ // mobile popover open
		$popover.show().parents('.popover-wrap').addClass('popover-m').show();
	}else{ // pc popover open
		$popover.show().parents('.popover-wrap').css({'top' : $posTop + 'px', 'left' : $posLeft + 'px'}).show();

		$(document).mouseup(function(e){
			if ( !$popover.parents('.popover-wrap').is(e.target) && $popover.parents('.popover-wrap').has(e.target).length === 0 ){
				$posObj.removeClass('on');
				$popover.hide().parents('.popover-wrap').hide();
			}
		});
	}

	$popover.on('click', '.btn-close, .btn-submit', function(){
		$posObj.removeClass('on');
		$popover.hide().parents('.popover-wrap').hide();
	});
}

// window open
function fnOpenWindow(url, title, w, h){
	var winWidth = (window.screen.width/2)-(w/2),
		winHeight = (window.screen.height/2)-(h/2),

		winX = window.screenX || window.screenLeft || 0,
		winY = window.screenY || window.screenTop || 0,

		top = winY + winHeight,
		left = winX + winWidth;

	window.open(url, title, 'width='+ w +', height='+ h +', top='+ top +', left='+ left +', menubar=no, status=no, toolbar=no');
}

function fnTimeNow(){
	var date = new Date(),

		day = date.getDate(),
		month = date.getMonth() + 1,
		year = date.getFullYear(),
		hours = date.getHours(),
		minutes = date.getMinutes();

	if (month < 10) month = '0' + month;
	if (day < 10) day = '0' + day;
	if (hours < 10) hours = '0' + hours;
	if (minutes < 10) minutes = '0' + minutes;

	var today = year + '/' + month + '/' + day,
		time = hours + ':' + minutes;

	if( $('.input-date').length > 0 ) $('.input-date').find('input[type="text"]').attr('value', today);

	if( $('.input-time').length > 0 ) $('.input-time').find('input[type="time"]').attr('value', time);
}

function isMobile(){
	var UserAgent = navigator.userAgent,
		UserPlatform = window.navigator.platform,
		macPlatforms = ['Macintosh', 'MacIntel', 'MacPPC', 'Mac68K'],
		touchPoints = navigator.maxTouchPoints;

	if( UserAgent.match(/iPhone|iPod|iPad|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) !== null || UserAgent.match(/LG|SAMSUNG|Samsung/) !== null ){ // mobile
		return true;
		
	}else{ // pc
		if( macPlatforms.indexOf(UserPlatform) !== -1 ){ // mac os
			if( touchPoints > 0 ){ // ipad safari
				return true;
			}else{
				return false;
			}
		}else{ 
			return false;
		}
	}
}


/************************************************************************
	Description		:	null 체크
	Parameter		:	str(null체크할 값)
	Return			:	false(null일 경우)
						true(null이 아닐경우)
	Use				:	isNull(input1)

*************************************************************************/
function isNull(str){
	if (str == null) return true;
	if (str == "null") return true;
	if (str == "NaN") return true;
	if (new String(str).valueOf() == "undefined") return true;
	var chkStr = new String(str);
	if (chkStr.valueOf() == "undefined") return true;
	if (chkStr == null) return true;
	if (chkStr.toString().trim().length == 0 ) return true;
	return false;
}